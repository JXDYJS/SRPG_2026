using Global;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Magic Wand: magic damage dealt by allies is increased by 3.</summary>
    public class RelicMagicWand : RelicBase
    {
        private const float MAGIC_BONUS = 3f;

        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            if (info.damageType == DamageType.Magic)
            {
                damage += MAGIC_BONUS;
            }
        }
    }
}
