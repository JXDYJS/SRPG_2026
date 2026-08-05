using UnityEngine;
using GamePlay.Units;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Vow", menuName = "Buff/不屈誓言Buff")]
    public class BuffVow : BuffBase
    {
        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "Vow";
            if (string.IsNullOrEmpty(Description)) Description = "A solemn vow bound to the wearer. Hidden.";
            MaxStacks = 1;
            DecayAtTurnStart = false;
            canAddStacks = false;
            IsHidden = true;
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
        }
    }
}
