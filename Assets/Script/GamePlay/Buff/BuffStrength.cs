using UnityEngine;
using GamePlay.unit;
using Status.state;

namespace GamePlay.buff
{
    [CreateAssetMenu(fileName = "BuffStrength", menuName = "力量 Buff")]
    public class BuffStrength : BuffBase
    {
        private StatModifier _atkMod;

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
            
            if (owner.Character != null && owner.Character.statSystem.ATK != null)
            {
                float baseATK = owner.Character.statSystem.ATK.baseValue;
                _atkMod = new StatModifier(baseATK * Stacks, StatModType.Flat, this);
                owner.Character.statSystem.ATK.addModifier(_atkMod);
                owner.Character.statSystem.ATK.MarkDirty();
            }
        }

        public override void OnRepeatedlyObtain()
        {
            base.OnRepeatedlyObtain();
            
            if (_atkMod != null && Owner.Character != null && Owner.Character.statSystem.ATK != null)
            {
                float baseATK = Owner.Character.statSystem.ATK.baseValue;
                _atkMod.Value = baseATK * Stacks;
                Owner.Character.statSystem.ATK.MarkDirty();
            }
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);
            
            if (_atkMod != null && owner.Character != null && owner.Character.statSystem.ATK != null)
            {
                owner.Character.statSystem.ATK.removeModifier(_atkMod);
                owner.Character.statSystem.ATK.MarkDirty();
                _atkMod = null;
            }
        }
    }
}
