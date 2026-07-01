using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Command;
using Global;

namespace GamePlay.AI
{
    /// <summary>
    /// 任务执行器 — 逐步执行 AIPlan 中的每个步骤
    /// 由 AITaskSystem 的协程中调用
    /// </summary>
    public class AITaskExecutor
    {
        private bool _planAborted;

        /// <summary>
        /// 执行计划，返回协程
        /// 逐步执行 plan.Steps，支持中断（单位阵亡/条件评估失败等）
        /// </summary>
        public IEnumerator ExecutePlan(MapUnit unit, AIPlan plan)
        {
            _planAborted = false;

            if (unit == null || plan == null || plan.Steps == null)
            {
                yield break;
            }

            Debug.Log($"[AI] {unit.name} 开始执行计划，共 {plan.Steps.Count} 步");

            for (int i = 0; i < plan.Steps.Count; i++)
            {
                plan.CurrentStepIndex = i;
                AIPlanStep step = plan.Steps[i];

                // 执行前检查：单位是否还活着
                if (unit == null || unit.Character == null || unit.Character.statSystem.currentHP <= 0)
                {
                    Debug.Log($"[AI] {unit?.name ?? "null"} 在执行计划中阵亡，中断执行");
                    yield break;
                }

                yield return ExecuteStep(unit, step);

                if (_planAborted)
                {
                    Debug.Log($"[AI] {unit.name} 条件评估失败，中止计划");
                    yield break;
                }
            }

            Debug.Log($"[AI] {unit.name} 计划执行完毕");
        }

        // ==============================================================
        // 步骤分发
        // ==============================================================
        private IEnumerator ExecuteStep(MapUnit unit, AIPlanStep step)
        {
            switch (step.Type)
            {
                case AIPlanStep.StepType.Move:
                    yield return ExecuteMove(unit, step);
                    break;

                case AIPlanStep.StepType.UseSkill:
                    yield return ExecuteSkill(unit, step);
                    break;

                case AIPlanStep.StepType.Wait:
                    yield return new WaitForSeconds(step.WaitSeconds);
                    break;

                case AIPlanStep.StepType.Evaluate:
                    // 条件评估步骤：如果条件不满足，中断整个计划
                    if (!EvaluateCondition(unit, step))
                    {
                        _planAborted = true;
                    }
                    break;
            }
        }

        // ==============================================================
        // 移动执行
        // ==============================================================
        private IEnumerator ExecuteMove(MapUnit unit, AIPlanStep step)
        {
            if (!unit.CanMove)
            {
                Debug.Log($"[AI] {unit.name} 无法移动（已移动或无行动点），跳过");
                yield break;
            }

            List<Vector3Int> path = AStar.FindPath(
                unit.gridPosition, step.MoveTarget,
                MapManager.Instance.logicalGrid, unit.moveStats);

            if (path == null || path.Count == 0)
            {
                Debug.LogWarning($"[AI] {unit.name} 找不到路径到 {step.MoveTarget}");
                yield break;
            }

            MoveCommand moveCmd = new MoveCommand(unit, path);
            yield return Tool.WaitUntilCommandFinish(moveCmd);
            yield return new WaitForSeconds(0.3f);
        }

        // ==============================================================
        // 技能执行
        // ==============================================================
        private IEnumerator ExecuteSkill(MapUnit unit, AIPlanStep step)
        {
            if (!unit.CanAction)
            {
                Debug.Log($"[AI] {unit.name} 无行动点，跳过技能");
                yield break;
            }

            if (step.SkillData.Cost > 0 && !unit.Character.HasEnoughMP(step.SkillData.Cost))
            {
                Debug.LogWarning($"[AI] {unit.name} MP不足无法释放 {step.SkillData.SkillName}，需要 {step.SkillData.Cost}，当前 {unit.Character.MP}");
                yield break;
            }

            SkillTargetContext context = new SkillTargetContext(
                step.SkillTarget.gridPosition,
                new List<MapUnit> { step.SkillTarget }
            );

            SkillCommand skillCmd = new SkillCommand(unit, step.SkillData, context);
            yield return Tool.WaitUntilCommandFinish(skillCmd);
            yield return new WaitForSeconds(0.5f);
        }

        // ==============================================================
        // 条件评估 (Evaluate 步骤)
        // ==============================================================
        private bool EvaluateCondition(MapUnit unit, AIPlanStep step)
        {
            // TODO: 后续扩展，当前默认通过
            return true;
        }
    }
}
