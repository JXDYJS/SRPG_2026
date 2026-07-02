using System.Collections.Generic;
using UnityEngine;
using Character;
using GamePlay.Units;
using GamePlay.AI.Tasks;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// 任务竞价系统
    /// 对候选任务池中的每个任务进行综合评分，选出当前单位的最优任务
    ///
    /// 评分公式 (设计文档 7.1):
    ///   finalScore = baseUtility * classWeight * hpModifier * distanceFactor * task.BasePriority
    ///
    /// 所有任务产出的最终分数在同一量纲下，可直接比较
    /// </summary>
    public class TaskBidding
    {
        /// <summary>
        /// 对任务池进行竞价，返回最适合当前单位的任务
        /// </summary>
        public AITask BidForTask(MapUnit unit, List<AITask> taskPool, AITaskContext ctx)
        {
            if (unit == null || taskPool == null || taskPool.Count == 0)
            {
                return null;
            }

            // ─── 单位基础信息 ───
            UnitClassSO unitClass = unit.GetClass();
            float hpFactor = (float)unit.Character.statSystem.currentHP
                           / unit.Character.statSystem.maxHP.getValue();
            float maxReach = ctx.MoveRange;

            AITask bestTask = null;
            float bestScore = float.MinValue;

            Debug.Log($"[AI·竞价] ── {unit.name} ── HP={hpFactor:P0} | Move={maxReach} | Pos=({unit.gridPosition.x},{unit.gridPosition.y},{unit.gridPosition.z}) ──────────");

            int idx = 0;
            foreach (AITask task in taskPool)
            {
                if (task == null)
                {
                    continue;
                }

                string taskDesc = GetTaskDescription(task);

                // 1. 任务已不可用——跳过
                if (!task.IsAvailable)
                {
                    Debug.Log($"[AI·竞价]   [{idx}] {taskDesc,-40} | (UNAVAILABLE)");
                    idx++;
                    continue;
                }

                // 2. 基础效用 (0~1，各任务统一量纲)
                float baseUtility = task.CalculateUtilityFor(unit, ctx);
                if (baseUtility <= 0f)
                {
                    Debug.Log($"[AI·竞价]   [{idx}] {taskDesc,-40} | baseU=0.000 (SKIPPED)");
                    idx++;
                    continue;
                }

                // 3. 职业权重 (0.1 ~ 3.0)
                float classWeight = ClassTaskWeightCalculator.GetTaskWeight(unitClass, task.TaskType);

                // 4. HP 修正
                float hpModifier = GetHPModifier(task.TaskType, hpFactor);

                // 5. 距离衰减
                float distance = task.EstimatedDistanceTo(unit);
                float distanceFactor = 1f;
                if (maxReach > 0f && distance < float.MaxValue)
                {
                    distanceFactor = 1f - (distance / (maxReach * 2f));
                    distanceFactor = Mathf.Clamp(distanceFactor, 0.1f, 1f);
                }

                // 6. 挤占系数：已有人认领同一目标时降低效用
                float crewFactor = 1f;
                if (task.TargetUnit != null && SharedTaskBoard.Instance != null)
                {
                    crewFactor = SharedTaskBoard.Instance.GetCrewFactor(task.TargetUnit, task.TaskType);
                }

                // 6.5 过杀惩罚：目标已有足够承诺伤害时阻止更多人攻击
                float overkillPenalty = 1f;
                if (task.TargetUnit != null && SharedTaskBoard.Instance != null)
                {
                    overkillPenalty = SharedTaskBoard.Instance.GetOverkillPenalty(task.TargetUnit);
                }

                // 7. 综合评分
                float finalScore = baseUtility * classWeight * hpModifier * distanceFactor * task.BasePriority * crewFactor * overkillPenalty;

                Debug.Log($"[AI·竞价]   [{idx}] {taskDesc,-40} | baseU={baseUtility:F3} | clsW={classWeight:F2} | hpM={hpModifier:F2} | distF={distanceFactor:F2} | crewF={crewFactor:F2} | overkill={overkillPenalty:F2} | prio={task.BasePriority:F2} | → {finalScore:F4}");

                if (finalScore > bestScore)
                {
                    bestScore = finalScore;
                    bestTask = task;
                }

                idx++;
            }

            // 7. 竞标成功——接取任务
            if (bestTask != null)
            {
                bestTask.Claim(unit);
                Debug.Log($"[AI·竞价]   ★ WINNER: {GetTaskDescription(bestTask)}  (score={bestScore:F4})");
            }
            else
            {
                Debug.Log($"[AI·竞价]   ★ NO WINNER — all tasks skipped");
            }
            Debug.Log($"[AI·竞价] ──────────────────────────────────────────────");

            return bestTask;
        }

        /// <summary>
        /// HP 修正因子
        /// - Defend/Support: HP越低权重越高 (促进自保/治疗)
        /// - Attack: HP越低权重越低 (降低冒进风险)
        /// - 其他: 不受影响
        /// </summary>
        private float GetHPModifier(AITaskType taskType, float hpFactor)
        {
            switch (taskType)
            {
                case AITaskType.Defend:
                case AITaskType.Support:
                    return 1f + (1f - hpFactor); // 0~HP: 满血1.0，残血接近2.0

                case AITaskType.Attack:
                    return hpFactor; // 满血1.0，残血接近0

                case AITaskType.Skill:
                    return hpFactor;
                default:
                    return 1f;
            }
        }

        private static string GetTaskDescription(AITask task)
        {
            switch (task.TaskType)
            {
                case AITaskType.Attack:
                    return $"Attack → {task.TargetUnit?.name ?? "???"}";
                case AITaskType.Support:
                    {
                        var st = task as SupportTask;
                        return $"Support → {st?.Skill?.SkillName ?? "?"} → {task.TargetUnit?.name ?? "???"}";
                    }
                case AITaskType.Skill:
                    {
                        var sk = task as SkillTask;
                        return $"Skill  → {sk?.Skill?.SkillName ?? "?"} → {task.TargetUnit?.name ?? "???"}";
                    }
                case AITaskType.Move:
                    {
                        var mt = task as MoveTask;
                        var pos = mt?.TargetPosition ?? Vector3Int.zero;
                        return $"Move   → ({pos.x},{pos.z})";
                    }
                case AITaskType.Defend:
                    {
                        var dt = task as DefendTask;
                        var pos = dt?.SafePosition ?? Vector3Int.zero;
                        return $"Defend → ({pos.x},{pos.z})";
                    }
                case AITaskType.Wait:
                    return "Wait";
                default:
                    return task.TaskType.ToString();
            }
        }
    }
}
