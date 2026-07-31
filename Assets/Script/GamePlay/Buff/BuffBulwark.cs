using UnityEngine;
using GamePlay.Units;
using Status.state;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Bulwark", menuName = "Buff/坚盾壁垒Buff")]
    public class BuffBulwark : BuffBase
    {
        [Header("防御加成")]
        [SerializeField] private int defBonusPerStack = 1;

        private StatModifier _defMod;

        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "Bulwark";
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);

            if (owner.Character != null && owner.Character.statSystem.DEF != null)
            {
                _defMod = new StatModifier(Stacks * defBonusPerStack, StatModType.Flat, this);
                owner.Character.statSystem.DEF.addModifier(_defMod);
                owner.Character.statSystem.DEF.MarkDirty();
            }
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);

            if (_defMod != null && owner.Character != null && owner.Character.statSystem.DEF != null)
            {
                owner.Character.statSystem.DEF.removeModifier(_defMod);
                owner.Character.statSystem.DEF.MarkDirty();
                _defMod = null;
            }
        }

        public override void OnStacksChanged()
        {
            base.OnStacksChanged();

            if (_defMod != null && Owner != null && Owner.Character != null && Owner.Character.statSystem.DEF != null)
            {
                _defMod.Value = Stacks * defBonusPerStack;
                Owner.Character.statSystem.DEF.MarkDirty();
            }
        }
    }
}
