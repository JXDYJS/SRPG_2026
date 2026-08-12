using System.Collections.Generic;
using UnityEngine;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// 决策选择器 — 类别偏好 + 容忍带，替代旧的全局乘法打分（TaskBidding + ClassTaskWeight）。
    ///
    /// 规则：先找全局最高分；在"最高分 − 容忍带"窗口内的候选按类别优先级选（进攻优先）；
    /// 若低类别动作的分值显著高于高类别（差值超过容忍带），则低类别逆袭。
    ///
    /// 好处：跨类别的可比较性不依赖脆弱的系数校准，同类内分值仍完全可比。
    /// </summary>
    public class AIDecisionSelector
    {
        public AIAction Select(List<AIAction> candidates)
        {
            if (candidates == null || candidates.Count == 0) return null;

            // 1. 全局最高分
            float maxScore = float.MinValue;
            foreach (AIAction a in candidates)
            {
                if (a == null || a.Score <= 0f) continue;
                if (a.Score > maxScore) maxScore = a.Score;
            }
            if (maxScore <= 0f) return null;

            // 2. 容忍带窗口下限
            float floor = maxScore - Data.Config.AIConfig.categoryBand;

            // 3. 窗口内：类别优先级优先，同级取分数最高
            AIAction best = null;
            foreach (AIAction a in candidates)
            {
                if (a == null || a.Score <= 0f) continue;
                if (a.Score < floor) continue;
                if (best == null
                    || a.Category > best.Category
                    || (a.Category == best.Category && a.Score > best.Score))
                {
                    best = a;
                }
            }
            return best;
        }
    }
}
