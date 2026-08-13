using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.Units;
using Managers;
using Grid;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>AI turn orchestrator: threat map, candidates, plan, execution.</summary>
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

            if (unit == null || !unit.IsAlive)
            {
                Debug.LogWarning($"[AITaskSystem] {unit?.name ?? "null"} 已阵亡，跳过 AI 回合");
                TurnManager.Instance.EndCurrentUnitTurn();
                yield break;
            }

            yield return WaitForThreatMapReady();

            // Guard against unexpected exceptions that could softlock the turn.
            AIAction best = null;
            AIPlan plan = null;
            try
            {
                AITaskContext ctx = new AITaskContext(unit);

                List<AIAction> candidates = _director.GenerateCandidateActions(unit, ctx);

                best = _selector.Select(candidates);
                if (best != null)
                {
                    Debug.Log($"[AITaskSystem] {unit.name} 选择: {best.Category} score={best.Score:F4}" +
                              (best.HasSkill ? $" 技能={best.Skill.SkillName} 目标={best.TargetUnit.name}" : ""));

                    if (SharedTaskBoard.Instance != null)
                    {
                        SharedTaskBoard.Instance.UpdateUnitCommitments(unit, ExtractCommitTargets(best));
                    }

                    plan = _planBuilder.Build(unit, best, ctx);
                }
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[AITaskSystem] {unit.name} AI 决策异常，已兜底待机: {e}");
                best = null;
            }

            if (best == null || plan == null)
            {
                Debug.Log($"[AITaskSystem] {unit.name} 无可用行动，待机");
                yield return new WaitForSeconds(Data.Config.AIConfig.planStepWaitSeconds);
            }
            else
            {
                yield return _executor.ExecutePlan(unit, plan);
            }

            TurnManager.Instance.EndCurrentUnitTurn();
        }

        /// <summary>Waits for the threat map rebuild; sync rebuild if never started.</summary>
        private IEnumerator WaitForThreatMapReady()
        {
            TacticalMapManager tmm = TacticalMapManager.Instance;
            if (tmm == null)
            {
                yield break;
            }

            if (tmm.TotalRebuildCount == 0)
            {
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

        /// <summary>Damage/execute actions commit to their target; other actions do not.</summary>
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
