using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Grid;
using Global;
using Core.Data;

namespace GamePlay.AI.Tasks
{
    public class SkillTask : AITask
    {
        public SkillDataSO Skill { get; private set; }
        public MapUnit TargetUnit { get; private set; }

        public SkillTask(SkillDataSO skill, MapUnit target, float basePriority) : base(AITaskType.Skill, basePriority)
        {
            Skill = skill;
            TargetUnit = target;
        }

        // ──────────────────────────────────────
        // CalculateUtilityFor
        // ──────────────────────────────────────
        public override float CalculateUtilityFor(MapUnit unit, AITaskContext ctx)
        {
            // 0. 前置检查
            if (Skill == null)
            {
                return 0f;
            }

            if (TargetUnit == null)
            {
                return 0f;
            }

            if (TargetUnit.Character == null || TargetUnit.Character.statSystem.currentHP <= 0)
            {
                return 0f;
            }

            if (Skill.Cost > 0 && !unit.Character.HasEnoughMP(Skill.Cost))
            {
                return 0f;
            }

            // 1. 技能影响评估 (0~1)
            float skillImpact = EvaluateSkillImpact(Skill, unit, TargetUnit);
            if (skillImpact <= 0f)
            {
                return 0f;
            }

            // 2. AoE 效用 (0~1)：AoE技能在多个目标时价值更高，归一化到 0~1
            float aoeUtility = 0f;
            if (Skill.Phases != null)
            {
                foreach (SkillPhase phase in Skill.Phases)
                {
                    if (phase.AoEPattern != AoEPatternType.SingleTarget && phase.AoERadius > 0)
                    {
                        List<Vector3Int> aoeRange = AttackRangeSystem.GetAoERange3D(
                            unit.gridPosition, TargetUnit.gridPosition, phase);
                        int affectedCount = CountAffectedUnits(unit, aoeRange, Skill);
                        if (affectedCount > 1)
                        {
                            aoeUtility = Mathf.Clamp01(
                                (affectedCount - 1) * Data.Config.AIConfig.aoeExtraHitBonus);
                        }
                        break;
                    }
                }
            }

            // 3. 距离效用 (0~1)：越近越好
            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - TargetUnit.gridPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - TargetUnit.gridPosition.z);
            float distanceUtility = 1.0f - Mathf.Clamp01((float)manhattanDist / (moveRange + Skill.CastMaxRange + 1));

            // 4. 类型效用 (0~1)：进攻型技能看威胁匹配，防御型技能看需求紧迫度
            float typeUtility = 0f;
            if (IsOffensiveSkill(Skill))
            {
                InfluenceMapLayer threatMap = TacticalMapManager.Instance.ThreatMap;
                float targetThreat = threatMap.GetScore(TargetUnit.gridPosition);
                typeUtility = Mathf.Clamp01(targetThreat / Data.Config.AIConfig.threatNormalizeBase);
            }
            else if (IsDefensiveSkill(Skill))
            {
                float hpPercent = (float)TargetUnit.Character.statSystem.currentHP
                                / TargetUnit.Character.statSystem.maxHP.getValue();
                typeUtility = 1.0f - hpPercent;
            }

            // 5. 加权求和 (权重和为 1.0，保持与 AttackTask/DefendTask 同一量纲)
            float wImpact  = Data.Config.AIConfig.skillWeight_Impact;
            float wAoE     = Data.Config.AIConfig.skillWeight_AoE;
            float wDist    = Data.Config.AIConfig.skillWeight_Distance;
            float wType    = Data.Config.AIConfig.skillWeight_Type;

            return (wImpact * skillImpact
                 + wAoE    * aoeUtility
                 + wDist   * distanceUtility
                 + wType   * typeUtility) * Skill.AIPriority;
        }

        // ──────────────────────────────────────
        // GeneratePlan
        // ──────────────────────────────────────
        public override AIPlan GeneratePlan(MapUnit unit, AITaskContext ctx)
        {
            AIPlan plan = new AIPlan();

            if (Skill == null || TargetUnit == null)
            {
                plan.AddStep(AIPlanStep.Wait(0.5f));
                return plan;
            }

            // 1. 检查是否在施法范围内
            bool alreadyInRange = AttackRangeSystem.CanCastTo(unit.gridPosition, TargetUnit.gridPosition, Skill);

            // 2. 不在范围内则找最佳施法位置
            if (!alreadyInRange && unit.CanMove)
            {
                Vector3Int? bestPos = FindBestCastPosition(unit, ctx.ReachableTiles, Skill, TargetUnit);

                if (bestPos.HasValue && bestPos.Value != unit.gridPosition)
                {
                    plan.AddStep(AIPlanStep.Move(bestPos.Value));
                }
            }

            // 3. 使用技能
            if (unit.CanAction)
            {
                if (Skill.Cost > 0 && !unit.Character.HasEnoughMP(Skill.Cost))
                {
                    plan.AddStep(AIPlanStep.Wait(0.5f));
                }
                else
                {
                    plan.AddStep(AIPlanStep.UseSkill(Skill, TargetUnit));
                }
            }
            else
            {
                plan.AddStep(AIPlanStep.Wait(0.5f));
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
            return TargetUnit == null || Skill == null;
        }

        // ==============================================================
        // 私有辅助方法
        // ==============================================================

        /// <summary>
        /// 评估技能对目标的影响值 (0~1)
        /// 根据技能效果类型计算：伤害、治疗、Buff、Debuff
        /// </summary>
        private float EvaluateSkillImpact(SkillDataSO skill, MapUnit caster, MapUnit target)
        {
            if (skill.Phases == null || skill.Phases.Count == 0)
            {
                return 0f;
            }

            float maxImpact = 0f;
            int casterATK = (int)caster.Character.statSystem.ATK.getValue();

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null)
                {
                    continue;
                }

                foreach (SkillEffect effect in phase.Effects)
                {
                    float impact = 0f;

                    switch (effect.EffectType)
                    {
                        case EffectType.Damage:
                        {
                            float raw = effect.CalculateValue(casterATK);
                            float mitigated = MitigateDamage(raw, effect.DamageType, target);
                            float targetMaxHP = target.Character.statSystem.maxHP.getValue();
                            if (targetMaxHP > 0f)
                            {
                                impact = Mathf.Clamp01(mitigated / targetMaxHP);
                            }
                            // 处决加成：目标血量越低伤害越有价值
                            float hpPercent = (float)target.Character.statSystem.currentHP / targetMaxHP;
                            if (mitigated >= target.Character.statSystem.currentHP)
                            {
                                impact *= (1.0f + (1.0f - hpPercent) * 0.5f);
                            }
                            break;
                        }

                        case EffectType.Heal:
                        {
                            float estimatedHeal = effect.CalculateValue(casterATK);
                            float maxHP = target.Character.statSystem.maxHP.getValue();
                            float missingHP = maxHP - target.Character.statSystem.currentHP;

                            if (maxHP > 0f && missingHP > 0f)
                            {
                                impact = Mathf.Clamp01(estimatedHeal / missingHP);
                                // 过量治疗惩罚
                                if (estimatedHeal > missingHP)
                                {
                                    impact *= missingHP / estimatedHeal;
                                }
                            }
                            break;
                        }

                        case EffectType.AddBuff:
                        {
                            impact = 0.3f;
                            break;
                        }

                        case EffectType.RemoveBuff:
                        {
                            impact = 0.2f;
                            break;
                        }

                        case EffectType.MoveCaster:
                        {
                            impact = 0.1f;
                            break;
                        }
                    }

                    if (impact > maxImpact)
                    {
                        maxImpact = impact;
                    }
                }
            }

            return maxImpact;
        }

        /// <summary>
        /// 简化伤害减免计算
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
        /// 寻找在可达格子中能施放技能打到目标的最佳位置（威胁最低优先）
        /// 先用 IsWithinCastDistance 快滤，再用 CanCastTo 精确判定
        /// </summary>
        private Vector3Int? FindBestCastPosition(
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
        /// 基于 AIBehavior 判断技能是否为进攻型技能
        /// Auto 模式下退化到旧版逻辑
        /// </summary>
        private bool IsOffensiveSkill(SkillDataSO skill)
        {
            return skill.IsOffensiveSkill();
        }

        /// <summary>
        /// 基于 AIBehavior 判断技能是否为防御/支援型技能
        /// Auto 模式下退化到旧版逻辑
        /// </summary>
        private bool IsDefensiveSkill(SkillDataSO skill)
        {
            return skill.IsSupportiveSkill();
        }

        /// <summary>
        /// 统计 AoE 范围内受技能影响的单位数
        /// 基于 AIBehavior 标志：Harm/Debuff/Control 统计敌方，Heal/Buff 统计友方
        /// 混合型技能（如撕咬回血）同时统计双方
        /// </summary>
        private int CountAffectedUnits(MapUnit caster, List<Vector3Int> aoeRange, SkillDataSO skill)
        {
            int count = 0;
            bool countEnemies = skill.IsOffensiveSkill();
            bool countAllies = skill.IsSupportiveSkill();

            foreach (Vector3Int pos in aoeRange)
            {
                MapUnit unit = UnitManager.Instance.GetUnitAt(pos);
                if (unit == null || unit.Character.statSystem.currentHP <= 0)
                {
                    continue;
                }

                if (countEnemies && unit.Faction != caster.Faction)
                {
                    count++;
                }
                else if (countAllies && unit.Faction == caster.Faction)
                {
                    count++;
                }
            }

            return count;
        }
    }
}
