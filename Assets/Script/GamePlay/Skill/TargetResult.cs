using System.Collections.Generic;
using GamePlay.unit;
using Global;

namespace GamePlay.Skill
{
    public class TargetResult
    {
        public MapUnit Target;
        public int ActualDamage;
        public bool IsDead;
        public bool IsCrit;
        public List<string> AppliedBuffs;
        public DamageType DamageType;

        public TargetResult(MapUnit target)
        {
            this.Target = target;
            this.DamageType = DamageType.Physical;
            this.AppliedBuffs = new List<string>();
        }
    }
}
