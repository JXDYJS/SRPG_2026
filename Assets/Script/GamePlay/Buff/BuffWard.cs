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
            if (string.IsNullOrEmpty(Name)) Name = "守护";
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
