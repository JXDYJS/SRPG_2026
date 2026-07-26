using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "ZombieSkin", menuName = "Buff/僵尸皮肤")]
    public class BuffZombieSkin : BuffBase
    {
        [Header("减伤配置")]
        [SerializeField] private int damageReduction = 2;

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
            DecayAtTurnStart = false;
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo damageInfo)
        {
            if (Owner == null) return;

            if (!Owner.hasMoved)
            {
                float reduction = Stacks * damageReduction;
                damage = Mathf.Max(0, damage - reduction);
            }
        }
    }
}
