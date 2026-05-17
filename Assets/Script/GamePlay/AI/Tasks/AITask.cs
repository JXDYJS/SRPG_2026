using System;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;
using GamePlay.Grid;
using Managers;
using Grid;

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

        public AITaskContext(MapUnit unit)
        {
            MoveRange = (int)unit.Character.statSystem.moveRange.getValue();
            ReachableTiles = AStar.GetReachableTiles(
                unit.gridPosition, MoveRange,
                MapManager.Instance.logicalGrid, unit.moveStats);
            ThreatMap = TacticalMapManager.Instance.ThreatMap;
        }
    }

    public abstract class AITask
    {
        public string TaskID { get; protected set; }
        public AITaskType TaskType { get; protected set; }
        public float BasePriority { get; protected set; }
        public int MaxAssignees { get; protected set; }
        public int CurrentAssignees { get; protected set; }
        public bool IsAvailable => CurrentAssignees < MaxAssignees;

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
