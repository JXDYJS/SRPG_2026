using Global;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Blaze Core: fire damage dealt by allies is increased by 50%.</summary>
    public class RelicBlazeCore : RelicBase
    {
        private const float FIRE_BONUS = 1.5f;

        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            if (info.damageType == DamageType.Fire)
            {
                damage *= FIRE_BONUS;
            }
        }
    }
}
