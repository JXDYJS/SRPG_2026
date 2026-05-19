using System.Collections.Generic;
using UnityEngine;
using Managers;
using Grid;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using GamePlay.AI.Tasks;
using Core.Data;
using Global;

namespace GamePlay.AI
{
    /// <summary>
    /// AI 导演 — 扫描战场态势，为当前行动的单位生成候选任务池
    /// </summary>
    public class AIDirector
    {
        public List<AITask> GenerateCandidateTasks(MapUnit actingUnit, AITaskContext ctx)
        {
            List<AITask> taskPool = new List<AITask>();

            float t0 = Time.realtimeSinceStartup;

            GenerateAttackTasks(actingUnit, taskPool, ctx);
            float t1 = Time.realtimeSinceStartup;

            GenerateSupportTasks(actingUnit, taskPool, ctx);
            float t2 = Time.realtimeSinceStartup;

            GenerateDefendTasks(actingUnit, taskPool, ctx);
            float t3 = Time.realtimeSinceStartup;

            GenerateSkillTasks(actingUnit, taskPool, ctx);
            float t4 = Time.realtimeSinceStartup;

            GenerateMoveTasks(actingUnit, taskPool, ctx);
            float t5 = Time.realtimeSinceStartup;

            taskPool.Add(new WaitTask(0f));

            float tTotal = (t5 - t0) * 1000f;
            UnityEngine.Debug.Log($"[AIDirector·性能] ─────────────────────────────");
            UnityEngine.Debug.Log($"[AIDirector·性能]  Attack:  {(t1 - t0) * 1000f:F1} ms  → {CountByType(taskPool, AITaskType.Attack)} 个任务");
            UnityEngine.Debug.Log($"[AIDirector·性能]  Support: {(t2 - t1) * 1000f:F1} ms  → {CountByType(taskPool, AITaskType.Support)} 个任务");
            UnityEngine.Debug.Log($"[AIDirector·性能]  Defend:  {(t3 - t2) * 1000f:F1} ms  → {CountByType(taskPool, AITaskType.Defend)} 个任务");
            UnityEngine.Debug.Log($"[AIDirector·性能]  Skill:   {(t4 - t3) * 1000f:F1} ms  → {CountByType(taskPool, AITaskType.Skill)} 个任务");
            UnityEngine.Debug.Log($"[AIDirector·性能]  Move:    {(t5 - t4) * 1000f:F1} ms  → {CountByType(taskPool, AITaskType.Move)} 个任务");
            UnityEngine.Debug.Log($"[AIDirector·性能]  总计:    {tTotal:F1} ms  → {taskPool.Count} 个任务");
            UnityEngine.Debug.Log($"[AIDirector·性能] ─────────────────────────────");

            return taskPool;
        }

        private int CountByType(List<AITask> pool, AITaskType type)
        {
            int count = 0;
            foreach (var t in pool)
                if (t.TaskType == type)
                    count++;
            return count;
        }

        // ==============================================================
        // 攻击任务生成
        // ==============================================================
        private void GenerateAttackTasks(MapUnit unit, List<AITask> pool, AITaskContext ctx)
        {
            List<MapUnit> players = UnitManager.Instance.GetAllAlivePlayers();

            foreach (MapUnit player in players)
            {
                if (player == null || player.Character.statSystem.currentHP <= 0)
                {
                    continue;
                }

                if (!IsUnitReachable(unit, player, ctx))
                {
                    continue;
                }

                pool.Add(new AttackTask(player, 1f));
            }
        }

        // ==============================================================
        // 支援任务生成
        // ==============================================================
        private void GenerateSupportTasks(MapUnit unit, List<AITask> pool, AITaskContext ctx)
        {
            List<SkillDataSO> activeSkills = unit.GetActiveSkills();
            if (activeSkills == null || activeSkills.Count == 0)
            {
                return;
            }

            List<MapUnit> allies = GetAliveAllies(unit);

            foreach (SkillDataSO skill in activeSkills)
            {
                if (skill == null)
                {
                    continue;
                }

                if (!IsSupportSkill(skill))
                {
                    continue;
                }

                foreach (MapUnit ally in allies)
                {
                    if (ally.Character.statSystem.currentHP <= 0)
                    {
                        continue;
                    }

                    float hpPercent = GetHPPercent(ally);
                    if (hpPercent > Data.Config.AIConfig.healThreshold)
                    {
                        continue;
                    }

                    if (!IsTargetInSkillRange(unit, skill, ally, ctx))
                    {
                        continue;
                    }

                    pool.Add(new SupportTask(skill, ally, 1f));
                }

                float ownHP = GetHPPercent(unit);
                if (ownHP < 0.5f && CanTargetSelf(skill) && IsTargetInSkillRange(unit, skill, unit, ctx))
                {
                    pool.Add(new SupportTask(skill, unit, 1f));
                }
            }
        }

        // ==============================================================
        // 防御任务生成
        // ==============================================================
        private void GenerateDefendTasks(MapUnit unit, List<AITask> pool, AITaskContext ctx)
        {
            InfluenceMapLayer threatMap = ctx.ThreatMap;
            float currentThreat = threatMap.GetScore(unit.gridPosition);

            float hpPercent = GetHPPercent(unit);
            if (currentThreat < Data.Config.AIConfig.dangerThreatThreshold && hpPercent > Data.Config.AIConfig.lowHPThreshold)
            {
                return;
            }

            HashSet<Vector3Int> reachableTiles = ctx.ReachableTiles;

            Vector3Int bestSafePos = unit.gridPosition;
            float bestThreat = currentThreat;

            foreach (Vector3Int tile in reachableTiles)
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

                float threat = threatMap.GetScore(tile);
                if (threat < bestThreat)
                {
                    bestThreat = threat;
                    bestSafePos = tile;
                }
            }

            if (bestThreat < currentThreat * Data.Config.AIConfig.threatImprovementRatio)
            {
                pool.Add(new DefendTask(bestSafePos, 1f));
            }
        }

        // ==============================================================
        // 技能任务生成
        // ==============================================================
        private void GenerateSkillTasks(MapUnit unit, List<AITask> pool, AITaskContext ctx)
        {
            List<SkillDataSO> activeSkills = unit.GetActiveSkills();
            if (activeSkills == null || activeSkills.Count == 0)
            {
                return;
            }

            SkillDataSO normalAttack = unit.NormalAttackSkill;

            foreach (SkillDataSO skill in activeSkills)
            {
                if (skill == null || skill == normalAttack)
                {
                    continue;
                }

                List<MapUnit> targets = GetValidTargetsForSkill(unit, skill);

                foreach (MapUnit target in targets)
                {
                    if (!IsTargetInSkillRange(unit, skill, target, ctx))
                    {
                        continue;
                    }

                    pool.Add(new SkillTask(skill, target, 1f));
                }
            }
        }

        // ==============================================================
        // 移动任务生成
        // ==============================================================
        private void GenerateMoveTasks(MapUnit unit, List<AITask> pool, AITaskContext ctx)
        {
            InfluenceMapLayer threatMap = ctx.ThreatMap;
            float currentThreat = threatMap.GetScore(unit.gridPosition);

            HashSet<Vector3Int> reachableTiles = ctx.ReachableTiles;

            Vector3Int? bestMovePos = null;
            float bestScore = float.MinValue;

            foreach (Vector3Int tile in reachableTiles)
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

                float threat = threatMap.GetScore(tile);
                float score = currentThreat - threat;
                if (score > bestScore)
                {
                    bestScore = score;
                    bestMovePos = tile;
                }
            }

            if (bestMovePos.HasValue && bestScore > Data.Config.AIConfig.dangerThreatThreshold * 0.3f)
            {
                float priority = Mathf.Clamp01(bestScore / Data.Config.AIConfig.dangerThreatThreshold);
                pool.Add(new MoveTask(bestMovePos.Value, priority));
            }
        }

        // ==============================================================
        // 辅助方法
        // ==============================================================

        private float GetHPPercent(MapUnit unit)
        {
            return (float)unit.Character.statSystem.currentHP
                 / unit.Character.statSystem.maxHP.getValue();
        }

        private List<MapUnit> GetAliveAllies(MapUnit unit)
        {
            List<MapUnit> allies = new List<MapUnit>();
            List<MapUnit> allUnits = UnitManager.Instance.GetAllUnits();

            foreach (MapUnit other in allUnits)
            {
                if (other == null || other == unit)
                {
                    continue;
                }

                if (other.Faction == unit.Faction && other.Character.statSystem.currentHP > 0)
                {
                    allies.Add(other);
                }
            }

            return allies;
        }

        private bool IsUnitReachable(MapUnit unit, MapUnit target, AITaskContext ctx)
        {
            if (ctx.OffensiveSkills.Count == 0)
            {
                return false;
            }

            if (ctx.HasGlobalOffensiveSkill)
            {
                return true;
            }

            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile != unit.gridPosition)
                {
                    MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                    if (occupying != null)
                    {
                        continue;
                    }
                }

                // 快滤：对 Diamond/Line 用 Manhattan，对 Square 用 Chebyshev
                int manhattanDist = Mathf.Abs(tile.x - target.gridPosition.x)
                                  + Mathf.Abs(tile.z - target.gridPosition.z);
                if (manhattanDist > ctx.MaxOffensiveCastRange)
                {
                    int chebDist = Mathf.Max(Mathf.Abs(tile.x - target.gridPosition.x),
                                             Mathf.Abs(tile.z - target.gridPosition.z));
                    if (chebDist > ctx.MaxOffensiveSquareRange)
                    {
                        continue;
                    }
                }

                foreach (SkillDataSO skill in ctx.OffensiveSkills)
                {
                    if (AttackRangeSystem.CanCastTo(tile, target.gridPosition, skill))
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        private bool IsTargetInSkillRange(MapUnit caster, SkillDataSO skill, MapUnit target, AITaskContext ctx)
        {
            if (AttackRangeSystem.CanCastTo(caster.gridPosition, target.gridPosition, skill))
            {
                return true;
            }

            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile != caster.gridPosition)
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

                if (AttackRangeSystem.CanCastTo(tile, target.gridPosition, skill))
                {
                    return true;
                }
            }

            return false;
        }

        private bool IsSupportSkill(SkillDataSO skill)
        {
            return skill.IsSupportiveSkill();
        }

        private bool CanTargetSelf(SkillDataSO skill)
        {
            return skill.CanTargetSelf();
        }

        private List<MapUnit> GetValidTargetsForSkill(MapUnit unit, SkillDataSO skill)
        {
            List<MapUnit> targets = new List<MapUnit>();

            // 基于 AIBehavior 标志确定候选目标池
            bool targetsEnemy = false;
            bool targetsAlly = false;
            bool targetsSelf = false;

            if (skill.AIBehavior != AISkillBehavior.Auto)
            {
                targetsEnemy = (skill.AIBehavior & (AISkillBehavior.Harm | AISkillBehavior.Debuff | AISkillBehavior.Control)) != 0;
                targetsAlly = (skill.AIBehavior & (AISkillBehavior.Heal | AISkillBehavior.Buff)) != 0;
                targetsSelf = targetsAlly;
            }
            else
            {
                // Auto 模式：保留旧版逻辑
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
                return targets;
            }

            List<MapUnit> allUnits = UnitManager.Instance.GetAllUnits();

            foreach (MapUnit other in allUnits)
            {
                if (other == null || other == unit)
                {
                    continue;
                }

                if (other.Character.statSystem.currentHP <= 0)
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

        /// <summary>
        /// 评估技能对目标的优先级 (0~1)
        /// </summary>
        private float EvaluateSkillPriority(SkillDataSO skill, MapUnit caster, MapUnit target)
        {
            float priority = 0.5f;

            if (skill.Phases != null)
            {
                foreach (SkillPhase phase in skill.Phases)
                {
                    if (phase.AoEPattern != AoEPatternType.SingleTarget && phase.AoERadius > 0)
                    {
                        List<Vector3Int> aoeRange = AttackRangeSystem.GetAoERange3D(
                            caster.gridPosition, target.gridPosition, phase);
                        int aoeHits = 0;
                        foreach (Vector3Int pos in aoeRange)
                        {
                            MapUnit u = UnitManager.Instance.GetUnitAt(pos);
                            if (u != null && u.Faction != caster.Faction)
                            {
                                aoeHits++;
                            }
                        }

                        if (aoeHits > 1)
                        {
                            priority += (aoeHits - 1) * Data.Config.AIConfig.aoeExtraHitBonus;
                        }
                        break;
                    }
                }
            }

            return Mathf.Clamp01(priority);
        }
    }
}
