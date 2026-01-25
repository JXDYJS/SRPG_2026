using UnityEngine;
using Status.damage; // 引用接口

namespace GamePlay.relics
{
    // 继承 ScriptableObject，这样我们就可以在 Project 窗口右键创建藏品资源
    public abstract class RelicBase : ScriptableObject, IDamageModifier
    {
        [Header("藏品信息")]
        public string ID;
        public string RelicName;
        [TextArea] public string Description;
        public Sprite Icon;

        // --- IDamageModifier 接口实现 ---
        
        // 默认优先级为 0
        public virtual int Priority => 0;

        // 默认不修改伤害 (具体的藏品去 Override 这个方法)
        public virtual void OnOutgoingDamage(DamageInfo damageInfo) { }
        
        // 默认不修改受击 (具体的藏品去 Override 这个方法)
        public virtual void OnIncomingDamage(DamageInfo damageInfo) { }
    }
}