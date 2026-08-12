using System.Collections.Generic;
using UnityEngine;
using Managers;
using Grid;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Core.Data;
using Global;

namespace GamePlay.AI
{
    /// <summary>
    /// AI 导演 — 扫描战场态势，为当前行动单位生成候选行动池（统一 AIAction）。
    /// 生成：直接动作（进攻/治疗/增益，含斩杀判定）+ 走位动作（推进/撤退）+ 待机兜底。
    /// </summary>
    public class AIDirector
    {
        public List<AIAction> GenerateCandidateActions(MapUnit unit, AITaskContext ctx)
        {
            List<AIAction> pool = new List<AIAction>();

            GenerateDirectActions(unit, ctx, pool);
            GenerateRepositionActions(unit, ctx, pool);

            pool.Add(new AIAction { Category = AICategory.Wait, Score = 0f });

            return pool;
        }

        // ==============================================================
        // 直接动作生成
        // ==============================================================
        private void GenerateDirectActions(MapUnit unit, AITaskContext ctx, List<AIAction> pool)
        {
            if (unit == null || unit.Character == null)
            {
                return;
            }

            List<SkillDataSO> activeSkills = unit.GetActiveSkills();
            if (activeSkills == null || activeSkills.Count == 0)
            {
                return;
            }

            foreach (SkillDataSO skill in activeSkills)
            {
                if (skill == null)
                {
                    continue;
                }

                if (skill.Cost > 0 && !unit.Character.HasEnoughMP(skill.Cost))
                {
                    continue;
                }

                bool offensive = skill.IsOffensiveSkill();
                List<MapUnit> targets = GetValidTargetsForSkill(unit, skill);

                foreach (MapUnit target in targets)
                {
                    if (target == null || !target.IsAlive)
                    {
                        continue;
                    }

                    // 嘲讽约束（仅进攻技能收窄目标池）
                    if (offensive)
                    {
                        MapUnit forced = TauntSystem.GetForcedTargetForSkill(unit, skill, ctx);
                        if (forced != null && target != forced)
                        {
                            continue;
                        }
                    }
                    else if (HasHealEffect(skill))
                    {
                        // 治疗阈值：满血不治疗
                        if (GetHPPercent(target) > Data.Config.AIConfig.healThreshold)
                        {
                            continue;
                        }
                    }

                    // 施放位置
                    bool inRange = AttackRangeSystem.CanCastTo(unit.gridPosition, target.gridPosition, skill);
                    Vector3Int? castPos = null;
                    if (!inRange)
                    {
                        castPos = FindBestCastPosition(unit, skill, target, ctx);
                        if (castPos == null)
                        {
                            continue; // 移动后仍够不着
                        }
                    }

                    Vector3Int effectiveCastPos = inRange ? unit.gridPosition : castPos.Value;
                    float score = BattleValueEvaluator.SkillActionValue(
                        unit, skill, target, effectiveCastPos, ctx, out bool lethal);
                    if (score <= 0f)
                    {
                        continue;
                    }

                    AICategory category = lethal
                        ? AICategory.Execute
                        : offensive ? AICategory.Damage : AICategory.HealBuff;

                    pool.Add(new AIAction
                    {
                        Category = category,
                        Score = score,
                        Skill = skill,
                        TargetUnit = target,
                        TargetPos = castPos
                    });
                }
            }
        }

        // ==============================================================
        // 走位动作生成（推进 / 撤退）
        // ==============================================================
        private void GenerateRepositionActions(MapUnit unit, AITaskContext ctx, List<AIAction> pool)
        {
            // 推进候选：向最有价值敌人推进
            MapUnit advanceTarget = SelectAdvanceTarget(unit, ctx);
            if (advanceTarget != null)
            {
                Vector3Int? advancePos = FindAdvancePositionAlongPath(unit, advanceTarget, ctx);
                if (advancePos.HasValue && advancePos.Value != unit.gridPosition)
                {
                    float score = BattleValueEvaluator.RepositionValue(unit, advancePos.Value, ctx);
                    pool.Add(new AIAction
                    {
                        Category = AICategory.Reposition,
                        Score = score,
                        TargetPos = advancePos.Value
                    });
                }
            }

            // 撤退候选：低血或高威胁时找更安全的落点
            float hpPercent = GetHPPercent(unit);
            float currentThreat = ctx.ThreatMap.GetScore(unit.gridPosition);
            bool shouldRetreat = currentThreat >= Data.Config.AIConfig.dangerThreatThreshold
                              || hpPercent < Data.Config.AIConfig.lowHPThreshold;
            if (shouldRetreat)
            {
                Vector3Int? safePos = FindSafestReachableTile(unit, ctx, currentThreat);
                if (safePos.HasValue && safePos.Value != unit.gridPosition)
                {
                    float score = BattleValueEvaluator.RepositionValue(unit, safePos.Value, ctx);
                    if (score > 0f)
                    {
                        pool.Add(new AIAction
                        {
                            Category = AICategory.Reposition,
                            Score = score,
                            TargetPos = safePos.Value
                        });
                    }
                }
            }
        }

        // ==============================================================
        // 推进辅助
        // ==============================================================

        /// <summary>
        /// 综合评分选出最有价值的前压目标
        /// score = 距离因子×0.5 + 血量因子×0.5（越近、越残血越优先）
        /// </summary>
        private MapUnit SelectAdvanceTarget(MapUnit unit, AITaskContext ctx)
        {
            MapUnit best = null;
            float bestScore = float.MinValue;

            foreach (MapUnit enemy in ctx.Enemies)
            {
                if (enemy == null || !enemy.IsAlive)
                {
                    continue;
                }

                int manhattan = Mathf.Abs(unit.gridPosition.x - enemy.gridPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - enemy.gridPosition.z);
                float distanceFactor = 1.0f - Mathf.Clamp01((float)manhattan / 20f);
                float hpFactor = 1.0f - GetHPPercent(enemy);

                float score = distanceFactor * 0.5f + hpFactor * 0.5f;
                if (score > bestScore)
                {
                    bestScore = score;
                    best = enemy;
                }
            }

            return best;
        }

        /// <summary>
        /// A*寻路到目标（不限行动力），沿路径在移动力内选最佳落点
        /// score = 路径进度×0.6 + 安全度×0.4
        /// </summary>
        private Vector3Int? FindAdvancePositionAlongPath(MapUnit unit, MapUnit target, AITaskContext ctx)
        {
            List<Vector3Int> path = AStar.FindPathToOccupied(
                unit.gridPosition, target.gridPosition,
                MapManager.Instance.logicalGrid, unit.moveStats);

            if (path == null || path.Count == 0)
            {
                return null;
            }

            Vector3Int? bestPos = null;
            float bestScore = float.MinValue;
            float accumulatedCost = 0f;
            Vector3Int lastPos = unit.gridPosition;

            for (int i = 0; i < path.Count; i++)
            {
                Vector3Int tile = path[i];
                float stepCost = Mathf.Abs(tile.x - lastPos.x)
                               + Mathf.Abs(tile.z - lastPos.z)
                               + Mathf.Abs(tile.y - lastPos.y);
                accumulatedCost += stepCost;
                if (accumulatedCost > ctx.MoveRange)
                {
                    break;
                }

                if (!ctx.ReachableTiles.Contains(tile))
                {
                    lastPos = tile;
                    continue;
                }

                float progress = (float)(i + 1) / path.Count;
                float threat = ctx.ThreatMap.GetScore(tile);
                float safety = 1.0f - Mathf.Clamp01(threat / 50f);

                float score = progress * 0.6f + safety * 0.4f;
                if (score > bestScore)
                {
                    bestScore = score;
                    bestPos = tile;
                }

                lastPos = tile;
            }

            return bestPos;
        }

        /// <summary>
        /// 在可达格中找威胁最低的落点（安全改善达到阈值才返回）
        /// </summary>
        private Vector3Int? FindSafestReachableTile(MapUnit unit, AITaskContext ctx, float currentThreat)
        {
            Vector3Int? bestPos = null;
            float bestThreat = currentThreat;

            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile == unit.gridPosition)
                {
                    continue;
                }

                MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                if (occupying != null)
                {
                    continue;
                }

                float threat = ctx.ThreatMap.GetScore(tile);
                if (threat < bestThreat)
                {
                    bestThreat = threat;
                    bestPos = tile;
                }
            }

            if (bestPos.HasValue
                && bestThreat < currentThreat * Data.Config.AIConfig.threatImprovementRatio)
            {
                return bestPos;
            }
            return null;
        }

        /// <summary>
        /// 在可达格中找威胁最低的施放位置；已在范围或够不着时返回 null
        /// </summary>
        private Vector3Int? FindBestCastPosition(MapUnit unit, SkillDataSO skill, MapUnit target, AITaskContext ctx)
        {
            Vector3Int? bestPos = null;
            float bestThreat = float.MaxValue;

            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile == unit.gridPosition)
                {
                    continue;
                }

                MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                if (occupying != null)
                {
                    continue;
                }

                if (!AttackRangeSystem.IsWithinCastDistance(tile, target.gridPosition, skill))
                {
                    continue;
                }

                if (!AttackRangeSystem.CanCastTo(tile, target.gridPosition, skill))
                {
                    continue;
                }

                float threat = ctx.ThreatMap.GetScore(tile);
                if (threat < bestThreat)
                {
                    bestThreat = threat;
                    bestPos = tile;
                }
            }

            return bestPos;
        }

        // ==============================================================
        // 辅助方法
        // ==============================================================

        private float GetHPPercent(MapUnit unit)
        {
            if (unit == null || unit.Character == null)
            {
                return 1f;
            }
            return (float)unit.Character.statSystem.currentHP
                 / unit.Character.statSystem.maxHP.getValue();
        }

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

        /// <summary>
        /// 基于 AIBehavior / TargetType 确定技能的候选目标池
        /// </summary>
        private List<MapUnit> GetValidTargetsForSkill(MapUnit unit, SkillDataSO skill)
        {
            List<MapUnit> targets = new List<MapUnit>();

            bool targetsEnemy = false;
            bool targetsAlly = false;
            bool targetsSelf = false;

            if (skill.AIBehavior != AISkillBehavior.Auto)
            {
                targetsEnemy = (skill.AIBehavior & (AISkillBehavior.Harm | AISkillBehavior.Debuff | AISkillBehavior.Control)) != 0;
                targetsAlly = (skill.AIBehavior & (AISkillBehavior.Heal | AISkillBehavior.Buff)) != 0;
                targetsSelf = skill.TargetType == TargetType.Self
                           || (skill.CanTargetSelf()
                               && skill.TargetType != TargetType.Ally
                               && skill.TargetType != TargetType.Teammates);
            }
            else
            {
                targetsEnemy = skill.TargetType == TargetType.Enemy
                            || skill.TargetType == TargetType.Player
                            || skill.TargetType == TargetType.ExceptTeammates;
                targetsAlly = skill.TargetType == TargetType.Ally
                           || skill.TargetType == TargetType.Teammates;
                targetsSelf = skill.TargetType == TargetType.Self;
            }

            if (targetsSelf)
            {
                targets.Add(unit);
            }

            foreach (MapUnit other in UnitManager.Instance.GetAllAliveUnit())
            {
                if (other == null || other == unit || !other.IsAlive)
                {
                    continue;
                }
                if (targetsEnemy && other.Faction != unit.Faction)
                {
                    targets.Add(other);
                }
                else if (targetsAlly && other.Faction == unit.Faction)
                {
                    targets.Add(other);
                }
            }

            return targets;
        }
    }
}
