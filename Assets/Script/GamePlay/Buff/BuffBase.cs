
using UnityEngine;
using GamePlay.Units;
using Modifier;
using System;
using Lua;
namespace GamePlay.Buff{
    public abstract class BuffBase : CombatModifierLuaWrapper
    {
        [Header("Buff 特有属性")]
        public int Stacks;
        public int MaxStacks;
        public bool IsDebuff;
        public bool IsHidden;

        /// <summary>AI tactical value per stack, expressed as a fraction of a health pool (designer-tuned).</summary>
        [Tooltip("AI战术价值：每层相当于打掉/保住 血池的比例 (0~N)，设计者手工标定")]
        public float AIValue = 0.05f;
        /// <summary>Whether this buff has a taunt effect (drives AI forced targeting).</summary>
        public virtual bool IsTaunt => false;
        public MapUnit Owner { get; protected set; }
        public bool isInit = false;
        public Action _onChange;

        public virtual void Initialize(MapUnit owner)
        {
            this.Owner = owner;
            Stacks = Mathf.Clamp(Stacks > 0 ? Stacks : 1, 1, MaxStacks);
            isInit = true;
        }
        
        public bool DecayAtTurnStart = true; 

        public override void OnTurnStart(MapUnit owner)
        {
            if (DecayAtTurnStart)
            {
                RemoveStacks(1);
                Debug.Log($"{Name} 持续时间减少，剩余: {Stacks}");
            }

            base.OnTurnStart(owner);
        }

        public bool canAddStacks = true;
        
        /// <summary>Hook invoked when the stack count changes; override to refresh stat modifiers.</summary>
        public virtual void OnStacksChanged()
        {
            _onChange?.Invoke();
        }

        public void AddStacks(int amount)
        {
            if (!canAddStacks) return;
            
            int oldStacks = Stacks;
            Stacks = Mathf.Min(Stacks + amount, MaxStacks);
            
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
            
            AddStacks(amount);
        }
        
        public virtual void RemoveStacks(int amount)
        {
            int oldStacks = Stacks;
            Stacks -= amount;
            
            if (Stacks <= 0)
            {
                Owner.RemoveBuff(this);
            }
            else if (Stacks != oldStacks)
            {
                OnStacksChanged();
            }
        }
    }
}