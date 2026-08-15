using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>
    /// Chaos Heart: double all damage dealt and halve all damage taken.
    /// The definition of overkill; just don't ask where it came from.
    /// </summary>
    public class RelicChaosHeart : RelicBase
    {
        private const float OUTGOING_FACTOR = 2f;
        private const float INCOMING_FACTOR = 0.5f;

        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            damage *= OUTGOING_FACTOR;
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            damage *= INCOMING_FACTOR;
        }
    }
}
