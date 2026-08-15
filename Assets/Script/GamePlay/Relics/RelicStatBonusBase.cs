using System.Collections.Generic;
using GamePlay.Units;
using Status.state;

namespace GamePlay.Relics
{
    /// <summary>
    /// Base for flat stat-bonus relics: adds one StatModifier per unit on apply
    /// and removes it on unapply. The relic instance is shared across units, so
    /// per-unit modifiers are tracked in a dictionary.
    /// </summary>
    public abstract class RelicStatBonusBase : RelicBase
    {
        private readonly Dictionary<MapUnit, StatModifier> _mods = new Dictionary<MapUnit, StatModifier>();

        /// <summary>Flat value added to the target stat.</summary>
        protected abstract float BonusValue { get; }

        /// <summary>Resolves the stat this relic modifies for the given unit.</summary>
        protected abstract Stat TargetStat(MapUnit owner);

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            if (owner.Character == null) return;
            if (_mods.ContainsKey(owner)) return;

            Stat stat = TargetStat(owner);
            if (stat == null) return;

            var mod = new StatModifier(BonusValue, StatModType.Flat, this);
            _mods[owner] = mod;
            stat.addModifier(mod);
            stat.MarkDirty();
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);
            if (owner.Character == null) return;
            if (!_mods.TryGetValue(owner, out var mod)) return;

            Stat stat = TargetStat(owner);
            if (stat != null)
            {
                stat.removeModifier(mod);
                stat.MarkDirty();
            }
            _mods.Remove(owner);
        }
    }
}

