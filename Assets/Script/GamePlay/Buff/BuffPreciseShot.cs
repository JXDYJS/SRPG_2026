using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "PreciseShot", menuName = "Buff/精准射击")]
    public class BuffPreciseShot : BuffBase
    {
        [Header("狙击配置")]
        [SerializeField] private int minDistance = 2;
        [SerializeField] private int bonusDamage = 2;

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
            DecayAtTurnStart = false;
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
