using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Global;
using Grid;
using Core.Data;

namespace GamePlay.AI.Tasks
{
    public class AttackTask : AITask
    {
        public override MapUnit TargetUnit { get; protected set; }

        public AttackTask(MapUnit target, float basePriority)
            : base(AITaskType.Attack, basePriority)
        {
            TargetUnit = target;
        }

        // ──────────────────────────────────────
        // CalculateUtilityFor
        // ──────────────────────────────────────
        public override float CalculateUtilityFor(MapUnit unit, AITaskContext ctx)
        {
            // 0. 前置检查
            if (TargetUnit == null)
            {
                return 0f;
            }

            if (TargetUnit.Character == null || TargetUnit.Character.statSystem.currentHP <= 0)
            {
                return 0f;
            }

            // 同阵营不打自己人
            if (TargetUnit.Faction == unit.Faction)
            {
                return 0f;
            }

            // 1. 获取可达位置（复用预计算上下文）
            HashSet<Vector3Int> reachableTiles = ctx.ReachableTiles;
            int moveRange = ctx.MoveRange;

            // 2. 选择最佳攻击技能并找到最佳攻击位置
            SkillDataSO bestSkill = SelectBestAttackSkill(unit, TargetUnit);
            if (bestSkill == null)
            {
                return 0f; // 没有可用的攻击手段
            }

            Vector3Int? bestPos = FindBestAttackPosition(unit, reachableTiles, bestSkill, TargetUnit);
            if (!bestPos.HasValue)
            {
                return 0f; // 走不到能攻击目标的位置
            }

            // 3. 距离效用：越近越好
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - bestPos.Value.x)
                              + Mathf.Abs(unit.gridPosition.z - bestPos.Value.z);
            float distanceUtility = 1.0f - Mathf.Clamp01((float)manhattanDist / (moveRange + 1));

            // 4. 处决效用：目标血量越低越值得打
            float hpPercent = (float)TargetUnit.Character.statSystem.currentHP
                            / TargetUnit.Character.statSystem.maxHP.getValue();
            float executeUtility = 1.0f - hpPercent;

            // 5. 威胁匹配效用：打高威胁目标更有价值
            InfluenceMapLayer threatMap = ctx.ThreatMap;
            float targetThreat = threatMap.GetScore(TargetUnit.gridPosition);
            float threatUtility = Mathf.Clamp01(targetThreat / Data.Config.AIConfig.threatNormalizeBase);

            // 6. 伤害预估效用：能打多少伤害
            float damageUtility = EstimateDamageUtility(unit, bestSkill, TargetUnit);

            // 7. 综合效用
            float wDist  = Data.Config.AIConfig.attackWeight_Distance;
            float wExec  = Data.Config.AIConfig.attackWeight_Execute;
            float wThreat = Data.Config.AIConfig.attackWeight_Threat;
            float wDamage = Data.Config.AIConfig.attackWeight_Damage;

            return (wDist  * distanceUtility
                  + wExec  * executeUtility
                  + wThreat * threatUtility
                  + wDamage * damageUtility) * bestSkill.AIPriority;
        }

        // ──────────────────────────────────────
        // GeneratePlan
        // ──────────────────────────────────────
        public override AIPlan GeneratePlan(MapUnit unit, AITaskContext ctx)
        {
            AIPlan plan = new AIPlan();

            // 1. 选技能
            SkillDataSO attackSkill = SelectBestAttackSkill(unit, TargetUnit)
                                     ?? unit.NormalAttackSkill;

            if (attackSkill == null)
            {
                plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
                return plan;
            }

            // 2. 找位置（复用预计算上下文）
            Vector3Int? attackPos = null;
            bool alreadyInRange = AttackRangeSystem.CanCastTo(unit.gridPosition, TargetUnit.gridPosition, attackSkill);

            if (!alreadyInRange && unit.CanMove)
            {
                HashSet<Vector3Int> reachableTiles = ctx.ReachableTiles;
                attackPos = FindBestAttackPosition(unit, reachableTiles, attackSkill, TargetUnit);
            }

            // 3. 生成步骤
            if (!alreadyInRange && attackPos.HasValue && attackPos.Value != unit.gridPosition)
                {
                    plan.AddStep(AIPlanStep.Move(attackPos.Value));
                }

            if (unit.CanAction)
            {
                plan.AddStep(AIPlanStep.UseSkill(attackSkill, TargetUnit));
            }

            return plan;
        }

        // ──────────────────────────────────────
        // EstimatedDistanceTo
        // ──────────────────────────────────────
        public override float EstimatedDistanceTo(MapUnit unit)
        {
            if (TargetUnit == null)
            {
                return float.MaxValue;
            }

            int manhattanDist = Mathf.Abs(unit.gridPosition.x - TargetUnit.gridPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - TargetUnit.gridPosition.z);
            return manhattanDist;
        }

        // ──────────────────────────────────────
        // IsCompleted / IsFailed
        // ──────────────────────────────────────
        public override bool IsCompleted()
        {
            return TargetUnit == null || TargetUnit.Character.statSystem.currentHP <= 0;
        }

        public override bool IsFailed()
        {
            return TargetUnit == null;
        }

        // ==============================================================
        // 私有辅助方法
        // ==============================================================

        /// <summary>
        /// 选择最适合攻击 TargetUnit 的技能
        /// 优先选择主动进攻技能，普攻兜底
        /// </summary>
        private SkillDataSO SelectBestAttackSkill(MapUnit unit, MapUnit target)
        {
            SkillDataSO bestSkill = null;
            float bestScore = -1f;

            // 候选技能：普攻 + 所有主动技能
            List<SkillDataSO> candidates = unit.GetActiveSkills();
            if (candidates == null || candidates.Count == 0)
            {
                return unit.NormalAttackSkill;
            }

            foreach (SkillDataSO skill in candidates)
            {
                if (skill == null)
                {
                    continue;
                }

                // 过滤：只选对敌人使用的进攻技能
                if (!IsOffensiveSkill(skill))
                {
                    continue;
                }

                // 过滤：MP不足的技能不考虑
                if (skill.Cost > 0 && !unit.Character.HasEnoughMP(skill.Cost))
                {
                    continue;
                }

                // 评分：预估伤害
                float score = EstimateDamageValue(unit, skill, target);

                // AoE 加成：如果有多个目标在 AoE 范围内，技能更有价值
                if (skill.Phases != null && skill.Phases.Count > 0)
                {
                    SkillPhase firstPhase = skill.Phases[0];
                    List<Vector3Int> aoeRange = AttackRangeSystem.GetAoERange3D(
                        unit.gridPosition, target.gridPosition, firstPhase);
                    int aoeHits = CountEnemiesInAoE(unit, aoeRange);
                    score *= (1.0f + (aoeHits - 1) * Data.Config.AIConfig.aoeExtraHitBonus);
                }

                if (score > bestScore)
                {
                    bestScore = score;
                    bestSkill = skill;
                }
            }

            return bestSkill ?? unit.NormalAttackSkill;
        }

        /// <summary>
        /// 基于 AIBehavior 判断技能是否为进攻型技能
        /// </summary>
        private bool IsOffensiveSkill(SkillDataSO skill)
        {
            return skill.IsOffensiveSkill();
        }

        /// <summary>
        /// 找到最佳攻击位置：在可达位置中选威胁度最低且能攻击到目标的格子
        /// 先用 IsWithinCastDistance 做快速距离预滤，再通过 CanCastTo 精确判定
        /// </summary>
        private Vector3Int? FindBestAttackPosition(
            MapUnit unit,
            HashSet<Vector3Int> reachableTiles,
            SkillDataSO skill,
            MapUnit target)
        {
            Vector3Int? bestPos = null;
            float bestThreat = float.MaxValue;
            InfluenceMapLayer threatMap = TacticalMapManager.Instance.ThreatMap;

            foreach (Vector3Int tile in reachableTiles)
            {
                if (tile != unit.gridPosition)
                {
                    MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                    if (occupying != null)
                    {
                        continue;
                    }
                }

                if (!AttackRangeSystem.IsWithinCastDistance(tile, target.gridPosition, skill))
                {
                    continue;
                }

                if (!AttackRangeSystem.CanCastTo(tile, target.gridPosition, skill))
                {
                    continue;
                }

                float threat = threatMap.GetScore(tile);
                if (threat < bestThreat)
                {
                    bestThreat = threat;
                    bestPos = tile;
                }
            }

            return bestPos;
        }

        /// <summary>
        /// 估算技能对目标造成的伤害值（简化版，不经过完整 modifier pipeline）
        /// </summary>
        private float EstimateDamageValue(MapUnit caster, SkillDataSO skill, MapUnit target)
        {
            if (skill.Phases == null || skill.Phases.Count == 0)
            {
                return 0f;
            }

            int casterATK = (int)caster.Character.statSystem.ATK.getValue();
            float totalDamage = 0f;

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null)
                {
                    continue;
                }

                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.Damage)
                    {
                        float raw = effect.CalculateValue(casterATK);
                        float mitigated = MitigateDamage(raw, effect.DamageType, target);
                        totalDamage += mitigated;
                    }
                }
            }

            return totalDamage;
        }

        /// <summary>
        /// 简化伤害减免计算
        /// Physical: damage = max(0, raw - DEF)
        /// Magic:    damage = raw * (1 - RES)
        /// True/其他: 无减免
        /// </summary>
        private float MitigateDamage(float raw, DamageType dtype, MapUnit target)
        {
            switch (dtype)
            {
                case DamageType.Physical:
                    int def = (int)target.Character.statSystem.DEF.getValue();
                    return Mathf.Max(0f, raw - def);

                case DamageType.Magic:
                    float res = target.Character.statSystem.RES.getValue();
                    return raw * (1f - Mathf.Clamp01(res));

                case DamageType.True:
                default:
                    return raw;
            }
        }

        /// <summary>
        /// 伤害预估的效用值（对目标的伤害占目标最大HP的比例）
        /// </summary>
        private float EstimateDamageUtility(MapUnit caster, SkillDataSO skill, MapUnit target)
        {
            float estimatedDamage = EstimateDamageValue(caster, skill, target);
            float targetMaxHP = target.Character.statSystem.maxHP.getValue();
            if (targetMaxHP <= 0f)
            {
                return 0f;
            }

            return Mathf.Clamp01(estimatedDamage / targetMaxHP);
        }

        /// <summary>
        /// 计算 AoE 范围内有多少敌方单位
        /// </summary>
        private int CountEnemiesInAoE(MapUnit caster, List<Vector3Int> aoeRange)
        {
            int count = 0;

            foreach (Vector3Int pos in aoeRange)
            {
                MapUnit unit = UnitManager.Instance.GetUnitAt(pos);
                if (unit != null && unit.Faction != caster.Faction)
                {
                    count++;
                }
            }

            return count;
        }
    }
}
