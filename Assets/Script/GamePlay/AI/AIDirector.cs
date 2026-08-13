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
    /// <summary>Scans the battlefield and generates candidate AI actions for the current unit.</summary>
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

                MapUnit forcedTarget = offensive ? TauntSystem.GetForcedTargetForSkill(unit, skill, ctx) : null;

                List<MapUnit> targets = GetValidTargetsForSkill(unit, skill);

                foreach (MapUnit target in targets)
                {
                    if (target == null || !target.IsAlive)
                    {
                        continue;
                    }

                    if (forcedTarget != null && target != forcedTarget)
                    {
                        continue;
                    }

                    // Skip healing when target is above the heal threshold
                    if (!offensive && HasHealEffect(skill))
                    {
                        if (GetHPPercent(target) > Data.Config.AIConfig.healThreshold)
                        {
                            continue;
                        }
                    }

                    bool inRange = AttackRangeSystem.CanCastTo(unit.gridPosition, target.gridPosition, skill);
                    Vector3Int? castPos = null;
                    if (!inRange)
                    {
                        castPos = FindBestCastPosition(unit, skill, target, ctx);
                        if (castPos == null)
                        {
                            continue;
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

        private void GenerateRepositionActions(MapUnit unit, AITaskContext ctx, List<AIAction> pool)
        {
            MapUnit advanceTarget = SelectAdvanceTarget(unit, ctx);
            if (advanceTarget != null)
            {
                Vector3Int? advancePos = FindAdvancePositionAlongPath(unit, advanceTarget, ctx, out float pathProgress);
                if (!advancePos.HasValue)
                {
                    // Fallback: A* blocked; pick the reachable tile closest to the nearest enemy
                    advancePos = FindClosestReachableTileToEnemy(unit, ctx);
                    pathProgress = 0.5f;
                }

                if (advancePos.HasValue && advancePos.Value != unit.gridPosition)
                {
                    float score = BattleValueEvaluator.RepositionValue(unit, advancePos.Value, pathProgress, ctx);
                    pool.Add(new AIAction
                    {
                        Category = AICategory.Reposition,
                        Score = score,
                        TargetPos = advancePos.Value
                    });
                }
            }

            // Retreat when low HP or under high threat
            float hpPercent = GetHPPercent(unit);
            float currentThreat = ctx.ThreatMap.GetScore(unit.gridPosition);
            bool shouldRetreat = currentThreat >= Data.Config.AIConfig.dangerThreatThreshold
                              || hpPercent < Data.Config.AIConfig.lowHPThreshold;
            if (shouldRetreat)
            {
                Vector3Int? safePos = FindSafestReachableTile(unit, ctx, currentThreat);
                if (safePos.HasValue && safePos.Value != unit.gridPosition)
                {
                    float score = BattleValueEvaluator.RepositionValue(unit, safePos.Value, 0f, ctx);
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

        /// <summary>Picks the best advance target by distance and HP scoring.</summary>
        private MapUnit SelectAdvanceTarget(MapUnit unit, AITaskContext ctx)
        {
            MapUnit best = null;
            float bestScore = float.MinValue;

            float distanceWeight = Data.Config.AIConfig.advanceTargetDistanceWeight;

            foreach (MapUnit enemy in ctx.Enemies)
            {
                if (enemy == null || !enemy.IsAlive)
                {
                    continue;
                }

                int manhattan = Mathf.Abs(unit.gridPosition.x - enemy.gridPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - enemy.gridPosition.z);
                float distanceFactor = 1.0f - Mathf.Clamp01((float)manhattan / Data.Config.AIConfig.advanceTargetDistanceNormalize);
                float hpFactor = 1.0f - GetHPPercent(enemy);

                float score = distanceFactor * distanceWeight + hpFactor * (1f - distanceWeight);
                if (score > bestScore)
                {
                    bestScore = score;
                    best = enemy;
                }
            }

            return best;
        }

        /// <summary>Paths to the target and picks the best in-move-range position along the way.</summary>
        private Vector3Int? FindAdvancePositionAlongPath(MapUnit unit, MapUnit target, AITaskContext ctx, out float pathProgress)
        {
            pathProgress = 0f;

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

            float progressWeight = Data.Config.AIConfig.advancePathProgressWeight;

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
                float safety = 1.0f - Mathf.Clamp01(threat / Data.Config.AIConfig.threatNormalizeBase);

                float score = progress * progressWeight + safety * (1f - progressWeight);
                if (score > bestScore)
                {
                    bestScore = score;
                    bestPos = tile;
                    pathProgress = progress;
                }

                lastPos = tile;
            }

            return bestPos;
        }

        /// <summary>Fallback advance tile closest to the nearest enemy when A* fails; null if none closer.</summary>
        private Vector3Int? FindClosestReachableTileToEnemy(MapUnit unit, AITaskContext ctx)
        {
            int distNow = ManhattanToNearestEnemy(unit.gridPosition, ctx);
            if (distNow == int.MaxValue)
            {
                return null;
            }

            Vector3Int? bestPos = null;
            int bestDist = distNow;

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

                int d = ManhattanToNearestEnemy(tile, ctx);
                if (d < bestDist)
                {
                    bestDist = d;
                    bestPos = tile;
                }
            }

            return bestPos;
        }

        /// <summary>Manhattan distance to the nearest enemy, or int.MaxValue if none.</summary>
        private static int ManhattanToNearestEnemy(Vector3Int pos, AITaskContext ctx)
        {
            int best = int.MaxValue;
            foreach (MapUnit e in ctx.Enemies)
            {
                if (e == null || !e.IsAlive)
                {
                    continue;
                }
                int d = Mathf.Abs(pos.x - e.gridPosition.x) + Mathf.Abs(pos.z - e.gridPosition.z);
                if (d < best)
                {
                    best = d;
                }
            }
            return best;
        }

        /// <summary>Finds the lowest-threat reachable tile, requiring a meaningful improvement.</summary>
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

        /// <summary>Lowest-threat cast position in range; null if already in range or unreachable.</summary>
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

        /// <summary>Determines the candidate target pool based on AI behavior and target type.</summary>
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
