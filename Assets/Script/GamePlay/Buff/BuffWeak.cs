using UnityEngine;
using GamePlay.Units;
using Status.state;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Weak", menuName = "Buff/虚弱Buff")]
    public class BuffWeak : BuffBase
    {
        private StatModifier _atkMod;

        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "Weak";
            if (string.IsNullOrEmpty(Description)) Description = "Reduce ATK by {Stacks}. Decays at the end of your turn.";
            AIValue = 0.06f;
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);

            if (owner.Character != null && owner.Character.statSystem.ATK != null)
            {
                _atkMod = new StatModifier(-Stacks, StatModType.Flat, this);
                owner.Character.statSystem.ATK.addModifier(_atkMod);
                owner.Character.statSystem.ATK.MarkDirty();
            }
        }

        public override void OnTurnStart(MapUnit owner)
        {
            return;
        }

        public bool DecayAtTurnEnd = true;

        public override void OnTurnEnd(MapUnit owner)
        {
            base.OnTurnEnd(owner);
            if (DecayAtTurnEnd)
            {
                RemoveStacks(1);
                Debug.Log($"{Name} 持续时间减少，剩余: {Stacks}");
            }
        }

        public bool canApply = true;

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

        public override void OnStacksChanged()
        {
            base.OnStacksChanged();

            if (_atkMod != null && Owner != null && Owner.Character != null && Owner.Character.statSystem.ATK != null)
            {
                _atkMod.Value = -Stacks;
                Owner.Character.statSystem.ATK.MarkDirty();
                Debug.Log($"虚弱 Buff 层数更新: {Stacks}层, 攻击力减少: {Stacks}");
            }
        }
    }
}