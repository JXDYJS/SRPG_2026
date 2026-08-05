using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Ward", menuName = "Buff/守护Buff")]
    public class BuffWard : BuffBase
    {
        [Header("减伤配置")]
        [SerializeField] private float damageReductionPerStack = 3f;

        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "Ward";
            if (string.IsNullOrEmpty(Description)) Description = "Reduce incoming damage by {Stacks}. Decays by 1 stack at the start of your turn.";
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo damageInfo)
        {
            float reduction = Stacks * damageReductionPerStack;
            damage = Mathf.Max(0, damage - reduction);
        }
    }
}
