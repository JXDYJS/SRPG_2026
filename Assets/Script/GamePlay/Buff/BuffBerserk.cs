using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Berserk", menuName = "Buff/狂暴Buff")]
    public class BuffBerserk : BuffBase
    {
        [Header("狂暴配置")]
        [SerializeField] private int bonusDamagePerStack = 2;
        [SerializeField] private float hpThreshold = 0.5f;

        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "Berserk";
            if (string.IsNullOrEmpty(Description)) Description = "When below 50% HP, deal +{Stacks} bonus damage.";
            AIValue = 0.05f;
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
        }

        public override void OnOutgoingDamage(ref float damage, DamageInfo damageInfo)
        {
            if (Owner?.Character == null) return;

            float currentHP = Owner.Character.statSystem.currentHP;
            float maxHP = Owner.Character.statSystem.maxHP.getValue();
            if (maxHP <= 0) return;

            float hpPercent = currentHP / maxHP;
            if (hpPercent <= hpThreshold)
            {
                int bonus = Stacks * bonusDamagePerStack;
                damage += bonus;

                Debug.Log($"{Owner.name} 的狂暴触发！血量 {hpPercent:P0} ≤ {hpThreshold:P0}，伤害增加 {bonus}");
            }
        }
    }
}
