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
        public override float CalculateUtilityFor(MapUnit unit)
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

            return wImpact * skillImpact
                 + wAoE    * aoeUtility
                 + wDist   * distanceUtility
                 + wType   * typeUtility;
        }

        // ──────────────────────────────────────
        // GeneratePlan
        // ──────────────────────────────────────
        public override AIPlan GeneratePlan(MapUnit unit)
        {
            AIPlan plan = new AIPlan();

            if (Skill == null || TargetUnit == null)
            {
                plan.AddStep(AIPlanStep.Wait(0.5f));
                return plan;
            }

            // 1. 检查是否在施法范围内
            List<Vector3Int> castRange = AttackRangeSystem.GetCastRange3D(unit.gridPosition, Skill);
            bool alreadyInRange = castRange.Contains(TargetUnit.gridPosition);

            // 2. 不在范围内则找最佳施法位置
            if (!alreadyInRange && unit.CanMove)
            {
                int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
                HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                    unit.gridPosition, moveRange,
                    MapManager.Instance.logicalGrid, unit.moveStats);
                Vector3Int? bestPos = FindBestCastPosition(unit, reachableTiles, Skill, TargetUnit);

                if (bestPos.HasValue && bestPos.Value != unit.gridPosition)
                {
                    plan.AddStep(AIPlanStep.Move(bestPos.Value));
                }
            }

            // 3. 使用技能
            if (unit.CanAction)
            {
                plan.AddStep(AIPlanStep.UseSkill(Skill, TargetUnit));
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

                List<Vector3Int> castRange = AttackRangeSystem.GetCastRange3D(tile, skill);
                if (!castRange.Contains(target.gridPosition))
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
        /// 判断技能是否为进攻型技能
        /// </summary>
        private bool IsOffensiveSkill(SkillDataSO skill)
        {
            if (skill.TargetType == TargetType.Enemy ||
                skill.TargetType == TargetType.Player ||
                skill.TargetType == TargetType.ExceptTeammates)
            {
                return true;
            }

            if (skill.Phases != null)
            {
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
                            return true;
                        }
                    }
                }
            }

            return false;
        }

        /// <summary>
        /// 判断技能是否为防御/支援型技能
        /// </summary>
        private bool IsDefensiveSkill(SkillDataSO skill)
        {
            if (skill.TargetType == TargetType.Self ||
                skill.TargetType == TargetType.Ally ||
                skill.TargetType == TargetType.Teammates)
            {
                return true;
            }

            if (skill.Phases != null)
            {
                foreach (SkillPhase phase in skill.Phases)
                {
                    if (phase.TargetType == TargetType.Self ||
                        phase.TargetType == TargetType.Ally ||
                        phase.TargetType == TargetType.Teammates)
                    {
                        return true;
                    }

                    if (phase.Effects == null)
                    {
                        continue;
                    }

                    foreach (SkillEffect effect in phase.Effects)
                    {
                        if (effect.EffectType == EffectType.Heal ||
                            effect.EffectType == EffectType.AddBuff)
                        {
                            return true;
                        }
                    }
                }
            }

            return false;
        }

        /// <summary>
        /// 统计 AoE 范围内受技能影响的单位数
        /// 进攻型技能统计敌方，防御/支援型技能统计友方
        /// </summary>
        private int CountAffectedUnits(MapUnit caster, List<Vector3Int> aoeRange, SkillDataSO skill)
        {
            int count = 0;
            bool isOffensive = IsOffensiveSkill(skill);

            foreach (Vector3Int pos in aoeRange)
            {
                MapUnit unit = UnitManager.Instance.GetUnitAt(pos);
                if (unit == null || unit.Character.statSystem.currentHP <= 0)
                {
                    continue;
                }

                if (isOffensive)
                {
                    if (unit.Faction != caster.Faction)
                    {
                        count++;
                    }
                }
                else
                {
                    if (unit.Faction == caster.Faction)
                    {
                        count++;
                    }
                }
            }

            return count;
        }
    }
}
