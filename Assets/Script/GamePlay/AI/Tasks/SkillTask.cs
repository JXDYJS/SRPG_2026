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
        public override MapUnit TargetUnit { get; protected set; }

        private Vector3Int? _bestCastPos;

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
            if (Skill == null || TargetUnit == null) return 0f;
            if (TargetUnit == null || !TargetUnit.IsAlive) return 0f;
            if (Skill.Cost > 0 && !unit.Character.HasEnoughMP(Skill.Cost)) return 0f;

            // 1. Phase 命中效用：每个 Phase 独立统计命中单位 × 单目标价值 × 战略分，跨 Phase 求和
            float phaseTotal = EvaluatePhaseUtility(unit, ctx);
            if (phaseTotal <= 0f) return 0f;

            // 2. 距离效用 (0~1)：越近越好
            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - TargetUnit.gridPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - TargetUnit.gridPosition.z);
            float distanceUtility = 1.0f - Mathf.Clamp01((float)manhattanDist / (moveRange + Skill.CastMaxRange + 1));

            // 3. 加权求和（Phase 效用合并了原 wImpact+wAoE+wType 三个维度）
            float phaseWeight = Data.Config.AIConfig.skillWeight_Impact
                              + Data.Config.AIConfig.skillWeight_AoE
                              + Data.Config.AIConfig.skillWeight_Type;
            float wDist = Data.Config.AIConfig.skillWeight_Distance;

            float baseScore = phaseWeight * phaseTotal + wDist * distanceUtility;

            // 4. 资源代价惩罚：高消耗技能适当压低
            float resourceFactor = 1f;
            if (Skill.Cost > 0)
                resourceFactor = 1f - Mathf.Clamp01(Skill.Cost / 20f) * Data.Config.AIConfig.resourcePenaltyFactor;

            return baseScore * Skill.AIPriority * resourceFactor;
        }

        // ──────────────────────────────────────
        // GeneratePlan
        // ──────────────────────────────────────
        public override AIPlan GeneratePlan(MapUnit unit, AITaskContext ctx)
        {
            AIPlan plan = new AIPlan();

            if (Skill == null || TargetUnit == null)
            {
                plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
                return plan;
            }

            // 1. 检查是否在施法范围内（Self-target 当前位置永远合法）
            bool alreadyInRange = AttackRangeSystem.CanCastTo(unit.gridPosition, TargetUnit.gridPosition, Skill);

            // 2. Self-target AoE：需要走到 optimal cast position 才能覆盖到目标
            if (TargetUnit == unit && _bestCastPos.HasValue && _bestCastPos.Value != unit.gridPosition && unit.CanMove)
            {
                plan.AddStep(AIPlanStep.Move(_bestCastPos.Value));
            }
            // 3. 非 Self-target：不在范围内则找最佳施法位置
            else if (!alreadyInRange && unit.CanMove)
            {
                Vector3Int? bestPos = FindBestCastPosition(unit, ctx.ReachableTiles, Skill, TargetUnit);

                if (bestPos.HasValue && bestPos.Value != unit.gridPosition)
                {
                    plan.AddStep(AIPlanStep.Move(bestPos.Value));
                }
            }

            // 4. 使用技能
            if (unit.CanAction)
            {
                if (Skill.Cost > 0 && !unit.Character.HasEnoughMP(Skill.Cost))
                {
                    plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
                }
                else
                {
                    plan.AddStep(AIPlanStep.UseSkill(Skill, TargetUnit));
                }
            }
            else
            {
                plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
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
            return TargetUnit == null || !TargetUnit.IsAlive;
        }

        public override bool IsFailed()
        {
            return TargetUnit == null || Skill == null;
        }

        // ==============================================================
        // Phase 级效用评估
        // ==============================================================

        /// <summary>
        /// 遍历技能所有 Phase，统计每个 Phase 的命中单位 × 单目标价值 × 战略分。
        /// 命中单位为 0 的 Phase 不贡献。各 Phase 求和。
        /// Self-target AoE：先从脚下算，无命中则扫描 reachable tiles（找到第一个就停）。
        /// </summary>
        private float EvaluatePhaseUtility(MapUnit caster, AITaskContext ctx)
        {
            if (Skill.Phases == null || Skill.Phases.Count == 0) return 0f;

            // 非 Self-target：AoE 中心固定（目标/落点），不随施法者移动
            if (TargetUnit != caster)
                return ComputePhaseUtilityAt(caster.gridPosition, caster);

            // Self-target：AoE 跟着施法者。优先原地，无命中则扫描可达 tile。
            float utility = ComputePhaseUtilityAt(caster.gridPosition, caster);
            if (utility > 0f)
            {
                _bestCastPos = caster.gridPosition;
                return utility;
            }

            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile == caster.gridPosition) continue;
                MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                if (occupying != null) continue;

                utility = ComputePhaseUtilityAt(tile, caster);
                if (utility > 0f)
                {
                    _bestCastPos = tile;
                    return utility;
                }
            }

            return 0f;
        }

        /// <summary>
        /// 在指定位置计算 Phase 命中效用（不改变状态，纯计算）
        /// </summary>
        private float ComputePhaseUtilityAt(Vector3Int casterPos, MapUnit caster)
        {
            if (Skill.Phases == null || Skill.Phases.Count == 0) return 0f;

            float totalUtility = 0f;
            int casterATK = (int)caster.Character.statSystem.ATK.getValue();
            bool anyPhaseHit = false;

            Vector3Int effectiveTargetPos = (TargetUnit == caster) ? casterPos : TargetUnit.gridPosition;

            foreach (SkillPhase phase in Skill.Phases)
            {
                if (phase.Effects == null || phase.Effects.Count == 0) continue;

                float phaseUtility = 0f;
                bool hasHit = false;

                if (phase.TargetType == TargetType.Self)
                {
                    float unitImpact = EvaluateEffectImpactOnUnit(caster, caster, phase, casterATK);
                    phaseUtility += unitImpact;
                    hasHit = true;
                }
                else
                {
                    List<Vector3Int> aoeTiles = AttackRangeSystem.GetAoERange3D(
                        casterPos, effectiveTargetPos, phase);

                    foreach (Vector3Int tile in aoeTiles)
                    {
                        MapUnit hitUnit = UnitManager.Instance.GetUnitAt(tile);
                        if (hitUnit == null || hitUnit == caster) continue;
                        if (!AttackRangeSystem.IsTargetValidForPhase(hitUnit, phase, caster.Faction, caster)) continue;

                        float unitImpact = EvaluateEffectImpactOnUnit(caster, hitUnit, phase, casterATK);
                        float strategicScore = SharedTaskBoard.Instance?.GetStrategicScore(hitUnit) ?? 0.5f;
                        phaseUtility += unitImpact * strategicScore;
                        hasHit = true;
                    }
                }

                if (hasHit)
                {
                    totalUtility += phaseUtility;
                    anyPhaseHit = true;
                }
            }

            return anyPhaseHit ? totalUtility : 0f;
        }

        /// <summary>
        /// 计算技能对一个具体目标的价值 (0~N)，包含致死加成
        /// </summary>
        private float EvaluateEffectImpactOnUnit(MapUnit caster, MapUnit target, SkillPhase phase, int casterATK)
        {
            float totalImpact = 0f;

            foreach (SkillEffect effect in phase.Effects)
            {
                switch (effect.EffectType)
                {
                    case EffectType.Damage:
                    {
                        float raw = effect.CalculateValue(casterATK);
                        float mitigated = MitigateDamage(raw, effect.DamageType, target);
                        float targetMaxHP = target.Character.statSystem.maxHP.getValue();
                        if (targetMaxHP > 0f)
                        {
                            float impact = Mathf.Clamp01(mitigated / targetMaxHP);
                            // 渐进加分：伤害越接近斩杀线价值越高（线性）
                            float lethality = Mathf.Clamp01(mitigated / target.Character.statSystem.currentHP);
                            impact *= 1.0f + lethality * 0.3f;
                            // 斩杀固定加分：消除一个威胁的战略价值
                            if (mitigated >= target.Character.statSystem.currentHP)
                                impact += Data.Config.AIConfig.effectValue_Execute;
                            totalImpact += impact;
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
                            float impact = Mathf.Clamp01(estimatedHeal / missingHP);
                            if (estimatedHeal > missingHP)
                                impact *= missingHP / estimatedHeal;
                            totalImpact += impact;
                        }
                        break;
                    }
                    case EffectType.AddBuff:
                    {
                        float hpPercent = (float)target.Character.statSystem.currentHP
                                        / target.Character.statSystem.maxHP.getValue();
                        float hpMult = 1f + hpPercent * Data.Config.AIConfig.addBuff_HPBonus;
                        totalImpact += Data.Config.AIConfig.effectValue_AddBuff * hpMult;
                        break;
                    }
                    case EffectType.RemoveBuff:
                    {
                        float hpPercent = (float)target.Character.statSystem.currentHP
                                        / target.Character.statSystem.maxHP.getValue();
                        float urgency = 1f + (1f - hpPercent) * Data.Config.AIConfig.removeBuff_LowHPUrgency;
                        totalImpact += Data.Config.AIConfig.effectValue_RemoveBuff * urgency;
                        break;
                    }
                    case EffectType.MoveCaster:
                        totalImpact += Data.Config.AIConfig.effectValue_MoveCaster;
                        break;
                }
            }

            return totalImpact;
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
    }
}
