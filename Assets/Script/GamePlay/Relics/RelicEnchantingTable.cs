using System.Collections.Generic;
using GamePlay.Units;
using Status.state;

namespace GamePlay.Relics
{
    /// <summary>
    /// Enchanting Table 附魔台 — 被动：我方全体攻击力 +1。
    /// 遗物为全局共享实例，需按单位分别记录属性修饰器。
    /// </summary>
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
