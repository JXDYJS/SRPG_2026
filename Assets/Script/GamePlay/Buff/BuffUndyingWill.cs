using UnityEngine;
using GamePlay.Units;
using Status.state;
using Status.damage;
using Global;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "UndyingWill", menuName = "Buff/不屈意志Buff")]
    public class BuffUndyingWill : BuffBase
    {
        [Header("假死配置")]
        [SerializeField] private int atkBonusPerStack = 1;

        private StatModifier _atkMod;

        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "UndyingWill";
            if (string.IsNullOrEmpty(Description)) Description = "Negate all incoming damage. Decays by 1 stack at the start of your turn.";
            AIValue = 0.10f;
            MaxStacks = 3;
            DecayAtTurnStart = true;
            IsHidden = true;
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);

            if (owner.Character != null && owner.Character.statSystem.ATK != null)
            {
                _atkMod = new StatModifier(Stacks * atkBonusPerStack, StatModType.Flat, this);
                owner.Character.statSystem.ATK.addModifier(_atkMod);
                owner.Character.statSystem.ATK.MarkDirty();
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

        public override void OnStacksChanged()
        {
            base.OnStacksChanged();

            if (_atkMod != null && Owner != null && Owner.Character != null && Owner.Character.statSystem.ATK != null)
            {
                _atkMod.Value = Stacks * atkBonusPerStack;
                Owner.Character.statSystem.ATK.MarkDirty();
            }
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            if (info.damageMethod == DamageMethod.ForceKill)
                return;

            damage = 0;
        }
    }
}
