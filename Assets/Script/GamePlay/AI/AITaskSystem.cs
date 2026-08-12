using UnityEngine;
using System.Collections;
using System.Collections.Generic;
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
    ///   1. 等待威胁图重建完成
    ///   2. 构建 AITaskContext（可达格 + 血池 + 前瞻机会预计算）
    ///   3. AIDirector 生成候选行动池
    ///   4. AIDecisionSelector 按类别偏好 + 容忍带选出最优行动
    ///   5. 更新集火承诺
    ///   6. ActionPlanBuilder 生成执行计划
    ///   7. AITaskExecutor 执行计划
    ///   8. 结束回合
    /// </summary>
    public class AITaskSystem : MonoBehaviour
    {
        public static AITaskSystem Instance { get; private set; }

        private AIDirector _director;
        private AIDecisionSelector _selector;
        private ActionPlanBuilder _planBuilder;
        private AITaskExecutor _executor;

        void Awake()
        {
            Instance = this;
            _director = new AIDirector();
            _selector = new AIDecisionSelector();
            _planBuilder = new ActionPlanBuilder();
            _executor = new AITaskExecutor();
        }

        /// <summary>
        /// 启动敌方单位的 AI 回合
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
            Debug.Log($"[AITaskSystem] {unit.name} 开始 AI 回合");

            // ─── 0. 前置检查 ───
            if (unit == null || !unit.IsAlive)
            {
                Debug.LogWarning($"[AITaskSystem] {unit?.name ?? "null"} 已阵亡，跳过 AI 回合");
                TurnManager.Instance.EndCurrentUnitTurn();
                yield break;
            }

            // ─── 1. 等待威胁图重建完成 ───
            yield return WaitForThreatMapReady();

            // ─── 2. 决策阶段（纯计算，无 yield，可安全 try/catch）───
            // 防御性包裹：任何未预期异常都不得卡死回合（softlock），记日志后兜底待机。
            AIAction best = null;
            AIPlan plan = null;
            try
            {
                // 预计算上下文
                AITaskContext ctx = new AITaskContext(unit);

                // 生成候选行动池
                List<AIAction> candidates = _director.GenerateCandidateActions(unit, ctx);

                // 选择最优行动
                best = _selector.Select(candidates);
                if (best != null)
                {
                    Debug.Log($"[AITaskSystem] {unit.name} 选择: {best.Category} score={best.Score:F4}" +
                              (best.HasSkill ? $" 技能={best.Skill.SkillName} 目标={best.TargetUnit.name}" : ""));

                    // 更新集火承诺
                    if (SharedTaskBoard.Instance != null)
                    {
                        SharedTaskBoard.Instance.UpdateUnitCommitments(unit, ExtractCommitTargets(best));
                    }

                    // 生成执行计划
                    plan = _planBuilder.Build(unit, best, ctx);
                }
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[AITaskSystem] {unit.name} AI 决策异常，已兜底待机: {e}");
                best = null;
            }

            // ─── 3. 执行阶段 ───
            if (best == null || plan == null)
            {
                Debug.Log($"[AITaskSystem] {unit.name} 无可用行动，待机");
                yield return new WaitForSeconds(Data.Config.AIConfig.planStepWaitSeconds);
            }
            else
            {
                yield return _executor.ExecutePlan(unit, plan);
            }

            // ─── 4. 结束回合 ───
            TurnManager.Instance.EndCurrentUnitTurn();
        }

        /// <summary>
        /// 等待后台威胁图重建完成（未启动则同步重建，未完成则带超时等待）
        /// </summary>
        private IEnumerator WaitForThreatMapReady()
        {
            TacticalMapManager tmm = TacticalMapManager.Instance;
            if (tmm == null)
            {
                yield break;
            }

            if (tmm.TotalRebuildCount == 0)
            {
                // 后台从未启动（如战斗开始第一个就是敌人），同步重建
                Debug.Log("[威胁图] 后台从未启动，同步重建");
                tmm.RebuildThreatMapSnapshot();
            }
            else if (!tmm.IsRebuildComplete)
            {
                float deadline = Time.realtimeSinceStartup + 0.5f;
                while (!tmm.IsRebuildComplete && Time.realtimeSinceStartup <= deadline)
                {
                    yield return null;
                }
                tmm.CompleteIncrementalRebuild();
            }
        }

        /// <summary>
        /// 从选定行动提取集火承诺目标列表。
        /// 进攻/斩杀行动承诺其目标；治疗/增益/走位/待机不承诺（避免集火衰减误伤）。
        /// </summary>
        private static List<MapUnit> ExtractCommitTargets(AIAction action)
        {
            if (action == null || action.TargetUnit == null)
            {
                return null;
            }

            if (action.Category == AICategory.Damage || action.Category == AICategory.Execute)
            {
                return new List<MapUnit> { action.TargetUnit };
            }
            return null;
        }
    }
}
