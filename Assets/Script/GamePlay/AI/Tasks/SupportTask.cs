using GamePlay.Units;

namespace GamePlay.AI.Tasks
{
    public class SupportTask : AITask
    {
        public MapUnit TargetUnit { get; private set; }

        public SupportTask(MapUnit target, float basePriority) : base(AITaskType.Support, basePriority)
        {
            TargetUnit = target;
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
            return float.MaxValue;
        }

        public override bool IsCompleted()
        {
            return TargetUnit == null || TargetUnit.Character.statSystem.currentHP >= TargetUnit.Character.statSystem.maxHP.getValue();
        }

        public override bool IsFailed()
        {
            return TargetUnit == null;
        }
    }
}
