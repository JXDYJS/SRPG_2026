using UnityEngine;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>
    /// Turtle Helmet 海龟壳帽 — 被动：受到的伤害 -2。
    /// </summary>
    public class RelicTurtleHelmet : RelicBase
    {
        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            damage = Mathf.Max(0, damage - 2);
        }
    }
}
