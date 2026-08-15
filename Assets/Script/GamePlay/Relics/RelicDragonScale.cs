using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Dragon Scale: all damage taken by allies is reduced by 30%.</summary>
    public class RelicDragonScale : RelicBase
    {
        private const float INCOMING_FACTOR = 0.7f;

        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            damage *= INCOMING_FACTOR;
        }
    }
}
