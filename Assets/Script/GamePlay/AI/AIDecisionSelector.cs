using System.Collections.Generic;
using UnityEngine;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// 规则：先找全局最高分；在"最高分 − 容忍带"窗口内的候选按类别优先级选（进攻优先）；
    /// 若低类别动作的分值显著高于高类别（差值超过容忍带），则低类别逆袭。
    /// 已知特性：categoryBand 是绝对值（默认 0.05，约为一次普通攻击的价值量级）。
    /// 队伍规模越大、单次行动分值越小，band 相对越"宽松"（类别偏好越强）。
    /// 这是有意的调参取向——让"能打就打"在队伍变大时更稳健；如需相反倾向可调大 band。
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
