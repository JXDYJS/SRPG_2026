using UnityEngine;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Passive: reduces incoming damage by 2.</summary>
    public class RelicTurtleHelmet : RelicBase
    {
        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            damage = Mathf.Max(0, damage - 2);
        }
    }
}
