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
    public class SupportTask : AITask
    {
        public SkillDataSO Skill { get; private set; }
        public MapUnit TargetUnit { get; private set; }

        public SupportTask(SkillDataSO skill, MapUnit target, float basePriority)
            : base(AITaskType.Support, basePriority)
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

            if (unit.Character == null || unit.Character.statSystem.currentHP <= 0)
            {
                return 0f;
            }

            // 同阵营才支援
            if (TargetUnit.Faction != unit.Faction)
            {
                return 0f;
            }

            // 1. 治疗紧迫度 (0~1)：目标HP越低越需要支援
            float targetHPPercent = (float)TargetUnit.Character.statSystem.currentHP
                                  / TargetUnit.Character.statSystem.maxHP.getValue();
            float healUrgency = 1.0f - targetHPPercent;

            // 目标HP还很高且没有buff类效果，不需要支援
            if (targetHPPercent > Data.Config.AIConfig.healThreshold && !HasHealEffect(Skill))
            {
                return 0f;
            }

            // 2. 自身HP紧迫度 (0~1)：自身HP低时自疗优先
            float ownHPPercent = (float)unit.Character.statSystem.currentHP
                               / unit.Character.statSystem.maxHP.getValue();
            float ownHPLow = 1.0f - ownHPPercent;

            // 如果目标是别人且自身HP更低，优先自保（除非技能只能对自己用）
            bool isSelfTarget = (TargetUnit == unit);
            if (!isSelfTarget && ownHPLow > healUrgency && !Skill.IsSupportiveSkill())
            {
                ownHPLow *= 1.5f; // 自身更危险时提升权重
            }

            // 3. 距离效用 (0~1)
            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - TargetUnit.gridPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - TargetUnit.gridPosition.z);
            float distanceUtility = 1.0f - Mathf.Clamp01((float)manhattanDist / (moveRange + Skill.CastMaxRange + 1));

            // 4. 威胁掩护效用 (0~1)：目标受到威胁越高，越需要支援
            InfluenceMapLayer threatMap = TacticalMapManager.Instance.ThreatMap;
            float targetThreat = threatMap.GetScore(TargetUnit.gridPosition);
            float threatCover = Mathf.Clamp01(targetThreat / Data.Config.AIConfig.threatNormalizeBase);

            // 5. 加权求和 (权重和为 1.0)
            float wHeal    = Data.Config.AIConfig.supportWeight_HealUrgency;
            float wHPLow   = Data.Config.AIConfig.supportWeight_HPLow;
            float wDist    = Data.Config.AIConfig.supportWeight_Distance;
            float wThreat  = Data.Config.AIConfig.supportWeight_ThreatCover;

            return (wHeal   * healUrgency
                  + wHPLow  * ownHPLow
                  + wDist   * distanceUtility
                  + wThreat * threatCover) * Skill.AIPriority;
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

            // 2. 不在范围内则找最佳支援位置（威胁最低的施法位置）
            if (!alreadyInRange && unit.CanMove)
            {
                Vector3Int? bestPos = FindBestSupportPosition(unit, ctx.ReachableTiles, Skill, TargetUnit);

                if (bestPos.HasValue && bestPos.Value != unit.gridPosition)
                {
                    plan.AddStep(AIPlanStep.Move(bestPos.Value));
                }
            }

            // 3. 使用支援技能
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
            return TargetUnit == null
                || TargetUnit.Character.statSystem.currentHP <= 0
                || TargetUnit.Character.statSystem.currentHP >= TargetUnit.Character.statSystem.maxHP.getValue();
        }

        public override bool IsFailed()
        {
            return TargetUnit == null || Skill == null;
        }

        // ==============================================================
        // 私有辅助方法
        // ==============================================================

        /// <summary>
        /// 寻找在可达格子中能施放支援技能的最佳位置（威胁最低优先）
        /// 先用 IsWithinCastDistance 快滤，再用 CanCastTo 精确判定
        /// </summary>
        private Vector3Int? FindBestSupportPosition(
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
        /// 检查技能是否包含 Heal 效果
        /// </summary>
        private bool HasHealEffect(SkillDataSO skill)
        {
            if (skill.Phases == null)
            {
                return false;
            }

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null)
                {
                    continue;
                }

                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.Heal)
                    {
                        return true;
                    }
                }
            }

            return false;
        }
    }
}
