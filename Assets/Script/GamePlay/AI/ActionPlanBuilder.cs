using UnityEngine;
using GamePlay.Units;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// 统一计划构建器 — 从 AIAction 生成可执行 AIPlan。
    /// 移动进施放位置 → 释放技能；纯走位只移动；否则待机。
    /// 替代旧的 6×AITask.GeneratePlan。
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

            // 1. 移动（施放位置 / 走位落点）
            if (action.TargetPos.HasValue
                && unit.CanMove
                && action.TargetPos.Value != unit.gridPosition)
            {
                plan.AddStep(AIPlanStep.Move(action.TargetPos.Value));
            }

            // 2. 释放技能
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

            // 3. 兜底待机
            if (plan.Steps.Count == 0)
            {
                plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
            }

            return plan;
        }
    }
}
