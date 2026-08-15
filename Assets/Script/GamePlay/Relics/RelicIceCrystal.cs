using Global;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Ice Crystal: ice damage dealt by allies is increased by 50%.</summary>
    public class RelicIceCrystal : RelicBase
    {
        private const float ICE_BONUS = 1.5f;

        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            if (info.damageType == DamageType.Ice)
            {
                damage *= ICE_BONUS;
            }
        }
    }
}
