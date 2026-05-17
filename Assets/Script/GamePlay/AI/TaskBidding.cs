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
        public AITask BidForTask(MapUnit unit, List<AITask> taskPool)
        {
            if (unit == null || taskPool == null || taskPool.Count == 0)
            {
                return null;
            }

            // ─── 单位基础信息 ───
            UnitClassSO unitClass = unit.GetClass();
            float hpFactor = (float)unit.Character.statSystem.currentHP
                           / unit.Character.statSystem.maxHP.getValue();
            float maxReach = unit.Character.statSystem.moveRange.getValue();

            AITask bestTask = null;
            float bestScore = float.MinValue;

            foreach (AITask task in taskPool)
            {
                if (task == null)
                {
                    continue;
                }

                // 1. 任务已不可用——跳过
                if (!task.IsAvailable)
                {
                    continue;
                }

                // 2. 基础效用 (0~1，各任务统一量纲)
                float baseUtility = task.CalculateUtilityFor(unit);
                if (baseUtility <= 0f)
                {
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

                // 6. 综合评分
                float finalScore = baseUtility * classWeight * hpModifier * distanceFactor * task.BasePriority;

                if (finalScore > bestScore)
                {
                    bestScore = finalScore;
                    bestTask = task;
                }
            }

            // 7. 竞标成功——接取任务
            if (bestTask != null)
            {
                bestTask.Claim(unit);
            }

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

                default:
                    return 1f;
            }
        }
    }
}
