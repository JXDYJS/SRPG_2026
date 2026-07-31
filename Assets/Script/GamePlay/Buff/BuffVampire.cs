using UnityEngine;
using Global;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Vampire", menuName = "Buff/吸血Buff")]
    public class BuffVampire : BuffBase
    {
        [Header("吸血配置")]
        [SerializeField] private int healPerStack = 1;

        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "吸血";
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
        }

        public override void OnHit(DamageInfo damageInfo)
        {
            if (damageInfo.damage <= 0) return;

            int healAmount = Stacks * healPerStack;
            if (healAmount <= 0) return;

            DamageInfo healInfo = new DamageInfo(healAmount, Owner, Owner, DamageType.Heal, DamageMethod.Normal);
            Owner.TakeHeal(healInfo);

            Debug.Log($"{Owner.name} 的吸血回复了 {healAmount} 点生命");
        }
    }
}
