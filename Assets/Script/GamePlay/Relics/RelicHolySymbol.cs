using GamePlay.Units;
using Global;
using Status.damage;
using UnityEngine;

namespace GamePlay.Relics
{
    /// <summary>Holy Symbol: at battle start, heal 10% of max HP.</summary>
    public class RelicHolySymbol : RelicBase
    {
        private const float HEAL_PERCENT = 0.1f;

        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            if (owner.Character == null || !owner.IsAlive) return;

            int heal = Mathf.Max(1, (int)(owner.Character.statSystem.maxHP.getValue() * HEAL_PERCENT));
            owner.TakeHeal(new DamageInfo(heal, owner, owner, DamageType.Heal, DamageMethod.Normal));
        }
    }
}
