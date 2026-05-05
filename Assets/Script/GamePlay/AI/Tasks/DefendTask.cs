using UnityEngine;
using GamePlay.Units;

namespace GamePlay.AI.Tasks
{
    public class DefendTask : AITask
    {
        public Vector3Int SafePosition { get; private set; }

        public DefendTask(Vector3Int safePos, float basePriority) : base(AITaskType.Defend, basePriority)
        {
            SafePosition = safePos;
        }

        public override float CalculateUtilityFor(MapUnit unit)
        {
            return 0f;
        }

        public override AIPlan GeneratePlan(MapUnit unit)
        {
            return new AIPlan();
        }

        public override float EstimatedDistanceTo(MapUnit unit)
        {
            return Vector3Int.Distance(unit.gridPosition, SafePosition);
        }

        public override bool IsCompleted()
        {
            return false;
        }

        public override bool IsFailed()
        {
            return false;
        }
    }
}
