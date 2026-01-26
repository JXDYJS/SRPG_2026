
using UnityEngine;
using GamePlay.unit;
using Modifier;
public abstract class BuffBase : CombatModifier
{
    [Header("Buff 特有属性")]
    public int Stacks;       // 当前层数
    public int MaxStacks;    // 最大层数限制
    public bool IsDebuff;    // 是增益还是减益（用于净化逻辑）
    
    // 是否在回合结束自动掉层
    public bool DecayAtTurnEnd = true; 

    public override void OnTurnEnd(MapUnit owner)
    {
        base.OnTurnEnd(owner);

        if (DecayAtTurnEnd)
        {
            RemoveStacks(1); // 自动掉 1 层
            Debug.Log($"{Name} 持续时间减少，剩余: {Stacks}");
        }
    }
    
    // 供外部调用
    public void AddStacks(int amount)
    {
        Stacks = Mathf.Min(Stacks + amount, MaxStacks);
    }
    
    public void RemoveStacks(int amount)
    {
        Stacks -= amount;
        if (Stacks <= 0)
        {
            // 通知 Owner 移除我自己 (这需要 MapUnit 或 BuffManager 配合)
            // owner.BuffManager.RemoveBuff(this);
        }
    }
}