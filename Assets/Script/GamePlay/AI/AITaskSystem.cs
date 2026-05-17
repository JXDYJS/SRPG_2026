using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.AI.Tasks;
using GamePlay.Units;
using Managers;
using Grid;

namespace GamePlay.AI
{
    /// <summary>
    /// AI 任务系统 — 主入口，MonoBehaviour 单例
    ///
    /// 回合流程:
    ///   1. 重建威胁图 (复用现有逻辑)
    ///   2. AIDirector 生成候选任务池
    ///   3. TaskBidding 竞价选出最优任务
    ///   4. 生成执行计划
    ///   5. AITaskExecutor 执行计划
    ///   6. 结束回合
    /// </summary>
    public class AITaskSystem : MonoBehaviour
    {
        public static AITaskSystem Instance { get; private set; }

        private AIDirector _director;
        private TaskBidding _bidding;
        private AITaskExecutor _executor;

        void Awake()
        {
            Instance = this;
            _director = new AIDirector();
            _bidding = new TaskBidding();
            _executor = new AITaskExecutor();
        }

        /// <summary>
        /// 启动敌方单位的 AI 回合
        /// 替代原有的 EnemyAIManager.TakeControl()
        /// </summary>
        public void TakeControl(MapUnit unit)
        {
            if (unit == null)
            {
                Debug.LogError("[AITaskSystem] TakeControl: unit is null");
                return;
            }

            StartCoroutine(ExecuteTurnCoroutine(unit));
        }

        private IEnumerator ExecuteTurnCoroutine(MapUnit unit)
        {
            Debug.Log($"[AITaskSystem] {unit.name} 开始任务驱动 AI 回合");

            // ─── 0. 前置检查 ───
            if (unit == null || unit.Character == null || unit.Character.statSystem.currentHP <= 0)
            {
                Debug.LogWarning($"[AITaskSystem] {unit?.name ?? "null"} 已阵亡，跳过 AI 回合");
                TurnManager.Instance.EndCurrentUnitTurn();
                yield break;
            }

            // ─── 1. 重建威胁图 ───
            if (TacticalMapManager.Instance != null)
            {
                TacticalMapManager.Instance.RebuildThreatMapSnapshot();
            }

            // ─── 2. AIDirector 生成候选任务池 ───
            List<AITask> taskPool = _director.GenerateCandidateTasks(unit);
            Debug.Log($"[AITaskSystem] 生成 {taskPool.Count} 个候选任务");

            // ─── 3. 竞价：选择最优任务 ───
            AITask bestTask = _bidding.BidForTask(unit, taskPool);
            if (bestTask == null)
            {
                Debug.LogWarning($"[AITaskSystem] {unit.name} 没有可选任务，兜底待机");
                yield return new WaitForSeconds(0.5f);
                TurnManager.Instance.EndCurrentUnitTurn();
                yield break;
            }

            Debug.Log($"[AITaskSystem] {unit.name} 选择任务: {bestTask.TaskType} (优先级:{bestTask.BasePriority:F2})");

            // ─── 4. 生成执行计划 ───
            AIPlan plan = bestTask.GeneratePlan(unit);
            Debug.Log($"[AITaskSystem] 生成计划: {plan.Steps.Count} 步");

            // ─── 5. 执行计划 ───
            yield return _executor.ExecutePlan(unit, plan);

            // ─── 6. 结束回合 ───
            TurnManager.Instance.EndCurrentUnitTurn();
        }
    }
}
