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
        public List<AITask> GenerateCandidateTasks(MapUnit actingUnit)
        {
            List<AITask> taskPool = new List<AITask>();

            GenerateAttackTasks(actingUnit, taskPool);
            GenerateSupportTasks(actingUnit, taskPool);
            GenerateDefendTasks(actingUnit, taskPool);
            GenerateSkillTasks(actingUnit, taskPool);
            GenerateMoveTasks(actingUnit, taskPool);

            taskPool.Add(new WaitTask(0f));

            return taskPool;
        }

        // ==============================================================
        // 攻击任务生成
        // ==============================================================
        private void GenerateAttackTasks(MapUnit unit, List<AITask> pool)
        {
            List<MapUnit> players = UnitManager.Instance.GetAllAlivePlayers();
            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();

            foreach (MapUnit player in players)
            {
                if (player == null || player.Character.statSystem.currentHP <= 0)
                {
                    continue;
                }

                // 目标不可达则跳过
                if (!IsUnitReachable(unit, player, moveRange))
                {
                    continue;
                }

                float priority = 0.5f + (1f - GetHPPercent(player)) * 0.5f;
                pool.Add(new AttackTask(player, priority));
            }
        }

        // ==============================================================
        // 支援任务生成
        // ==============================================================
        private void GenerateSupportTasks(MapUnit unit, List<AITask> pool)
        {
            List<SkillDataSO> activeSkills = unit.GetActiveSkills();
            if (activeSkills == null || activeSkills.Count == 0)
            {
                return;
            }

            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
            List<MapUnit> allies = GetAliveAllies(unit);

            foreach (SkillDataSO skill in activeSkills)
            {
                if (skill == null)
                {
                    continue;
                }

                // 只处理支援型技能
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

                    // 目标在技能可达范围内
                    if (!IsTargetInSkillRange(unit, skill, ally, moveRange))
                    {
                        continue;
                    }

                    float priority = 1f - hpPercent * 0.8f;
                    pool.Add(new SupportTask(skill, ally, priority));
                }

                // 自疗：自身HP低且有可用的自疗技能
                float ownHP = GetHPPercent(unit);
                if (ownHP < 0.5f && CanTargetSelf(skill) && IsTargetInSkillRange(unit, skill, unit, moveRange))
                {
                    float priority = 0.8f - ownHP;
                    pool.Add(new SupportTask(skill, unit, priority));
                }
            }
        }

        // ==============================================================
        // 防御任务生成
        // ==============================================================
        private void GenerateDefendTasks(MapUnit unit, List<AITask> pool)
        {
            InfluenceMapLayer threatMap = TacticalMapManager.Instance.ThreatMap;
            float currentThreat = threatMap.GetScore(unit.gridPosition);

            float hpPercent = GetHPPercent(unit);
            if (currentThreat < Data.Config.AIConfig.dangerThreatThreshold && hpPercent > Data.Config.AIConfig.lowHPThreshold)
            {
                return;
            }

            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
            HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                unit.gridPosition, moveRange,
                MapManager.Instance.logicalGrid, unit.moveStats);

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
                float priority = currentThreat * (1f - hpPercent);
                pool.Add(new DefendTask(bestSafePos, priority));
            }
        }

        // ==============================================================
        // 技能任务生成
        // ==============================================================
        private void GenerateSkillTasks(MapUnit unit, List<AITask> pool)
        {
            List<SkillDataSO> activeSkills = unit.GetActiveSkills();
            if (activeSkills == null || activeSkills.Count == 0)
            {
                return;
            }

            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
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
                    if (!IsTargetInSkillRange(unit, skill, target, moveRange))
                    {
                        continue;
                    }

                    float priority = EvaluateSkillPriority(skill, unit, target);
                    pool.Add(new SkillTask(skill, target, priority));
                }
            }
        }

        // ==============================================================
        // 移动任务生成
        // ==============================================================
        private void GenerateMoveTasks(MapUnit unit, List<AITask> pool)
        {
            // 简单实现：根据威胁图和战略图推送走位目标
            // 在高威胁时向后撤退，低威胁时向前推进

            InfluenceMapLayer threatMap = TacticalMapManager.Instance.ThreatMap;
            float currentThreat = threatMap.GetScore(unit.gridPosition);

            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
            HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                unit.gridPosition, moveRange,
                MapManager.Instance.logicalGrid, unit.moveStats);

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
                // 低威胁且靠近敌人方向优先
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

        private bool IsUnitReachable(MapUnit unit, MapUnit target, int moveRange)
        {
            HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                unit.gridPosition, moveRange,
                MapManager.Instance.logicalGrid, unit.moveStats);

            SkillDataSO normalAttack = unit.NormalAttackSkill;
            if (normalAttack == null)
            {
                return false;
            }

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

                List<Vector3Int> attackRange = AttackRangeSystem.GetCastRange3D(tile, normalAttack);
                if (attackRange.Contains(target.gridPosition))
                {
                    return true;
                }
            }

            return false;
        }

        private bool IsTargetInSkillRange(MapUnit caster, SkillDataSO skill, MapUnit target, int moveRange)
        {
            // 先检查当前位置是否能施放
            List<Vector3Int> castRange = AttackRangeSystem.GetCastRange3D(caster.gridPosition, skill);
            if (castRange.Contains(target.gridPosition))
            {
                return true;
            }

            // 再检查移动后是否能施放
            HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                caster.gridPosition, moveRange,
                MapManager.Instance.logicalGrid, caster.moveStats);

            foreach (Vector3Int tile in reachableTiles)
            {
                if (tile != caster.gridPosition)
                {
                    MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                    if (occupying != null)
                    {
                        continue;
                    }
                }

                List<Vector3Int> range = AttackRangeSystem.GetCastRange3D(tile, skill);
                if (range.Contains(target.gridPosition))
                {
                    return true;
                }
            }

            return false;
        }

        private bool IsSupportSkill(SkillDataSO skill)
        {
            if (skill.TargetType == TargetType.Ally ||
                skill.TargetType == TargetType.Teammates ||
                skill.TargetType == TargetType.Self)
            {
                return true;
            }

            if (skill.Phases != null)
            {
                foreach (SkillPhase phase in skill.Phases)
                {
                    if (phase.TargetType == TargetType.Ally ||
                        phase.TargetType == TargetType.Teammates ||
                        phase.TargetType == TargetType.Self)
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

        private bool CanTargetSelf(SkillDataSO skill)
        {
            if (skill.TargetType == TargetType.Self)
            {
                return true;
            }

            if (skill.Phases != null)
            {
                foreach (SkillPhase phase in skill.Phases)
                {
                    if (phase.TargetType == TargetType.Self)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        private List<MapUnit> GetValidTargetsForSkill(MapUnit unit, SkillDataSO skill)
        {
            List<MapUnit> targets = new List<MapUnit>();

            // 根据技能目标类型确定候选池
            bool targetsEnemy = skill.TargetType == TargetType.Enemy
                             || skill.TargetType == TargetType.Player
                             || skill.TargetType == TargetType.ExceptTeammates;

            bool targetsAlly = skill.TargetType == TargetType.Ally
                            || skill.TargetType == TargetType.Teammates;

            bool targetsSelf = skill.TargetType == TargetType.Self;

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
