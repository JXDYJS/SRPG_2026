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
                _atkMod = new StatModifier(Stacks, StatModType.Flat, this);
                owner.Character.statSystem.ATK.addModifier(_atkMod);
                owner.Character.statSystem.ATK.MarkDirty();
            }
        }

        public override void OnRepeatedlyObtain(int amount)
        {
            base.OnRepeatedlyObtain(amount);
            // 层数变化逻辑已由 AddStacks -> OnStacksChanged 处理
        }

        public override void OnStacksChanged()
        {
            base.OnStacksChanged();
            
            // 当层数发生变化时，更新属性修饰器的数值
            if (_atkMod != null && Owner != null && Owner.Character != null && Owner.Character.statSystem.ATK != null)
            {
                _atkMod.Value = Stacks;
                Owner.Character.statSystem.ATK.MarkDirty();
                Debug.Log($"力量 Buff 层数更新: {Stacks}层, 攻击力加成: {Stacks}");
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
