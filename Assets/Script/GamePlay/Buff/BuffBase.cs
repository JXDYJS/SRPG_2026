
using UnityEngine;
using GamePlay.Units;
using Modifier;
using System;
namespace GamePlay.Buff{
    public abstract class BuffBase : CombatModifier
    {
        [Header("Buff 特有属性")]
        public int Stacks;       // 当前层数
        public int MaxStacks;    // 最大层数限制
        public bool IsDebuff;    // 是增益还是减益（用于净化逻辑）
        public MapUnit Owner { get; protected set; }
        public bool isInit = false;
        public Action _onChange;

        public virtual void Initialize(MapUnit owner)
        {
            this.Owner = owner;
            // 保留外部设定的层数，但确保在有效范围内
            Stacks = Mathf.Clamp(Stacks > 0 ? Stacks : 1, 1, MaxStacks);
            isInit = true;
        }
        
        // 是否在回合开始自动掉层（自己的回合开始时）
        public bool DecayAtTurnStart = true; 

        public override void OnTurnStart(MapUnit owner)
        {
            base.OnTurnStart(owner);

            if (DecayAtTurnStart)
            {
                RemoveStacks(1); // 自动掉 1 层
                Debug.Log($"{Name} 持续时间减少，剩余: {Stacks}");
            }
        }

        public bool canAddStacks = true;
        
        /// <summary>
        /// 层数变化钩子，当层数发生实质性变化时调用
        /// 子类可以重写此方法来刷新属性修饰器（StatModifier）的数值
        /// </summary>
        public virtual void OnStacksChanged()
        {
            _onChange?.Invoke();
        }

        // 供外部调用
        public void AddStacks(int amount)
        {
            if (!canAddStacks) return;
            
            int oldStacks = Stacks;
            Stacks = Mathf.Min(Stacks + amount, MaxStacks);
            
            // 如果层数发生变化，调用变化钩子
            if (Stacks != oldStacks)
            {
                OnStacksChanged();
            }
        }

        public virtual void OnRepeatedlyObtain(int amount)
        {
            if (!isInit)
            {
                Debug.LogError($"Buff {Name} 未初始化，无法重复获取");
                return;
            }
            if(!canAddStacks) return;
            
            // 将数值计算和事件触发统一交由 AddStacks 处理
            // 本方法可保留用于未来触发"重复获得 Buff 时的特效或被动"
            AddStacks(amount);
        }
        
        public virtual void RemoveStacks(int amount)
        {
            int oldStacks = Stacks;
            Stacks -= amount;
            
            if (Stacks <= 0)
            {
                // 层数归零，移除 Buff
                Owner.RemoveBuff(this);
                // 无需调用 OnStacksChanged，因为 RemoveBuff 会触发完整的 OnRemove 清理逻辑
            }
            else if (Stacks != oldStacks)
            {
                // 层数减少但未归零，调用变化钩子
                OnStacksChanged();
            }
        }
    }
}