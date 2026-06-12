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
    /// 伤害记录结构体，用于记录单次伤害或治疗
    /// </summary>
    public struct DamageRecord
    {
        /// <summary>
        /// 伤害或治疗的具体数值，正数代表伤害，负数代表治疗
        /// </summary>
        public int Value;
        
        /// <summary>
        /// 伤害类型
        /// </summary>
        public DamageType DamageType;
        
        /// <summary>
        /// 是否暴击
        /// </summary>
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
        /// 伤害记录列表，支持多段伤害/治疗
        /// </summary>
        public List<DamageRecord> DamageRecords;

        public TargetResult(MapUnit target)
        {
            this.Target = target;
            this.AppliedBuffs = new List<BuffApplyInfo>();
            this.DamageRecords = new List<DamageRecord>();
        }

        /// <summary>
        /// 获取总伤害值（正数）或总治疗量（负数）
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

        /// <summary>
        /// 检查是否有任何伤害记录
        /// </summary>
        public bool HasDamageRecords => DamageRecords != null && DamageRecords.Count > 0;
    }
}