using UnityEngine;

namespace Core.Data
{
    /// <summary>
    /// AI tuning. All action values are normalized against effective HP pool ratios.
    /// </summary>
    public class AIConfigData
    {
        // Threat factor is normalized: clamp01(threat / threatNormalizeBase).
        public readonly float threatNormalizeBase = 50f;

        // Max attack penalty when attacking from a threatFactor-1 tile (0~1).
        public readonly float counterRiskWeight = 0.6f;

        // Cap on movement safety value (as HP pool ratio).
        public readonly float safetyMaxValue = 0.08f;

        // deathRisk = threatFactor * survivalWeight (0~1).
        public readonly float survivalWeight = 0.8f;

        // Cap on value of reducing death risk.
        public readonly float survivalMaxValue = 0.10f;

        // Rescue gains value only when ally death risk exceeds this.
        public readonly float rescueThreatThreshold = 0.5f;

        public readonly float futureDiscount = 0.6f;         // Discount on future movement opportunity value.
        public readonly float advanceBaseValue = 0.06f;      // Base advance value per turn when target is unreachable.
        public readonly float safetyCapRatio = 0.5f;         // Max share of advance value that safety can negate.

        public readonly float allyHealWeight = 0.8f;         // Heal value relative to damage (attack slightly favored).

        // Candidates above (maxScore - categoryBand) are picked by category priority;
        // a lower category must lead by more than categoryBand to override a higher one.
        public readonly float categoryBand = 0.05f;

        public readonly float targetWeightMin = 0.5f;
        public readonly float targetWeightMax = 1.5f;

        public readonly float buffValueDefault = 0.05f;      // Fallback per-stack value for buffs without AIValue.

        public readonly int executeFutureTurns = 3;          // Max turns of future threat removed by executing an enemy.

        public readonly float resourcePenaltyFactor = 0.30f; // Max cost penalty ratio against the MP pool.
        public readonly float resourceMaxMP = 20f;           // Reference MP pool for cost penalty when a unit has no MP.

        public readonly float advanceTargetDistanceNormalize = 20f; // Distance factor normalization base (Manhattan).
        public readonly float advanceTargetDistanceWeight = 0.5f;   // Distance factor weight in advance target scoring.
        public readonly float advancePathProgressWeight = 0.6f;     // Path progress weight in advance landing scoring.

        public readonly float lowHPThreshold = 0.35f;          // Retreat when HP falls below this ratio.
        public readonly float dangerThreatThreshold = 30f;     // Retreat when threat score exceeds this.
        public readonly float threatImprovementRatio = 0.5f;   // New position threat must be < current * this ratio.

        public readonly float healThreshold = 0.7f;            // Don't heal allies above this HP ratio.

        public readonly float focusFirePenaltyPerUnit = 0.15f; // Value decay per extra teammate focusing the same target.
        public readonly float commitmentPenaltyFloor = 0.3f;   // Focus-fire decay floor.

        public readonly float planStepWaitSeconds = 0.5f;       // Wait duration for AIPlanStep.Wait.
        public readonly float moveExecuteDelaySeconds = 0.3f;   // Delay after a move command.
        public readonly float skillExecuteDelaySeconds = 0.5f;  // Delay after a skill command.
    }
}
