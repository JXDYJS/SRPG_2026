using UnityEngine;
using Global;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Buff
{
    [CreateAssetMenu(fileName = "Retribution", menuName = "Buff/惩戒Buff")]
    public class BuffRetribution : BuffBase
    {
        [Header("反伤配置")]
        [SerializeField] private int reflectDamagePerStack = 1;

        private static bool _isReflecting = false;

        private void OnEnable()
        {
            if (string.IsNullOrEmpty(Name)) Name = "Retribution";
            if (string.IsNullOrEmpty(Description)) Description = "Reflect {Stacks} damage back to attackers.";
            MaxStacks = 999;
            AIValue = 0.05f;
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
            //Debug.Log($"{owner.GetUnitName()} 获得惩戒 Buff，当前层数: {Stacks}");
        }

        public override void OnBeHurt(DamageInfo damageInfo)
        {
            if (_isReflecting) return;
            if (damageInfo.sourceUnit == null || damageInfo.sourceUnit == Owner) return;

            int reflectDamage = Stacks * reflectDamagePerStack;
            if (reflectDamage <= 0) return;

            _isReflecting = true;
            DamageInfo reflectInfo = new DamageInfo(reflectDamage, Owner, damageInfo.sourceUnit, DamageType.True, DamageMethod.Normal);
            damageInfo.sourceUnit.TakeDamage(reflectInfo);
            _isReflecting = false;

            //Debug.Log($"{Owner.name} 的惩戒反弹 {reflectDamage} 点真实伤害给 {damageInfo.sourceUnit.name}");
        }
    }
}
