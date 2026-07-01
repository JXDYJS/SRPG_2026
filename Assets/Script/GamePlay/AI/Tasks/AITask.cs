using System;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;
using GamePlay.Grid;
using GamePlay.Skill;
using Managers;
using Grid;
using Global;

namespace GamePlay.AI.Tasks
{
    public enum AITaskType
    {
        Attack,
        Support,
        Defend,
        Skill,
        Move,
        Wait
    }

    /// <summary>
    /// AI 任务上下文——持有单次 AI 回合内多次复用的预计算数据
    /// 避免 AStar 泛洪、威胁图查询等重复计算
    /// </summary>
    public class AITaskContext
    {
        public readonly HashSet<Vector3Int> ReachableTiles;
        public readonly InfluenceMapLayer ThreatMap;
        public readonly int MoveRange;

        // 进攻技能范围预计算
        public readonly List<SkillDataSO> OffensiveSkills;
        public readonly int MaxOffensiveCastRange;
        public readonly int MaxOffensiveSquareRange;
        public readonly bool HasGlobalOffensiveSkill;

        public AITaskContext(MapUnit unit)
        {
            MoveRange = (int)unit.Character.statSystem.moveRange.getValue();
            ReachableTiles = AStar.GetReachableTiles(
                unit.gridPosition, MoveRange,
                MapManager.Instance.logicalGrid, unit.moveStats);
            ThreatMap = TacticalMapManager.Instance.ThreatMap;

            OffensiveSkills = new List<SkillDataSO>();
            MaxOffensiveCastRange = 0;
            MaxOffensiveSquareRange = 0;
            HasGlobalOffensiveSkill = false;

            List<SkillDataSO> activeSkills = unit.GetActiveSkills();
            if (activeSkills != null)
            {
                foreach (SkillDataSO skill in activeSkills)
                {
                    if (skill == null)
                    {
                        continue;
                    }

                    if (!IsOffensiveSkillForAI(skill))
                    {
                        continue;
                    }

                    OffensiveSkills.Add(skill);

                    if (skill.CastPattern == CastPatternType.Global)
                    {
                        HasGlobalOffensiveSkill = true;
                    }
                    else if (skill.CastPattern == CastPatternType.Square)
                    {
                        if (skill.CastMaxRange > MaxOffensiveSquareRange)
                        {
                            MaxOffensiveSquareRange = skill.CastMaxRange;
                        }
                    }

                    if (skill.CastMaxRange > MaxOffensiveCastRange)
                    {
                        MaxOffensiveCastRange = skill.CastMaxRange;
                    }
                }
            }

            OffensiveSkills.Sort((a, b) => b.CastMaxRange.CompareTo(a.CastMaxRange));
        }

        private static bool IsOffensiveSkillForAI(SkillDataSO skill)
        {
            return skill.IsOffensiveSkill();
        }
    }

        public abstract class AITask
    {
        public string TaskID { get; protected set; }
        public AITaskType TaskType { get; protected set; }
        public float BasePriority { get; protected set; }
        public int MaxAssignees { get; protected set; }
        public int CurrentAssignees { get; protected set; }
        public bool IsAvailable => CurrentAssignees < MaxAssignees && !IsCompleted() && !IsFailed();

        public virtual MapUnit TargetUnit { get; protected set; }

        public abstract float CalculateUtilityFor(MapUnit unit, AITaskContext ctx);
        public abstract AIPlan GeneratePlan(MapUnit unit, AITaskContext ctx);
        public abstract float EstimatedDistanceTo(MapUnit unit);
        public abstract bool IsCompleted();
        public abstract bool IsFailed();

        public void Claim(MapUnit unit)
        {
            CurrentAssignees++;
            OnClaimed(unit);
        }

        protected virtual void OnClaimed(MapUnit unit) { }

        public AITask(AITaskType type, float basePriority, int maxAssignees = 1)
        {
            TaskID = Guid.NewGuid().ToString("N");
            TaskType = type;
            BasePriority = basePriority;
            MaxAssignees = maxAssignees;
            CurrentAssignees = 0;
        }
    }
}
