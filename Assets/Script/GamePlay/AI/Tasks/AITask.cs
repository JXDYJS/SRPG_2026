using System;
using GamePlay.Units;

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

    public abstract class AITask
    {
        public string TaskID { get; protected set; }
        public AITaskType TaskType { get; protected set; }
        public float BasePriority { get; protected set; }
        public int MaxAssignees { get; protected set; }
        public int CurrentAssignees { get; protected set; }
        public bool IsAvailable => CurrentAssignees < MaxAssignees;

        public abstract float CalculateUtilityFor(MapUnit unit);
        public abstract AIPlan GeneratePlan(MapUnit unit);
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
