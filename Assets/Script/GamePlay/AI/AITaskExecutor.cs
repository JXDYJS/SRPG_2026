using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Command;
using Global;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>Executes each step of an AIPlan; driven by AITaskSystem's coroutine.</summary>
    public class AITaskExecutor
    {
        private bool _planAborted;

        /// <summary>Runs plan steps in order; aborts if the unit dies or a condition fails.</summary>
        public IEnumerator ExecutePlan(MapUnit unit, AIPlan plan)
        {
            _planAborted = false;

            if (unit == null || plan == null || plan.Steps == null)
            {
                yield break;
            }

            Debug.Log($"[AI] {UnitName(unit)} 开始执行计划，共 {plan.Steps.Count} 步");

            for (int i = 0; i < plan.Steps.Count; i++)
            {
                plan.CurrentStepIndex = i;
                AIPlanStep step = plan.Steps[i];

                if (unit == null || !unit.IsAlive)
                {
                    Debug.Log($"[AI] {UnitName(unit)} 在执行计划中阵亡，中断执行");
                    yield break;
                }

                float stepStart = Time.realtimeSinceStartup;
                yield return ExecuteStep(unit, step);

                // Unit may be destroyed while a step is suspended (battle teardown,
                // CleanupLevel); Unity's == catches it, so re-check before touching it.
                if (unit == null || !unit.IsAlive)
                {
                    Debug.Log($"[AI] {UnitName(unit)} 步骤执行期间失效，中断计划");
                    yield break;
                }

                float stepElapsed = (Time.realtimeSinceStartup - stepStart) * 1000f;
                if (stepElapsed > 3000f)
                {
                    Debug.LogError($"[AI·异常] {UnitName(unit)} 步骤[{i}]{step.Type} 执行耗时 {stepElapsed:F0}ms，超过 3s 阈值！");
                }

                if (_planAborted)
                {
                    Debug.Log($"[AI] {UnitName(unit)} 条件评估失败，中止计划");
                    yield break;
                }
            }

            Debug.Log($"[AI] {UnitName(unit)} 计划执行完毕");
        }

        /// <summary>Safe name for logs; destroyed Unity objects throw on .name directly.</summary>
        private static string UnitName(MapUnit unit)
        {
            return unit == null ? "null" : unit.name;
        }

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
                    if (!EvaluateCondition(unit, step))
                    {
                        _planAborted = true;
                    }
                    break;
            }
        }

        private IEnumerator ExecuteMove(MapUnit unit, AIPlanStep step)
        {
            if (!unit.CanMove)
            {
                Debug.Log($"[AI] {UnitName(unit)} 无法移动（已移动或无行动点），跳过");
                yield break;
            }

            List<Vector3Int> path = AStar.FindPath(
                unit.gridPosition, step.MoveTarget,
                MapManager.Instance.logicalGrid, unit.moveStats);

            if (path == null || path.Count == 0)
            {
                Debug.LogWarning($"[AI] {UnitName(unit)} 找不到路径到 {step.MoveTarget}");
                yield break;
            }

            MoveCommand moveCmd = new MoveCommand(unit, path);
            yield return Tool.WaitUntilCommandFinish(moveCmd);
            yield return new WaitForSeconds(Data.Config.AIConfig.moveExecuteDelaySeconds);
        }

        private IEnumerator ExecuteSkill(MapUnit unit, AIPlanStep step)
        {
            if (!unit.CanAction)
            {
                Debug.Log($"[AI] {UnitName(unit)} 无行动点，跳过技能");
                yield break;
            }

            if (step.SkillData.Cost > 0 && !unit.Character.HasEnoughMP(step.SkillData.Cost))
            {
                Debug.LogWarning($"[AI] {UnitName(unit)} MP不足无法释放 {step.SkillData.SkillName}，需要 {step.SkillData.Cost}，当前 {unit.Character.MP}");
                yield break;
            }

            SkillTargetContext context = new SkillTargetContext(
                step.SkillTarget.gridPosition,
                new List<MapUnit> { step.SkillTarget }
            );

            SkillCommand skillCmd = new SkillCommand(unit, step.SkillData, context);
            yield return Tool.WaitUntilCommandFinish(skillCmd);
            yield return new WaitForSeconds(Data.Config.AIConfig.skillExecuteDelaySeconds);
        }

        private bool EvaluateCondition(MapUnit unit, AIPlanStep step)
        {
            return true;
        }
    }
}
