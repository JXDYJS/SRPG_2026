# SRPG技能系统接口设计文档

**版本**: 1.0  
**日期**: 2026-03-27  
**项目**: SRPG_2026  
**作者**: Claude

---

## 目录

1. [现状分析](#现状分析)
2. [设计目标](#设计目标)
3. [核心接口层](#核心接口层)
4. [上下文对象](#上下文对象)
5. [具体实现示例](#具体实现示例)
6. [迁移路线图](#迁移路线图)
7. [最佳实践](#最佳实践)
8. [常见问题](#常见问题)

---

## 现状分析

### 当前架构问题

你的技能系统当前是**"贫血的领域模型"**：

| 问题 | 表现 | 影响 |
|------|------|------|
| **数据与行为分离** | `SkillDataSO` / `SkillPhase` / `SkillEffect` 是纯数据容器 | 无法封装复杂逻辑 |
| **巨型switch-case** | `SkillExecutor.ApplyEffect` 中包含巨大的switch语句 | 新增效果需修改核心代码 |
| **硬编码计算** | 伤害公式、目标选择等逻辑写死在执行器中 | 无法定制化 |
| **扩展困难** | 想要实现"连击"、"穿透"等特殊效果需要hack | 代码耦合严重 |

### 对比：现有Modifier系统（优秀示例）

你的 `Modifier` 模块展示了良好的接口设计：

```csharp
// 清晰的接口定义
public interface IDamageModifier
{
    int Priority { get; }
    void OnOutgoingDamage(ref float value, DamageInfo damageInfo);
    void OnIncomingDamage(ref float value, DamageInfo damageInfo);
}

// 组合使用
public abstract class CombatModifier : ScriptableObject, 
    IDamageModifier, 
    IDefenseModifier, 
    IResistanceModifier,
    // ... 更多接口
{
    // 基类提供默认实现
}
```

**技能系统应该遵循相同的设计模式。**

---

## 设计目标

### 核心原则

1. **开闭原则 (Open/Closed)**
   - 对扩展开放：新技能效果通过添加新类实现
   - 对修改封闭：不需要修改现有执行器代码

2. **单一职责 (Single Responsibility)**
   - 每个效果类只负责一种行为
   - 执行器只负责调度，不处理具体逻辑

3. **依赖抽象 (Dependency Abstraction)**
   - 执行器依赖接口，不依赖具体实现
   - 通过上下文对象传递必要信息

### 目标架构

```
┌─────────────────────────────────────────────────────────────┐
│                    SkillExecutionPipeline                   │
│                     (执行调度，不变)                          │
└─────────────────────────────────────────────────────────────┘
                              │
        ┌─────────────────────┼─────────────────────┐
        ▼                     ▼                     ▼
┌──────────────┐     ┌──────────────┐     ┌──────────────┐
│ ISkillEffect │     │ ITargetSelector│    │ISkillCondition│
└──────────────┘     └──────────────┘     └──────────────┘
        │                     │                     │
   ┌────┴────┐           ┌────┴────┐           ┌────┴────┐
   ▼         ▼           ▼         ▼           ▼         ▼
Damage   Heal        Single    Area        HPCheck   BuffCheck
Effect   Effect      Target    Target      Condition Condition

┌─────────────────────────────────────────────────────────────┐
│                    SkillContext                             │
│         (统一上下文，传递所有必要信息)                        │
└─────────────────────────────────────────────────────────────┘
```

---

## 核心接口层

### 1. ISkillEffect - 技能效果接口

**职责**: 定义技能的具体效果逻辑（伤害、治疗、添加Buff等）

```csharp
namespace GamePlay.Skill.Interfaces
{
    /// <summary>
    /// 技能效果接口 - 实现具体的效果逻辑
    /// 替代现有的 SkillEffect + switch-case 模式
    /// </summary>
    public interface ISkillEffect
    {
        /// <summary>
        /// 执行效果
        /// </summary>
        void Execute(SkillContext context, EffectData data);
        
        /// <summary>
        /// 检查效果是否可以应用
        /// </summary>
        bool CanApply(SkillContext context, EffectData data);
        
        /// <summary>
        /// 效果执行优先级（数值越大越早执行）
        /// </summary>
        int Priority { get; }
        
        /// <summary>
        /// 效果类型标识
        /// </summary>
        EffectType EffectType { get; }
    }
}
```

### 2. ITargetSelector - 目标选择器接口

**职责**: 定义如何选择技能的目标

```csharp
namespace GamePlay.Skill.Interfaces
{
    /// <summary>
    /// 目标选择器接口 - 实现自定义目标选择逻辑
    /// 替代硬编码的 GetAoERange3D 等逻辑
    /// </summary>
    public interface ITargetSelector
    {
        /// <summary>
        /// 选择目标
        /// </summary>
        List<MapUnit> SelectTargets(SkillContext context, TargetSelectionData data);
        
        /// <summary>
        /// 检查特定单位是否是有效目标
        /// </summary>
        bool IsValidTarget(MapUnit caster, MapUnit target, TargetSelectionData data);
        
        /// <summary>
        /// 获取目标范围预览（用于UI显示）
        /// </summary>
        List<Vector3Int> GetTargetPreview(SkillContext context, TargetSelectionData data);
    }
}
```

### 3. ISkillCondition - 技能条件接口

**职责**: 定义技能触发的前置条件

```csharp
namespace GamePlay.Skill.Interfaces
{
    /// <summary>
    /// 技能条件接口 - 实现技能触发条件判断
    /// 用于条件技能、被动技能触发等
    /// </summary>
    public interface ISkillCondition
    {
        /// <summary>
        /// 检查条件是否满足
        /// </summary>
        bool CheckCondition(SkillContext context, ConditionData data);
        
        /// <summary>
        /// 获取条件不满足的原因
        /// </summary>
        string GetFailureReason(SkillContext context, ConditionData data);
        
        /// <summary>
        /// 条件类型
        /// </summary>
        ConditionType ConditionType { get; }
    }
}
```

### 4. ISkillBehavior - 技能行为接口（用于完全自定义）

**职责**: 当接口组合不足以表达复杂技能时，提供完全自定义的能力

```csharp
namespace GamePlay.Skill.Interfaces
{
    using Cysharp.Threading.Tasks;
    
    /// <summary>
    /// 技能行为接口 - 实现完全自定义的技能逻辑
    /// 用于极其复杂的技能，无法通过组合其他接口实现
    /// </summary>
    public interface ISkillBehavior
    {
        /// <summary>
        /// 执行技能
        /// </summary>
        UniTask ExecuteSkill(SkillContext context);
        
        /// <summary>
        /// 检查技能是否可以执行
        /// </summary>
        bool CanExecute(SkillContext context);
        
        /// <summary>
        /// 技能开始时的回调
        /// </summary>
        void OnSkillStart(SkillContext context);
        
        /// <summary>
        /// 技能结束时的回调
        /// </summary>
        void OnSkillEnd(SkillContext context);
        
        /// <summary>
        /// 技能被打断时的回调
        /// </summary>
        void OnSkillInterrupted(SkillContext context);
    }
}
```

---

## 上下文对象

### SkillContext - 统一上下文

**职责**: 作为所有技能相关信息的统一载体，避免方法签名膨胀

```csharp
namespace GamePlay.Skill
{
    using System.Collections.Generic;
    using GamePlay.Units;
    using UnityEngine;
    
    /// <summary>
    /// 技能执行上下文 - 包含技能执行所需的所有信息
    /// 统一传递，避免方法签名膨胀
    /// </summary>
    public class SkillContext
    {
        #region 基本信息
        
        /// <summary>
        /// 施法者
        /// </summary>
        public MapUnit Caster { get; set; }
        
        /// <summary>
        /// 技能数据
        /// </summary>
        public SkillDataSO SkillData { get; set; }
        
        /// <summary>
        /// 当前技能阶段
        /// </summary>
        public SkillPhase CurrentPhase { get; set; }
        
        /// <summary>
        /// 阶段索引
        /// </summary>
        public int PhaseIndex { get; set; }
        
        #endregion
        
        #region 目标信息
        
        /// <summary>
        /// 目标位置（格子坐标）
        /// </summary>
        public Vector3Int TargetPosition { get; set; }
        
        /// <summary>
        /// 目标单位列表
        /// </summary>
        public List<MapUnit> Targets { get; set; } = new List<MapUnit>();
        
        /// <summary>
        /// 主要目标（如果有的话）
        /// </summary>
        public MapUnit PrimaryTarget { get; set; }
        
        #endregion
        
        #region 执行控制
        
        /// <summary>
        /// 是否已取消
        /// </summary>
        public bool IsCancelled { get; set; }
        
        /// <summary>
        /// 是否已中断
        /// </summary>
        public bool IsInterrupted { get; set; }
        
        /// <summary>
        /// 执行开始时间
        /// </summary>
        public float StartTime { get; set; }
        
        #endregion
        
        #region 自定义数据存储
        
        /// <summary>
        /// 黑板 - 用于存储临时数据
        /// </summary>
        private Dictionary<string, object> _blackboard = new Dictionary<string, object>();
        
        /// <summary>
        /// 获取数据
        /// </summary>
        public T GetData<T>(string key, T defaultValue = default)
        {
            if (_blackboard.TryGetValue(key, out var value) && value is T typedValue)
            {
                return typedValue;
            }
            return defaultValue;
        }
        
        /// <summary>
        /// 设置数据
        /// </summary>
        public void SetData<T>(string key, T value)
        {
            _blackboard[key] = value;
        }
        
        /// <summary>
        /// 检查是否存在
        /// </summary>
        public bool HasData(string key)
        {
            return _blackboard.ContainsKey(key);
        }
        
        /// <summary>
        /// 移除数据
        /// </summary>
        public bool RemoveData(string key)
        {
            return _blackboard.Remove(key);
        }
        
        #endregion
        
        #region 快捷方法
        
        /// <summary>
        /// 获取所有存活的目标
        /// </summary>
        public List<MapUnit> GetAliveTargets()
        {
            return Targets.FindAll(t => t != null && !t.IsDead);
        }
        
        /// <summary>
        /// 获取施法者 faction
        /// </summary>
        public Faction CasterFaction => Caster?.Faction ?? Faction.Neutral;
        
        /// <summary>
        /// 计算与目标的距离
        /// </summary>
        public float DistanceToTarget()
        {
            if (Caster == null) return 0f;
            return Vector3Int.Distance(Caster.gridPosition, TargetPosition);
        }
        
        #endregion
    }
}
```

</content>