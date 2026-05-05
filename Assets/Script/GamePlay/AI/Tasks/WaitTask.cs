using GamePlay.Units;

namespace GamePlay.AI.Tasks
{
    public class WaitTask : AITask
    {
        public WaitTask(float basePriority) : base(AITaskType.Wait, basePriority) { }

        public override float CalculateUtilityFor(MapUnit unit)
        {
            return 0.1f;
        }

        public override AIPlan GeneratePlan(MapUnit unit)
        {
            AIPlan plan = new AIPlan();
            plan.AddStep(AIPlanStep.Wait(0.5f));
            return plan;
        }

        public override float EstimatedDistanceTo(MapUnit unit)
        {
            return 0f;
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
