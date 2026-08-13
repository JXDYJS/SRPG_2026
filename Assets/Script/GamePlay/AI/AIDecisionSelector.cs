using System.Collections.Generic;
using UnityEngine;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// Picks the top-scoring action; candidates within (maxScore - categoryBand) are chosen by
    /// category priority (attack first). A lower category must lead by more than the band to win.
    /// </summary>
    public class AIDecisionSelector
    {
        public AIAction Select(List<AIAction> candidates)
        {
            if (candidates == null || candidates.Count == 0) return null;

            float maxScore = float.MinValue;
            foreach (AIAction a in candidates)
            {
                if (a == null || a.Score <= 0f) continue;
                if (a.Score > maxScore) maxScore = a.Score;
            }
            if (maxScore <= 0f) return null;

            float floor = maxScore - Data.Config.AIConfig.categoryBand;

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
