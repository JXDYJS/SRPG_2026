using Global;
using Status.damage;
using UnityEngine;

namespace GamePlay.Relics
{
    /// <summary>Vampire Fang: heal 30% of the damage you deal.</summary>
    public class RelicVampireFang : RelicBase
    {
        private const float LIFESTEAL_RATIO = 0.3f;

        public override void OnHit(DamageInfo info)
        {
            if (info.sourceUnit == null || !info.sourceUnit.IsAlive) return;
            if (info.damage <= 0) return;

            float heal = info.damage * LIFESTEAL_RATIO;
            if (heal < 1f) return;

            info.sourceUnit.TakeHeal(new DamageInfo(heal, info.sourceUnit, info.sourceUnit, DamageType.Heal, DamageMethod.Normal));
        }
    }
}
