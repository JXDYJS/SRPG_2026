using System.Collections.Generic;
using GamePlay.Units;
using Global;

namespace GamePlay.Skill
{
    public class BuffApplyInfo
    {
        public string BuffID;
        public int Stacks;

        public BuffApplyInfo(string buffID, int stacks)
        {
            this.BuffID = buffID;
            this.Stacks = stacks;
        }
    }

    /// <summary>
    /// Record of a single damage or heal instance
    /// </summary>
    public struct DamageRecord
    {
        /// <summary>
        /// Positive for damage, negative for heal
        /// </summary>
        public int Value;
        
        public DamageType DamageType;
        
        public bool IsCrit;

        public DamageRecord(int value, DamageType damageType, bool isCrit)
        {
            Value = value;
            DamageType = damageType;
            IsCrit = isCrit;
        }
    }

    public class TargetResult
    {
        public MapUnit Target;
        public bool IsDead;
        public List<BuffApplyInfo> AppliedBuffs;
        
        /// <summary>
        /// Damage records, supporting multi-hit damage/heal
        /// </summary>
        public List<DamageRecord> DamageRecords;

        public TargetResult(MapUnit target)
        {
            this.Target = target;
            this.AppliedBuffs = new List<BuffApplyInfo>();
            this.DamageRecords = new List<DamageRecord>();
        }

        /// <summary>
        /// Total damage (positive) or heal (negative)
        /// </summary>
        public int GetTotalValue()
        {
            int total = 0;
            foreach (var record in DamageRecords)
            {
                total += record.Value;
            }
            return total;
        }

        public bool HasDamageRecords => DamageRecords != null && DamageRecords.Count > 0;
    }
}