using Global;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Thorned Armor: reflects 50% of incoming damage back to the attacker.</summary>
    public class RelicThornedArmor : RelicBase
    {
        private const float REFLECT_RATIO = 0.5f;
        private bool _reflecting;

        public override void OnBeHurt(DamageInfo info)
        {
            if (info.sourceUnit == null || info.targetUnit == null) return;
            if (info.sourceUnit == info.targetUnit) return;
            if (_reflecting) return;

            float reflect = info.damage * REFLECT_RATIO;
            if (reflect < 1f) return;

            _reflecting = true;
            try
            {
                info.sourceUnit.TakeDamage(new DamageInfo(reflect, info.targetUnit, info.sourceUnit, DamageType.True, DamageMethod.Normal));
            }
            finally
            {
                _reflecting = false;
            }
        }
    }
}
