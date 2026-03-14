
using UnityEngine;
using GamePlay.unit;
using Modifier;
namespace GamePlay.buff{
    public abstract class BuffBase : CombatModifier
    {
        [Header("Buff 特有属性")]
        public int Stacks;       // 当前层数
        public int MaxStacks;    // 最大层数限制
        public bool IsDebuff;    // 是增益还是减益（用于净化逻辑）
        public MapUnit Owner { get; protected set; }
        public bool isInit = false;

        public virtual void Initialize(MapUnit owner)
        {
            this.Owner = owner;
            Stacks = Mathf.Min(1, MaxStacks);
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
        // 供外部调用
        public void AddStacks(int amount)
        {
            if (!canAddStacks) return;
            Stacks = Mathf.Min(Stacks + amount, MaxStacks);
        }

        public virtual void OnRepeatedlyObtain()
        {
            if (!isInit)
            {
                Debug.LogError($"Buff {Name} 未初始化，无法重复获取");
                return;
            }
            if(!canAddStacks) return;
            AddStacks(1);
        }
        
        public virtual void RemoveStacks(int amount)
        {
            Stacks -= amount;
            if (Stacks <= 0)
            {
                Owner.RemoveBuff(this);
            }
        }
    }
}