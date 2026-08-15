using System.Collections.Generic;
using GamePlay.Units;
using Status.state;
using UnityEngine;

namespace GamePlay.Relics
{
    /// <summary>
    /// Golden Apple: at battle start, +10 max HP (and heal 10 HP) for every ally,
    /// reverted at battle end. Shared relic instance tracks per-unit modifiers.
    /// </summary>
    public class RelicGoldenApple : RelicBase
    {
        private const float BONUS_HP = 10f;
        private readonly Dictionary<MapUnit, StatModifier> _hpMods = new Dictionary<MapUnit, StatModifier>();

        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            if (owner.Character == null || _hpMods.ContainsKey(owner)) return;

            var stat = owner.Character.statSystem.maxHP;
            var mod = new StatModifier(BONUS_HP, StatModType.Flat, this);
            _hpMods[owner] = mod;
            stat.addModifier(mod);
            stat.MarkDirty();

            int healed = (int)BONUS_HP;
            owner.Character.statSystem.currentHP = Mathf.Min((int)stat.getValue(), owner.Character.statSystem.currentHP + healed);
        }

        public override void OnBattleEnd(MapUnit owner)
        {
            base.OnBattleEnd(owner);
            if (owner.Character == null) return;
            if (!_hpMods.TryGetValue(owner, out var mod)) return;

            var stat = owner.Character.statSystem.maxHP;
            stat.removeModifier(mod);
            stat.MarkDirty();
            _hpMods.Remove(owner);
        }
    }
}
