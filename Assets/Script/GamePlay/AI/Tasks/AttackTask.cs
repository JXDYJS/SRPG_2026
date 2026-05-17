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
        public MapUnit TargetUnit { get; private set; }

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

            return wDist  * distanceUtility
                 + wExec  * executeUtility
                 + wThreat * threatUtility
                 + wDamage * damageUtility;
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
                plan.AddStep(AIPlanStep.Wait(0.5f));
                return plan;
            }

            // 2. 找位置（复用预计算上下文）
            Vector3Int? attackPos = null;
            List<Vector3Int> currentRange = AttackRangeSystem.GetCastRange3D(unit.gridPosition, attackSkill);
            bool alreadyInRange = currentRange.Contains(TargetUnit.gridPosition);

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
        /// 判断技能是否为进攻型技能
        /// 根据技能整体 TargetType 或第一阶段的 TargetType 判断
        /// </summary>
        private bool IsOffensiveSkill(SkillDataSO skill)
        {
            if (skill.TargetType == TargetType.Enemy ||
                skill.TargetType == TargetType.Player ||
                skill.TargetType == TargetType.ExceptTeammates)
            {
                return true;
            }

            // 如果技能有阶段，检查第一阶段的 TargetType
            if (skill.Phases != null && skill.Phases.Count > 0)
            {
                TargetType phaseTarget = skill.Phases[0].TargetType;
                if (phaseTarget == TargetType.Enemy ||
                    phaseTarget == TargetType.Player ||
                    phaseTarget == TargetType.ExceptTeammates)
                {
                    return true;
                }
            }

            return false;
        }

        /// <summary>
        /// 找到最佳攻击位置：在可达位置中选威胁度最低且能攻击到目标的格子
        /// 先按曼哈顿距离预筛选（技能 CastMaxRange 内才进入 GetCastRange3D 计算）
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
            int castMax = skill.CastMaxRange;

            foreach (Vector3Int tile in reachableTiles)
            {
                // 跳过被其他单位占据的格子
                if (tile != unit.gridPosition)
                {
                    MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                    if (occupying != null)
                    {
                        continue;
                    }
                }

                // 曼哈顿距离预筛选：目标必须在技能施法范围内才有可能命中
                int distToTarget = Mathf.Abs(tile.x - target.gridPosition.x)
                                 + Mathf.Abs(tile.z - target.gridPosition.z);
                if (distToTarget > castMax)
                {
                    continue;
                }

                List<Vector3Int> attackRange = AttackRangeSystem.GetCastRange3D(tile, skill);
                if (!attackRange.Contains(target.gridPosition))
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
