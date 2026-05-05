using UnityEngine;
using GamePlay.Units;

namespace GamePlay.AI.Tasks
{
    public class MoveTask : AITask
    {
        public Vector3Int TargetPosition { get; private set; }

        public MoveTask(Vector3Int targetPos, float basePriority) : base(AITaskType.Move, basePriority)
        {
            TargetPosition = targetPos;
        }

        public override float CalculateUtilityFor(MapUnit unit)
        {
            return 0f;
        }

        public override AIPlan GeneratePlan(MapUnit unit)
        {
            AIPlan plan = new AIPlan();
            plan.AddStep(AIPlanStep.Move(TargetPosition));
            return plan;
        }

        public override float EstimatedDistanceTo(MapUnit unit)
        {
            return Vector3Int.Distance(unit.gridPosition, TargetPosition);
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
