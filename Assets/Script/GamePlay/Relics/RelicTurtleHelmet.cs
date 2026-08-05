using UnityEngine;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>
    /// Iron Shield 铁盾牌 — 被动：受到的伤害 -2。
    /// </summary>
    public class RelicIronShield : RelicBase
    {
        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            damage = Mathf.Max(0, damage - 2);
        }
    }
}
