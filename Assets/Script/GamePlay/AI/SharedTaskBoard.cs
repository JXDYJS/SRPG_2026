using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>Cross-unit coordination; currently only tracks focus-fire commitments.</summary>
    public class SharedTaskBoard : MonoBehaviour
    {
        public static SharedTaskBoard Instance { get; private set; }

        /// <summary>unit -> its current planned attack targets; rebuilt each AI turn.</summary>
        private Dictionary<MapUnit, List<MapUnit>> _unitCommitments = new();

        public void Awake()
        {
            if (Instance != null) return;
            Instance = this;
        }

        /// <summary>Replace a unit's commitment targets; an empty list clears the entry.</summary>
        public void UpdateUnitCommitments(MapUnit unit, List<MapUnit> targets)
        {
            if (unit == null) return;
            if (targets == null || targets.Count == 0)
            {
                _unitCommitments.Remove(unit);
            }
            else
            {
                _unitCommitments[unit] = targets;
            }
        }

        /// <summary>Focus-fire decay (0~1) based on how many other units share the same target.</summary>
        public float GetCommitmentFactor(MapUnit actingUnit, MapUnit target)
        {
            if (target == null)
            {
                return 1f;
            }

            int count = 0;
            List<MapUnit> deadUnits = null;
            foreach (var kv in _unitCommitments)
            {
                MapUnit unit = kv.Key;
                if (unit == null || !unit.IsAlive)
                {
                    (deadUnits ??= new List<MapUnit>()).Add(unit);
                    continue;
                }
                if (unit == actingUnit)
                {
                    continue;
                }
                if (kv.Value == null || !kv.Value.Contains(target))
                {
                    continue;
                }
                count++;
            }

            if (deadUnits != null)
            {
                foreach (MapUnit dead in deadUnits)
                {
                    _unitCommitments.Remove(dead);
                }
            }

            float penalty = count * Data.Config.AIConfig.focusFirePenaltyPerUnit;
            return Mathf.Max(Data.Config.AIConfig.commitmentPenaltyFloor, 1f - penalty);
        }
    }
}
