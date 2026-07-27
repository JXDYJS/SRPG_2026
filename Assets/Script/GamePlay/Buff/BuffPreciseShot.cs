using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    public class BuffPreciseShot : BuffBase
    {
        [SerializeField] private int minDistance = 2;
        [SerializeField] private int bonusDamage = 2;

        public BuffPreciseShot()
        {
            MaxStacks = 1;
            DecayAtTurnStart = false;
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
        }

        public override void OnOutgoingDamage(ref float damage, DamageInfo damageInfo)
        {
            if (Owner == null || damageInfo.targetUnit == null) return;

            int dist = Mathf.Abs(Owner.gridPosition.x - damageInfo.targetUnit.gridPosition.x)
                     + Mathf.Abs(Owner.gridPosition.z - damageInfo.targetUnit.gridPosition.z);

            if (dist > minDistance)
            {
                damage += Stacks * bonusDamage;
            }
        }
    }
}
