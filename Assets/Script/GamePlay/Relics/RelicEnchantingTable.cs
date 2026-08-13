using System.Collections.Generic;
using GamePlay.Units;
using Status.state;

namespace GamePlay.Relics
{
    /// <summary>Passive: +1 ATK for the whole team. Tracks one modifier per unit since relics are shared.</summary>
    public class RelicEnchantingTable : RelicBase
    {
        private readonly Dictionary<MapUnit, StatModifier> _atkMods = new Dictionary<MapUnit, StatModifier>();

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            if (owner.Character == null || owner.Character.statSystem.ATK == null) return;
            if (_atkMods.ContainsKey(owner)) return;

            var mod = new StatModifier(1, StatModType.Flat, this);
            _atkMods[owner] = mod;
            owner.Character.statSystem.ATK.addModifier(mod);
            owner.Character.statSystem.ATK.MarkDirty();
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);
            if (owner.Character == null || owner.Character.statSystem.ATK == null) return;
            if (_atkMods.TryGetValue(owner, out var mod))
            {
                owner.Character.statSystem.ATK.removeModifier(mod);
                owner.Character.statSystem.ATK.MarkDirty();
                _atkMods.Remove(owner);
            }
        }
    }
}
