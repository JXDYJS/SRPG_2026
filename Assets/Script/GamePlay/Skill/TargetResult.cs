using System.Collections.Generic;
using GamePlay.unit;
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

    public class TargetResult
    {
        public MapUnit Target;
        public int ActualDamage;
        public bool IsDead;
        public bool IsCrit;
        public List<BuffApplyInfo> AppliedBuffs;
        public DamageType DamageType;

        public TargetResult(MapUnit target)
        {
            this.Target = target;
            this.DamageType = DamageType.Physical;
            this.AppliedBuffs = new List<BuffApplyInfo>();
        }
    }
}