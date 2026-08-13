using UnityEngine;
using GamePlay.Units;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// Builds an executable AIPlan from AIAction: move into position, cast skill, or wait.
    /// </summary>
    public class ActionPlanBuilder
    {
        public AIPlan Build(MapUnit unit, AIAction action, AITaskContext ctx)
        {
            AIPlan plan = new AIPlan();

            if (action == null)
            {
                plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
                return plan;
            }

            if (action.TargetPos.HasValue
                && unit.CanMove
                && action.TargetPos.Value != unit.gridPosition)
            {
                plan.AddStep(AIPlanStep.Move(action.TargetPos.Value));
            }

            if (action.HasSkill && unit.CanAction)
            {
                if (action.Skill.Cost > 0
                    && (unit.Character == null || !unit.Character.HasEnoughMP(action.Skill.Cost)))
                {
                    plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
                }
                else
                {
                    plan.AddStep(AIPlanStep.UseSkill(action.Skill, action.TargetUnit));
                }
            }

            if (plan.Steps.Count == 0)
            {
                plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
            }

            return plan;
        }
    }
}
