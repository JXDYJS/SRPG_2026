using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Berserker Axe: all damage dealt by allies is increased by 40%.</summary>
    public class RelicBerserkerAxe : RelicBase
    {
        private const float OUTGOING_FACTOR = 1.4f;

        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            damage *= OUTGOING_FACTOR;
        }
    }
}
