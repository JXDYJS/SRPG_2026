using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    public class BuffZombieSkin : BuffBase
    {
        [SerializeField] private int damageReduction = 2;

        public BuffZombieSkin()
        {
            MaxStacks = 1;
            DecayAtTurnStart = false;
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
        }

        // 被动技能不掉层，直接跳过基类的 OnTurnStart 防呆
        public override void OnTurnStart(MapUnit owner) { }

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
