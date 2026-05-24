using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Berserk", menuName = "Buff/狂暴Buff")]
    public class BuffBerserk : BuffBase
    {
        [Header("狂暴配置")]
        [SerializeField] private float damageMultiplierPerStack = 0.15f;
        [SerializeField] private float hpThreshold = 0.5f;

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
                float multiplier = 1.0f + Stacks * damageMultiplierPerStack;
                damage *= multiplier;

                Debug.Log($"{Owner.name} 的狂暴触发！血量 {hpPercent:P0} ≤ {hpThreshold:P0}，伤害倍率 {multiplier:F2}");
            }
        }
    }
}
