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
            if (string.IsNullOrEmpty(Name)) Name = "惩戒";
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
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

            Debug.Log($"{Owner.name} 的惩戒反弹 {reflectDamage} 点真实伤害给 {damageInfo.sourceUnit.name}");
        }
    }
}
