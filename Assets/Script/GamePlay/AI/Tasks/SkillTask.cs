using GamePlay.Skill;
using GamePlay.Units;

namespace GamePlay.AI.Tasks
{
    public class SkillTask : AITask
    {
        public SkillDataSO Skill { get; private set; }
        public MapUnit TargetUnit { get; private set; }

        public SkillTask(SkillDataSO skill, MapUnit target, float basePriority) : base(AITaskType.Skill, basePriority)
        {
            Skill = skill;
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
            return TargetUnit == null || TargetUnit.Character.statSystem.currentHP <= 0;
        }

        public override bool IsFailed()
        {
            return false;
        }
    }
}
