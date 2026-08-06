using GamePlay.Units;
using Global;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>
    /// Cactus 仙人掌 — 被敌人攻击命中时，反弹 2 点伤害给攻击者。
    /// </summary>
    public class RelicCactus : RelicBase
    {
        public override void OnBeHurt(DamageInfo info)
        {
            if (info.sourceUnit == null || info.targetUnit == null) return;
            if (info.sourceUnit == info.targetUnit) return;

            info.sourceUnit.TakeDamage(new DamageInfo(2, info.targetUnit, info.sourceUnit, DamageType.Physical, DamageMethod.Normal));
        }
    }
}
