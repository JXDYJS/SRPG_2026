using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.AI.Tasks;
using GamePlay.Units;
using Managers;
using Grid;
using Core.Data;

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
            float tStart = Time.realtimeSinceStartup;
            Debug.Log($"[AITaskSystem] {unit.name} 开始任务驱动 AI 回合");

            // ─── 0. 前置检查 ───
            if (unit == null || unit.Character == null || unit.Character.statSystem.currentHP <= 0)
            {
                Debug.LogWarning($"[AITaskSystem] {unit?.name ?? "null"} 已阵亡，跳过 AI 回合");
                TurnManager.Instance.EndCurrentUnitTurn();
                yield break;
            }

            // ─── 1. 等待威胁图重建完成 ───
            // TurnManager 的事件已在玩家回合结束时启动后台增量重建（UniTask 分帧）
            // 此处用 WaitUntil 保证重建完成，若动画窗口足够则 0 帧等待；超时则同步补完
            float t1 = Time.realtimeSinceStartup;
            int waitFrames = 0;
            if (TacticalMapManager.Instance != null)
            {
                var tmm = TacticalMapManager.Instance;

                // 先检查：如果后台已完成，跳过 WaitUntil（省 1 帧开销）
                if (!tmm.IsRebuildComplete)
                {
                    int entryBgDone = tmm.BackgroundProcessedCount;
                    int entryTotal = tmm.TotalRebuildCount;
                    Debug.Log($"[威胁图] 进入等待: 后台已处理 {entryBgDone}/{entryTotal}");

                    float deadline = Time.realtimeSinceStartup + 0.5f;
                    float tWaitStart = Time.realtimeSinceStartup;

                    while (!tmm.IsRebuildComplete && Time.realtimeSinceStartup <= deadline)
                    {
                        yield return null;
                        waitFrames++;
                    }

                    float tWaitEnd = Time.realtimeSinceStartup;
                    float tWaitMs = (tWaitEnd - tWaitStart) * 1000f;
                    int afterBgDone = tmm.BackgroundProcessedCount;

                    Debug.Log($"[威胁图] 等待结束: 等了 {waitFrames} 帧 ({tWaitMs:F1}ms), " +
                              $"后台 {entryBgDone}→{afterBgDone}/{entryTotal}");
                }
                else
                {
                    int bgDone = tmm.BackgroundProcessedCount;
                    int total = tmm.TotalRebuildCount;
                    Debug.Log($"[威胁图] 后台已全部完成 ({bgDone}/{total}), 跳过 WaitUntil");
                }

                // 同步补完剩余（通常为空操作）
                float tCompleteStart = Time.realtimeSinceStartup;
                int beforeComplete = tmm.BackgroundProcessedCount;
                tmm.CompleteIncrementalRebuild();
                int afterComplete = tmm.BackgroundProcessedCount;
                float tCompleteMs = (Time.realtimeSinceStartup - tCompleteStart) * 1000f;

                if (afterComplete > beforeComplete)
                {
                    Debug.Log($"[威胁图] 同步补完: {beforeComplete}→{afterComplete} ({tCompleteMs:F1}ms)");
                }
            }
            float tRebuildThreat = (Time.realtimeSinceStartup - t1) * 1000f;

            // ─── 1.5 预计算上下文（AStar 泛洪 + 威胁图引用，后续全阶段复用）───
            float t1_5 = Time.realtimeSinceStartup;
            AITaskContext ctx = new AITaskContext(unit);
            float tContext = (Time.realtimeSinceStartup - t1_5) * 1000f;

            //--新增  重建可打击版
            if (SharedTaskBoard.Instance)
            {
                SharedTaskBoard.Instance.RoundStart();
            }
            else
            {
                Debug.LogError("task board is null");
            }

            // ─── 2. AIDirector 生成候选任务池 ───
            float t2 = Time.realtimeSinceStartup;
            List<AITask> taskPool = _director.GenerateCandidateTasks(unit, ctx);
            float tGenerateTasks = (Time.realtimeSinceStartup - t2) * 1000f;
            Debug.Log($"[AITaskSystem] 生成 {taskPool.Count} 个候选任务");

            // ─── 3. 竞价：选择最优任务 ───
            float t3 = Time.realtimeSinceStartup;
            AITask bestTask = _bidding.BidForTask(unit, taskPool, ctx);
            float tBidding = (Time.realtimeSinceStartup - t3) * 1000f;
            if (bestTask == null)
            {
                Debug.LogWarning($"[AITaskSystem] {unit.name} 没有可选任务，兜底待机");
                yield return new WaitForSeconds(Data.Config.AIConfig.planStepWaitSeconds);
                TurnManager.Instance.EndCurrentUnitTurn();
                yield break;
            }

            Debug.Log($"[AITaskSystem] {unit.name} 选择任务: {bestTask.TaskType} (BasePriority:{bestTask.BasePriority:F2})");

            // ─── 4. 生成执行计划 ───
            float t4 = Time.realtimeSinceStartup;
            AIPlan plan = bestTask.GeneratePlan(unit, ctx);
            float tGenPlan = (Time.realtimeSinceStartup - t4) * 1000f;
            Debug.Log($"[AITaskSystem] 生成计划: {plan.Steps.Count} 步");

            // ─── 性能汇总 ───
            float tTotalPreExec = (Time.realtimeSinceStartup - tStart) * 1000f;
            Debug.Log($"[AITaskSystem·性能] ═══════════════════════════════════");
            Debug.Log($"[AITaskSystem·性能]  威胁图总耗时: {tRebuildThreat:F1} ms (等待{waitFrames}帧)");
            Debug.Log($"[AITaskSystem·性能]  预计算上下文: {tContext:F1} ms");
            Debug.Log($"[AITaskSystem·性能]  生成任务池: {tGenerateTasks:F1} ms ({taskPool.Count}个)");
            Debug.Log($"[AITaskSystem·性能]  任务竞价:   {tBidding:F1} ms");
            Debug.Log($"[AITaskSystem·性能]  生成计划:   {tGenPlan:F1} ms");
            Debug.Log($"[AITaskSystem·性能]  执行前总计: {tTotalPreExec:F1} ms");
            Debug.Log($"[AITaskSystem·性能] ═══════════════════════════════════");

            // ─── 5. 执行计划 ───
            float t5 = Time.realtimeSinceStartup;
            yield return _executor.ExecutePlan(unit, plan);
            float tExecute = (Time.realtimeSinceStartup - t5) * 1000f;
            float tTotal = (Time.realtimeSinceStartup - tStart) * 1000f;
            Debug.Log($"[AITaskSystem·性能]  计划执行:   {tExecute:F1} ms");
            Debug.Log($"[AITaskSystem·性能]  全部合计:   {tTotal:F1} ms");
            if (SharedTaskBoard.Instance != null)
            {
                if (bestTask.TargetUnit != null)
                {
                    float estimatedDamage = 0f;
                    if (bestTask is AttackTask atk)
                    {
                        estimatedDamage = atk.EstimatedDamage;
                    }
                    SharedTaskBoard.Instance.RegisterCommitment(
                        bestTask.TargetUnit, bestTask.TaskType, estimatedDamage);
                }
            }
            else
            {
                Debug.LogError("task board is null");
            }

            // ─── 6. 结束回合 ───
            TurnManager.Instance.EndCurrentUnitTurn();
        }
    }
}
