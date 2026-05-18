using UnityEngine;
using GamePlay.Skill;
using GamePlay.Units;

namespace GamePlay.AI
{
    public class AIPlanStep
    {
        public enum StepType
        {
            Move,
            UseSkill,
            Wait,
            Evaluate
        }

        public StepType Type { get; set; }
        public Vector3Int MoveTarget { get; set; }
        public SkillDataSO SkillData { get; set; }
        public MapUnit SkillTarget { get; set; }
        public float WaitSeconds { get; set; }

        public AIPlanStep(StepType type)
        {
            Type = type;
        }

        public static AIPlanStep Move(Vector3Int target)
        {
            return new AIPlanStep(StepType.Move) { MoveTarget = target };
        }

        public static AIPlanStep UseSkill(SkillDataSO skill, MapUnit target)
        {
            return new AIPlanStep(StepType.UseSkill) { SkillData = skill, SkillTarget = target };
        }

        public static AIPlanStep Wait(float seconds)
        {
            return new AIPlanStep(StepType.Wait) { WaitSeconds = seconds };
        }

        public static AIPlanStep Evaluate()
        {
            return new AIPlanStep(StepType.Evaluate);
        }
    }
}
