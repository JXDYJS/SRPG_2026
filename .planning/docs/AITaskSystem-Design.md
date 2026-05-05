# AI 任务系统设计文档

## 目录

1. [概述](#1-概述)
2. [现状分析](#2-现状分析)
3. [核心架构](#3-核心架构)
4. [任务系统设计](#4-任务系统设计)
5. [职业-任务关联系统](#5-职业-任务关联系统)
6. [任务派发系统 (AIDirector)](#6-任务派发系统-aidirector)
7. [任务接取与竞价 (TaskBidding)](#7-任务接取与竞价-taskbidding)
8. [任务执行 (AITaskExecutor)](#8-任务执行-aitaskexecutor)
9. [伪代码实现示例](#9-伪代码实现示例)
10. [实现路线图](#10-实现路线图)

---

## 1. 概述

### 1.1 目标

将当前 EnemyAIManager 中硬编码的单步 "移动+普攻" 决策逻辑，重构为模块化的**任务驱动 AI 系统**。AI 通过"任务派发 → 任务竞价 → 任务接取 → 任务规划 → 任务执行"的完整流水线进行决策。

### 1.2 核心设计理念

```
当前：[威胁图扫描] → [找最安全位置 + 可攻击目标] → [移动] → [普攻] → [结束]
目标：[战场态势分析] → [AIDirector 生成任务池] → [AI按职业竞价] → [生成执行计划] → [逐步执行] → [结束]
```

### 1.3 关键原则

- **职业强关联**：不同职业对任务有不同的偏好和执行力，由 `UnitClassSO` 的性格字段驱动
- **可扩展**：新增任务类型只需继承基类，无需修改 AI 主循环
- **复用现有系统**：移动/攻击使用现有的 `MoveCommand` / `SkillCommand`，威胁图、技能系统不变
- **计划驱动**：任务生成一个多步计划 (Plan)，逐步执行，支持中断和回退

---

## 2. 现状分析

### 2.1 当前 AI 流程

```
TurnManager.StartUnitTurn(enemyUnit)
  └─> EnemyAIManager.TakeControl(enemyUnit)
      └─> TacticalMapManager.RebuildThreatMapSnapshot()
      └─> EnemyAILogic(enemyUnit):  // 单一协程
          1. 获取可到达格子
          2. 遍历每个格子，找威胁度最低且能攻击到人的位置
          3. MoveCommand → SkillCommand (NormalAttack)
          4. TurnManager.EndCurrentUnitTurn()
```

### 2.2 现有问题

| 问题 | 影响 |
|------|------|
| 只会普攻，不会使用主动技能 (Skill1~Ultimate) | 法师/牧师类敌人无法发挥职业特性 |
| 所有敌人行为一致，无职业差异 | 狂战士和圣骑士行为完全相同 |
| 不会治疗、不会 buff 队友、不会撤退 | 缺少战术深度 |
| 无多步计划，无法组合行动 | 无法实现 "先 buff 自己再冲锋" 等策略 |
| `TacticalGoal` 类已定义但未使用 | 战略层完全空缺 |
| `UnitClassSO` 的 `Supportiveness`、`SelfPreservation` 字段未使用 | 职业性格配置白费 |

### 2.3 已有的可复用基础设施

| 系统 | 文件 | 任务系统如何复用 |
|------|------|-----------------|
| 威胁图 | `TacticalMapManager.ThreatMap` | 防御型任务读取威胁值选择安全位置 |
| 战略图 | `TacticalMapManager.StrategicMap` | 进攻型任务读取战略值选择进攻方向 |
| 职业配置 | `UnitClassSO` | 性格字段驱动任务竞价权重 |
| 技能系统 | `SkillInventory` / `SkillDataSO` | 任务生成技能使用计划 |
| 命令模式 | `MoveCommand` / `SkillCommand` | 任务的执行原子操作 |
| 行动点 | `MapUnit.actionPoints` / `CanMove` / `CanAction` | 任务规划时的资源约束 |
| GeneralCommand.Tool | `WaitUntilCommandFinish` | 任务执行器等待命令完成 |
| 寻路 | `AStar` | MoveTask 生成路径 |
| 攻击范围 | `AttackRangeSystem` | 攻击型任务筛选目标 |
| 战术目标 | `TacticalGoal` | 复用作为战略任务的基类 |

---

## 3. 核心架构

### 3.1 组件关系图

```
┌─────────────────────────────────────────────────────────────────────┐
│                          TurnManager                                 │
│  StartUnitTurn(unit)                                                │
│    if (enemy) → AITaskSystem.Instance.ExecuteTurn(enemyUnit)        │
└──────────────────────────────┬──────────────────────────────────────┘
                               │
                               ▼
┌─────────────────────────────────────────────────────────────────────┐
│                       AITaskSystem (MonoBehaviour, 单例)             │
│                                                                      │
│  ExecuteTurn(MapUnit unit):                                         │
│    1. AIDirector.GenerateTasks()          → taskPool                 │
│    2. TaskBidding.BidForTasks(unit, pool) → bestTask                 │
│    3. bestTask.Claim(unit)                                          │
│    4. AIPlan plan = bestTask.GeneratePlan(unit)                      │
│    5. AITaskExecutor.ExecutePlan(unit, plan)                        │
│    6. TurnManager.EndCurrentUnitTurn()                              │
└───────┬───────────────┬──────────────┬──────────────────────────────┘
        │               │              │
        ▼               ▼              ▼
┌──────────────┐ ┌─────────────┐ ┌──────────────────┐
│  AIDirector  │ │TaskBidding  │ │ AITaskExecutor   │
│  (任务生成器) │ │ (任务竞价器) │ │ (任务执行器)      │
│              │ │             │ │                  │
│ 扫描战场态势  │ │ 根据职业性格  │ │ 执行 Plan 步骤   │
│ 创建任务候选  │ │ 对每个候选    │ │ Yield 等待完成   │
│ 放入任务池    │ │ 任务评分      │ │ 报告执行结果     │
└──────┬───────┘ └──────┬──────┘ └────────┬─────────┘
       │                │                 │
       ▼                ▼                 ▼
┌──────────────────────────────────────────────────────┐
│                    AITask (抽象基类)                    │
│  + TaskID : string                                    │
│  + Priority : float          // 导演设置的全局优先级    │
│  + TaskType : AITaskType     // 枚举: Attack/Support/Defend/... │
│  + MaxAssignees : int        // 最多几人接取            │
│  + CurrentAssignees : int                              │
│                                                       │
│  # CalculateUtilityFor(unit) : float  // 此单位做此任务的效用 │
│  # GeneratePlan(unit) : AIPlan       // 为此单位生成执行计划  │
│  # IsAvailable : bool                // 是否还能被接取       │
│  # IsCompleted() : bool                                  │
│  # IsFailed() : bool                                     │
└──────────────────────────────────────────────────────┘
        △              △              △
        │              │              │
  ┌─────┴────┐  ┌──────┴──────┐  ┌──┴──────────┐
  │AttackTask│  │SupportTask  │  │DefendTask    │  ...
  │(攻击任务) │  │(支援任务)   │  │(防御任务)    │
  └──────────┘  └─────────────┘  └─────────────┘
```

### 3.2 数据流

```
[战前/每回合初]
  UnitClassSO (职业性格: Aggressiveness, Supportiveness, SelfPreservation)
       │
       ▼
[AIDirector 扫描战场]
  威胁图 (ThreatMap)  ──→  识别威胁区域
  战略图 (StrategicMap) ──→ 识别战略目标
  单位状态 (HP/技能CD/位置) ──→ 评估单位需求
       │
       ▼
  生成 taskPool = [AttackTask₁, AttackTask₂, SupportTask₁, DefendTask₁, ...]
       │
       ▼
[TaskBidding 竞价] (每个需要行动的AI单位)
  for each task in taskPool:
      classWeight = GetPersonalityWeight(unitClass, task.TaskType)
      utility = task.CalculateUtilityFor(unit) * classWeight * personalityMultiplier
  选择 utility 最高的任务
       │
       ▼
[claim → GeneratePlan → ExecutePlan → 报告结果]
```

---

## 4. 任务系统设计

### 4.1 AITask 基类

```csharp
namespace GamePlay.AI.Tasks
{
    /// <summary>
    /// 任务类型枚举 - 任务所属的战略类别
    /// </summary>
    public enum AITaskType
    {
        Attack,      // 进攻：攻击敌方单位
        Support,     // 支援：治疗/buff 友方单位
        Defend,      // 防御：移动到安全位置
        Skill,       // 技能：使用特定技能
        Move,        // 移动：战术走位
        Wait         // 待机：结束回合
    }

    /// <summary>
    /// AI 任务抽象基类
    /// 表示一个可由AI单位接取并执行的战术指令
    /// </summary>
    public abstract class AITask
    {
        public string TaskID { get; protected set; }
        public AITaskType TaskType { get; protected set; }

        /// <summary>导演设置的全局优先级 (0~1)，越高越紧迫</summary>
        public float BasePriority { get; protected set; }

        /// <summary>最多允许多少个单位接取此任务</summary>
        public int MaxAssignees { get; protected set; }

        /// <summary>当前已接取的单位数</summary>
        public int CurrentAssignees { get; protected set; }

        /// <summary>是否还能被接取</summary>
        public bool IsAvailable => CurrentAssignees < MaxAssignees && !IsCompleted() && !IsFailed();

        /// <summary>任务是否已完成</summary>
        public abstract bool IsCompleted();

        /// <summary>任务是否已失败 (目标死亡等)</summary>
        public abstract bool IsFailed();

        /// <summary>
        /// 效用评估：给定单位执行此任务的价值 (0~1)
        /// 此方法评估的是任务本身的适配度，不乘以职业权重
        /// 职业权重由 TaskBidding 层额外处理
        /// </summary>
        public abstract float CalculateUtilityFor(MapUnit unit);

        /// <summary>
        /// 为此单位生成执行计划
        /// 生成的计划是具体的、可执行的指令序列
        /// </summary>
        public abstract AIPlan GeneratePlan(MapUnit unit);

        /// <summary>单位接取任务</summary>
        public void Claim(MapUnit unit)
        {
            CurrentAssignees++;
            OnClaimed(unit);
        }

        protected virtual void OnClaimed(MapUnit unit) { }

        public AITask(AITaskType type, float basePriority, int maxAssignees = 1)
        {
            TaskID = System.Guid.NewGuid().ToString("N");
            TaskType = type;
            BasePriority = basePriority;
            MaxAssignees = maxAssignees;
            CurrentAssignees = 0;
        }
    }
}
```

### 4.2 任务类型设计

#### 4.2.1 AttackTask — 进攻任务

```
职责: 攻击指定的敌方单位
生成条件:
  - 存在敌方单位在威胁范围内
  - 敌方单位 HP > 0

效用评估:
  1. 距离因素: 越近越高 (不是越远! AI不需要run in)
  2. 威胁匹配: 敌人威胁越高，攻击它的价值越高
  3. 克制关系: 物理职业更想打低防单位，法师更想打低抗单位
  4. HP因素: 优先攻击低血量敌人 (处决逻辑)

计划生成:
  [可选: 使用技能]
  [移动到攻击范围]
  [执行攻击/技能]
```

#### 4.2.2 SupportTask — 支援任务

```
职责: 治疗或 buff 友方单位
生成条件:
  - 友方单位 HP 低于阈值 或 缺少关键 buff
  - 存在可用的治疗/增益技能

效用评估:
  1. 对友方: HP越低价值越高，缺少buff价值高
  2. 自身生存: 如果自身HP低，优先自疗
  3. 战略价值: 保护输出核心 > 保护肉盾

计划生成:
  [移动到支援范围]
  [施放治疗/buff技能]
```

#### 4.2.3 DefendTask — 防御任务

```
职责: 移动到安全位置或防御姿态
生成条件:
  - 自身 HP 低于安全阈值
  - 处于高威胁区域
  - 有更安全的可达位置

效用评估:
  1. 自身HP: HP越低价值越高
  2. 威胁程度: 当前位置威胁分越高价值越高
  3. 安全位置可用性: 有能力到达安全位置才有价值

计划生成:
  [移动到威胁最低的可达位置]
  [使用防御技能 (如果有)]
```

#### 4.2.4 SkillTask — 技能使用任务

```
职责: 在最佳时机使用主动技能 (Skill1~Ultimate)
生成条件:
  - 有可用技能
  - 存在合适的技能目标

效用评估:
  1. 技能强度: AoE技能在多个敌人时价值高
  2. 时机: 终极技能在关键时刻使用更有价值
  3. 资源效率: 评估技能消耗后的剩余行动力

计划生成:
  [移动到技能范围]
  [施放技能]
```

#### 4.2.5 MoveTask — 战术走位任务

```
职责: 移动到战略位置 (目标点、关键地形等)
生成条件:
  - StrategicMap 上有战略目标点
  - 需要靠近目标点而非直接攻击

效用评估:
  1. 与战略目标距离: 越近价值越高
  2. 路径安全性: 路径威胁越低价值越高

计划生成:
  [A*寻路到目标点]
```

### 4.3 任务生命周期

```
                    ┌──────────┐
                    │  CREATED │  AIDirector 扫描战场后创建
                    └────┬─────┘
                         │
                         ▼
                    ┌──────────┐
              ┌─────│  QUEUED  │─────┐  加入任务池，等待竞价
              │     └──────────┘     │
              │                      │
         (无人竞标)           (被竞标成功)
              │                      │
              ▼                      ▼
        ┌──────────┐          ┌──────────┐
        │  EXPIRED │          │ CLAIMED  │  单位接取任务
        └──────────┘          └────┬─────┘
                                   │
                                   ▼
                              ┌──────────┐
                              │EXECUTING │  正在生成/执行计划
                              └────┬─────┘
                                   │
                             ┌─────┴─────┐
                             ▼           ▼
                        ┌──────────┐ ┌──────────┐
                        │COMPLETED │ │  FAILED  │
                        └──────────┘ └──────────┘
```

---

## 5. 职业-任务关联系统

### 5.1 现有字段映射

`UnitClassSO` 已有的三个 AI 性格字段：

```csharp
// Assets/Script/Core/UnitClassSO.cs (现有)
[Header("AI 性格倾向 (决定打分系统)")]
[Range(0f, 2f)] public float Aggressiveness = 1.0f;   // 进攻倾向: 影响攻击类任务权重
[Range(0f, 2f)] public float Supportiveness = 1.0f;    // 支援倾向: 影响治疗/buff任务权重
[Range(0f, 2f)] public float SelfPreservation = 1.0f;  // 自保倾向: 影响防御/撤退任务权重
```

**当前问题**: 这三个字段只在 `TacticalMapManager.RebuildThreatMapSnapshot()` 中使用了 `Aggressiveness`（影响玩家单位对AI的威胁评分），但 `Supportiveness` 和 `SelfPreservation` 完全未使用，敌人自身的职业性格从未影响其行为。

### 5.2 职业-任务类型权重映射

```csharp
/// <summary>
/// 根据职业性格字段计算对特定任务类型的偏好权重
/// </summary>
public static class ClassTaskWeightCalculator
{
    /// <summary>
    /// 映射关系:
    ///   Aggressiveness   → AttackTask、SkillTask(进攻型技能)
    ///   Supportiveness   → SupportTask、SkillTask(治疗/buff型技能)
    ///   SelfPreservation → DefendTask、MoveTask(撤退走位)
    ///
    /// 计算公式:
    ///   weight = personality x categoryMultiplier x normalizationFactor
    ///
    /// 其中 normalizationFactor = 1.0 / (Aggressiveness + Supportiveness + SelfPreservation)
    /// 保证三个权重归一化，但不同类型任务间可比
    /// </summary>
    public static float GetTaskWeight(UnitClassSO unitClass, AITaskType taskType)
    {

        switch (taskType)
        {
            case AITaskType.Attack:
                return unitClass.Aggressiveness * 1.5f;  // 进攻任务主要看攻击性

            case AITaskType.Skill:
                // 技能任务的权重 = max(攻击性, 支援性)
                // 因为技能可能是进攻型技能也可能是治疗型技能
                // 具体由 SkillTask 内部根据技能的 TargetType 进一步区分
                return Mathf.Max(unitClass.Aggressiveness, unitClass.Supportiveness);

            case AITaskType.Support:
                return unitClass.Supportiveness * 1.5f;  // 支援任务主要看支援性

            case AITaskType.Defend:
                return unitClass.SelfPreservation * 1.5f; // 防御任务主要看自保性

            case AITaskType.Move:
                // 走位任务: 攻击性高的向前走位，自保性高的向后走位
                // 由 MoveTask 内部区分方向，这里给基础分
                return (unitClass.Aggressiveness + unitClass.SelfPreservation) * 0.5f;

            case AITaskType.Wait:
                return 0.1f; // 待机几乎不偏好，作为兜底

            default:
                return 1.0f;
        }
    }
}
```

### 5.3 职业行为差异化示例

假设以下职业配置：

| 职业 | Aggressiveness | Supportiveness | SelfPreservation | 行为特征 |
|------|:---:|:---:|:---:|------|
| 战士(狂战士) | 2.0 | 0.3 | 0.5 | 只想冲锋打架，不会治疗，HP低也不怎么撤退 |
| 战士(圣骑士) | 1.0 | 1.5 | 1.0 | 攻防兼备，会在适当时治疗友方和自保 |
| 射手(狙击手) | 1.5 | 0.2 | 0.8 | 倾向于远程输出，不太支援，HP低时后撤 |
| 射手(游侠) | 0.8 | 1.2 | 1.5 | 游走支援型，提供团队辅助 |

**竞价结果示例**（简化表示）：

```
场景: 敌人A(战士，HP=20%), 友方B(HP=30%), 任务池=[Attack(enemyA), Support(allyB), Defend]

敌人A(狂战士): Attack=2.0x0.9=1.80, Support=0.3x0.5=0.15, Defend=0.5x0.8=0.40
              → 选择 Attack (死也要打!)

敌人A(圣骑士): Attack=1.0x0.9=0.90, Support=1.5x0.5=0.75, Defend=1.0x0.8=0.80
              → 选择 Attack (差距不大，但进攻仍略优)

如果HP降到5%:
敌人A(狂战士): Attack=1.80, Defend=0.40 → 仍然 Attack (血性不退!)
敌人A(圣骑士): Attack=0.90, Support=1.50(自疗), Defend=1.60(高自保+低HP)
              → 选择 Defend (圣骑士惜命)
```

---

## 6. 任务派发系统 (AIDirector)

### 6.1 设计原则

AIDirector 是任务的"产生者"，负责在每个 AI 回合开始时根据战场态势生成任务池。它与单个 AI 单位解耦：Director 不知道具体哪个单位会接取任务，只管"什么任务需要被做"。

### 6.2 AIDirector 核心逻辑

```csharp
/// <summary>
/// AI 导演 - 负责扫描战场态势，生成候选任务池
/// 以敌方阵营的视角创建任务
/// </summary>
public class AIDirector
{
    /// <summary>
    /// 为当前行动的单位生成候选任务池
    /// 注意：只生成此单位可能接取的任务
    /// </summary>
    public List<AITask> GenerateCandidateTasks(MapUnit actingUnit)
    {
        List<AITask> taskPool = new List<AITask>();

        // ─── 1. 生成攻击任务 ───
        GenerateAttackTasks(actingUnit, taskPool);

        // ─── 2. 生成支援任务 ───
        GenerateSupportTasks(actingUnit, taskPool);

        // ─── 3. 生成防御任务 ───
        GenerateDefendTasks(actingUnit, taskPool);

        // ─── 4. 生成技能使用任务 ───
        GenerateSkillTasks(actingUnit, taskPool);

        // ─── 5. 生成战术走位任务 (基于战略图) ───
        GenerateMoveTasks(actingUnit, taskPool);

        // ─── 6. 兜底：待机任务 ───
        taskPool.Add(new WaitTask(0f));

        return taskPool;
    }
}
```

### 6.3 各任务类型生成条件

#### 6.3.1 生成攻击任务

```
输入: 当前行动的AI单位, 任务池
输出: 向任务池添加 AttackTask

for each PlayerUnit in GetAllAlivePlayers():
    1. 判断此敌人是否在威胁范围内
       → 获取单位的 GetAllPossibleAttackRange() (移动后 + 攻击范围)
       → 如果 PlayerUnit.gridPosition 不在范围内 → skip
    
    2. 计算基础优先级:
       priority = 0.5 + (1 - PlayerUnit.HP百分比) * 0.5
       低血量敌人优先被打 (处决逻辑)
    
    3. 创建 AttackTask(PlayerUnit, priority)
    4. 加入任务池
```

#### 6.3.2 生成支援任务

```
输入: 当前行动的AI单位, 任务池
输出: 向任务池添加 SupportTask

for each AllyUnit in GetAllAliveEnemies() where unit != actingUnit:
    // 检查是否有治疗技能
    if actingUnit 没有治疗技能 → continue
    if AllyUnit.HP百分比 > 安全阈值(如 0.7) → continue  // 健康状况良好
    
    1. 计算优先级:
       priority = 1.0 - (AllyUnit.HP百分比 * 0.8)
       HP越低，优先级越高
    
    2. 创建 SupportTask(AllyUnit, priority, skill)
    3. 加入任务池

// 自疗任务
if actingUnit.HP百分比 < 0.5 && actingUnit有治疗技能:
    taskPool.Add(new SupportTask(actingUnit, 0.8f - actingUnit.HP百分比, selfHealSkill))
```

#### 6.3.3 生成防御任务

```
输入: 当前行动的AI单位, 任务池
输出: 向任务池添加 DefendTask

1. 读取当前单位的威胁值: currentThreat = ThreatMap.GetScore(unit.gridPosition)
2. 如果 currentThreat < 安全阈值 → 不需要防御

3. 查找可达位置中威胁最低的:
   bestSafePos = argmin(ThreatMap.GetScore(pos)) for pos in reachableTiles

4. 如果 bestSafePos 的威胁值 < currentThreat * 0.5 (显著改善):
   priority = currentThreat * (1.0 - unit.HP百分比)  // HP低+威胁高=急需防御
   创建 DefendTask(bestSafePos, priority)
   加入任务池
```

#### 6.3.4 生成技能使用任务

```
输入: 当前行动的AI单位, 任务池
输出: 向任务池添加 SkillTask

for each skill in actingUnit.SkillInventory.GetActiveSkills():
    if skill == NormalAttack → skip (普攻由 AttackTask 处理)
    
    // 根据技能的目标类型确定可用的目标池
    if skill.TargetType == Enemy:
        targets = GetAllAlivePlayers()
    else if skill.TargetType == Ally:
        targets = GetAllAliveEnemies()
    else if skill.TargetType == Self:
        targets = [actingUnit]
    
    for each target in targets:
        if 目标不在技能的施法范围内(含移动后):
            continue
        
        // AoE技能: 统计影响范围内目标数
        affectedCount = CountTargetsInAOE(target, skill)
        
        // 优先级计算:
        skillValue = GetSkillValue(skill, target)  // 技能对目标的价值
        priority = skillValue * min(affectedCount / MaxAOE, 1.0)
        
        创建 SkillTask(skill, target, priority)
        加入任务池
```

### 6.4 AIDirector 与战前策略

```csharp
/// <summary>
/// 扩展方向：关卡级战略
/// 
/// 在关卡开始时，关卡配置可以预设战略任务：
/// - "优先消灭BOSS单位"
/// - "30回合内占领左下角据点"  
/// - "保护NPC单位X存活"
///
/// 这些战略任务在 AIDirector 初始化时注册为长期任务 (PersistentTask)，
/// 长期任务在每回合都被加入任务池，但允许在效用评估中被其他任务超越。
///
/// 示例:
/// director.RegisterPersistentTask(new AttackSpecificTargetTask(bossUnit, 0.9f));
/// director.RegisterPersistentTask(new CapturePointTask(pointA, 0.7f));
/// director.RegisterPersistentTask(new ProtectUnitTask(npcX, 0.85f));
/// </summary>
```

---

## 7. 任务接取与竞价 (TaskBidding)

### 7.1 竞价流程

```
输入: MapUnit actingUnit (当前行动的AI单位)
输入: List<AITask> taskPool (候选任务池)
输出: AITask bestTask (选中的任务)

Algorithm BidForTask:

1. 获取单位的职业: UnitClassSO unitClass = actingUnit.GetClass()
2. 初始化: bestUtility = -∞, bestTask = null

3. for each task in taskPool:
     a. 基础效用评估 (任务本身的适配度):
        baseUtility = task.CalculateUtilityFor(actingUnit)
        如果 baseUtility <= 0 → skip (此任务对当前单位无意义)
        
     b. 职业权重 (性格偏好):
        classWeight = ClassTaskWeightCalculator.GetTaskWeight(unitClass, task.TaskType)
        
     c. 条件权重调整:
        // HP修正: HP低时提升防御/支援的权重，降低攻击的权重
        hpFactor = actingUnit.Character.statSystem.currentHP / actingUnit.Character.statSystem.maxHP.getValue()
        if task.TaskType == Defend:
            hpModifier = 1.0 + (1.0 - hpFactor)  // HP越低，防御任务权重越高 (最大x2)
        else if task.TaskType == Attack:
            hpModifier = hpFactor  // HP越低，攻击任务权重越低
        
        // 距离衰减: 越近的任务越优先 (避免跑全图)
        distance = task.EstimatedDistanceTo(actingUnit)  // 任务估算距离
        maxReach = actingUnit.Character.statSystem.moveRange.getValue()
        distanceFactor = 1.0 - (distance / (maxReach * 2))
        distanceFactor = clamp(distanceFactor, 0.1, 1.0)
        
     d. 综合效用:
        utility = baseUtility * classWeight * hpModifier * distanceFactor * task.BasePriority
        
        if utility > bestUtility:
            bestUtility = utility
            bestTask = task

4. if bestTask != null:
     bestTask.Claim(actingUnit)
     return bestTask
   
   else:
     return new WaitTask(0f)  // 兜底
```

### 7.2 关键：距离估算

每种任务对"距离"的定义不同：

```csharp
public abstract class AITask
{
    /// <summary>
    /// 估算单位执行此任务的大致距离 (用于距离衰减计算)
    /// 不同任务使用不同的距离定义
    /// </summary>
    public abstract float EstimatedDistanceTo(MapUnit unit);

    // AttackTask:  距离 = min(曼哈顿距离到每个可达位置中能打到target的位置)
    // SupportTask: 距离 = 曼哈顿距离到target (需要走到支援范围)
    // DefendTask:  距离 = 曼哈顿距离到目标安全位置
    // SkillTask:   距离 = 曼哈顿距离到技能施放位置
    // MoveTask:    距离 = 曼哈顿距离到目标点
}
```

### 7.3 多单位竞标 (扩展方向)

```
当前设计: 每个单位独立竞价，不与其他单位协调。
扩展方向: 
  1. 引入竞标锁: 如果两个单位都想打同一个目标，高优先级单位锁定
  2. 任务分配协调: 避免所有敌人都去追同一个玩家
  3. 组队策略: 识别需要多人协作的任务 (如围攻BOSS)
```

---

## 8. 任务执行 (AITaskExecutor)

### 8.1 执行计划 (AIPlan)

任务选中后，调用 `task.GeneratePlan(unit)` 生成具体的执行计划：

```csharp
/// <summary>
/// 执行计划：由多个有序步骤组成
/// 每个步骤是一个可执行的原子操作
/// </summary>
public class AIPlan
{
    /// <summary>计划步骤列表，按顺序执行</summary>
    public List<AIPlanStep> Steps { get; private set; }

    /// <summary>当前执行到第几步</summary>
    public int CurrentStepIndex { get; private set; }

    /// <summary>是否所有步骤都执行完毕</summary>
    public bool IsFinished => CurrentStepIndex >= Steps.Count;
}

/// <summary>
/// 计划中的单一执行步骤
/// </summary>
public class AIPlanStep
{
    public enum StepType
    {
        Move,        // 移动: 执行 MoveCommand
        UseSkill,    // 使用技能: 执行 SkillCommand
        Wait,        // 等待: yield WaitForSeconds
        Evaluate     // 评估: 检查条件，决定是否继续/跳过后续步骤
    }

    public StepType Type { get; set; }
    public Vector3Int MoveTarget { get; set; }       // Move 类型的目标位置
    public SkillDataSO SkillData { get; set; }        // UseSkill 类型的技能
    public MapUnit SkillTarget { get; set; }           // UseSkill 类型的目标
    public float WaitSeconds { get; set; }             // Wait 类型的等待秒数
}
```

### 8.2 各任务的 Plan 生成

#### AttackTask 计划生成

```csharp
// AttackTask.GeneratePlan(unit)
public override AIPlan GeneratePlan(MapUnit unit)
{
    AIPlan plan = new AIPlan();

    // Step 1: 检查是否在攻击范围内
    bool inRange = IsTargetInAttackRange(unit, TargetUnit);
    
    if (!inRange && unit.CanMove)
    {
        // 需要移动: 找最适合攻击目标的位置
        Vector3Int bestPos = FindBestAttackPosition(unit, TargetUnit);
        plan.AddStep(AIPlanStep.Move(bestPos));
    }

    // Step 2: 选择攻击技能
    // 如果单位有主动攻击技能 (Skill1~Ultimate)，比普攻更优
    SkillDataSO bestSkill = SelectBestOffensiveSkill(unit, TargetUnit);
    
    if (bestSkill != null && unit.CanAction)
    {
        plan.AddStep(AIPlanStep.UseSkill(bestSkill, TargetUnit));
    }
    else if (unit.CanAction)
    {
        // 普攻兜底
        plan.AddStep(AIPlanStep.UseSkill(unit.NormalAttackSkill, TargetUnit));
    }

    return plan;
}

// 辅助: 选择最优攻击技能
private SkillDataSO SelectBestOffensiveSkill(MapUnit unit, MapUnit target)
{
    SkillDataSO bestSkill = null;
    float bestValue = 0f;

    foreach (var skill in unit.SkillInventory.GetActiveSkills())
    {
        if (skill == unit.NormalAttackSkill) continue;
        if (skill.TargetType != TargetType.Enemy) continue;
        if (!IsTargetInSkillRange(unit, skill, target)) continue;

        // 技能价值评估: 伤害期望 * AoE命中数
        float damageEstimate = EstimateSkillDamage(skill, unit, target);
        int aoeHits = CountTargetsInAOE(skill, target);
        float value = damageEstimate * aoeHits;

        if (value > bestValue)
        {
            bestValue = value;
            bestSkill = skill;
        }
    }

    return bestSkill;
}
```

#### SupportTask 计划生成

```csharp
// SupportTask.GeneratePlan(unit)
public override AIPlan GeneratePlan(MapUnit unit)
{
    AIPlan plan = new AIPlan();

    bool isSelfTarget = (TargetUnit == unit);
    SkillDataSO supportSkill = SelectSupportSkill(unit, TargetUnit);

    if (supportSkill == null)
    {
        plan.AddStep(AIPlanStep.Wait(0.5f));
        return plan;
    }

    // 走到支援范围
    if (!isSelfTarget && !IsTargetInSkillRange(unit, supportSkill, TargetUnit))
    {
        Vector3Int supportPos = FindSupportPosition(unit, TargetUnit, supportSkill);
        plan.AddStep(AIPlanStep.Move(supportPos));
    }

    plan.AddStep(AIPlanStep.UseSkill(supportSkill, TargetUnit));
    return plan;
}
```

#### DefendTask 计划生成

```csharp
// DefendTask.GeneratePlan(unit)
public override AIPlan GeneratePlan(MapUnit unit)
{
    AIPlan plan = new AIPlan();

    // 移动到安全位置
    if (SafePosition != unit.gridPosition && unit.CanMove)
    {
        plan.AddStep(AIPlanStep.Move(SafePosition));
    }

    // 如果有防御增强技能，使用它
    SkillDataSO selfBuffSkill = SelectSelfBuffSkill(unit);
    if (selfBuffSkill != null && unit.CanAction)
    {
        plan.AddStep(AIPlanStep.UseSkill(selfBuffSkill, unit));
    }

    return plan;
}
```

### 8.3 计划执行器 (AITaskExecutor)

```csharp
/// <summary>
/// 任务执行器 - 逐步执行 AIPlan
/// 在 EnemyAIManager 的协程中调用
/// </summary>
public class AITaskExecutor
{
    /// <summary>
    /// 执行计划，返回一个协程
    /// 由 EnemyAIManager 的 StartCoroutine 调用
    /// </summary>
    public IEnumerator ExecutePlan(MapUnit unit, AIPlan plan)
    {
        Debug.Log($"[AI] {unit.name} 开始执行计划，共 {plan.Steps.Count} 步");

        foreach (var step in plan.Steps)
        {
            // 执行前检查: 单位是否还活着
            if (unit == null || unit.Character.statSystem.currentHP <= 0)
            {
                Debug.Log($"[AI] {unit?.name} 在执行计划中阵亡，中断执行");
                yield break;
            }

            yield return ExecuteStep(unit, step);
        }

        Debug.Log($"[AI] {unit.name} 计划执行完毕");
    }

    private IEnumerator ExecuteStep(MapUnit unit, AIPlanStep step)
    {
        switch (step.Type)
        {
            case AIPlanStep.StepType.Move:
                yield return ExecuteMove(unit, step);
                break;

            case AIPlanStep.StepType.UseSkill:
                yield return ExecuteSkill(unit, step);
                break;

            case AIPlanStep.StepType.Wait:
                yield return new WaitForSeconds(step.WaitSeconds);
                break;

            case AIPlanStep.StepType.Evaluate:
                // 条件评估步骤: 如果条件不满足，可以提前终止计划
                if (!EvaluateCondition(unit, step))
                {
                    Debug.Log($"[AI] {unit.name} 条件评估失败，跳过后续步骤");
                    yield break;  // 注意: 这里break会跳出 foreach
                }
                break;
        }
    }

    private IEnumerator ExecuteMove(MapUnit unit, AIPlanStep step)
    {
        if (!unit.CanMove)
        {
            Debug.Log($"[AI] {unit.name} 无法移动，跳过");
            yield break;
        }

        List<Vector3Int> path = AStar.FindPath(
            unit.gridPosition, step.MoveTarget,
            MapManager.Instance.logicalGrid, unit.moveStats);

        if (path == null || path.Count == 0)
        {
            Debug.LogWarning($"[AI] {unit.name} 找不到路径到 {step.MoveTarget}");
            yield break;
        }

        MoveCommand moveCmd = new MoveCommand(unit, path);
        yield return Tool.WaitUntilCommandFinish(moveCmd);
        yield return new WaitForSeconds(0.3f);
    }

    private IEnumerator ExecuteSkill(MapUnit unit, AIPlanStep step)
    {
        if (!unit.CanAction)
        {
            Debug.Log($"[AI] {unit.name} 无行动点，跳过技能");
            yield break;
        }

        SkillTargetContext context = new SkillTargetContext(
            step.SkillTarget.gridPosition,
            new List<MapUnit> { step.SkillTarget }
        );

        SkillCommand skillCmd = new SkillCommand(unit, step.SkillData, context);
        yield return Tool.WaitUntilCommandFinish(skillCmd);
        yield return new WaitForSeconds(0.5f);
    }
}
```

---

## 9. 伪代码实现示例

### 9.1 新的 AITaskSystem 主入口

命名空间: `GamePlay.AI`, 文件: `Assets/Script/GamePlay/AI/AITaskSystem.cs`

```
class AITaskSystem : MonoBehaviour
{
    static Instance
    AIDirector director
    TaskBidding bidding
    AITaskExecutor executor
    
    // ─── 回合入口 ───
    // 由 TurnManager.StartUnitTurn() 调用
    // 替代当前的 EnemyAIManager.TakeControl()
    
    IEnumerator ExecuteTurn(MapUnit unit)
        Debug.Log $"[AITaskSystem] {unit.name} 开始任务驱动AI回合"
        
        // 1. 更新威胁图 (复用现有逻辑)
        TacticalMapManager.Instance.RebuildThreatMapSnapshot()
        
        // 2. AIDirector 生成候选任务池
        taskPool = director.GenerateCandidateTasks(unit)
        Debug.Log $"[AITaskSystem] 生成 {taskPool.Count} 个候选任务"
        
        // 3. 竞价：选择最优任务
        bestTask = bidding.BidForTask(unit, taskPool)
        if bestTask is null:
            Debug.LogWarning $"[AITaskSystem] {unit.name} 没有可选任务"
            yield return new WaitForSeconds(0.5f)
            TurnManager.Instance.EndCurrentUnitTurn()
            yield break
        
        Debug.Log $"[AITaskSystem] {unit.name} 选择任务: {bestTask.TaskType} (优先级:{bestTask.BasePriority})"
        
        // 4. 生成执行计划
        plan = bestTask.GeneratePlan(unit)
        Debug.Log $"[AITaskSystem] 生成计划: {plan.Steps.Count} 步"
        
        // 5. 执行计划
        yield return executor.ExecutePlan(unit, plan)
        
        // 6. 结束回合
        TurnManager.Instance.EndCurrentUnitTurn()
}
```

### 9.2 AttackTask 完整伪代码

```
class AttackTask extends AITask
    field TargetUnit: MapUnit
    
    constructor(target, priority):
        super(AITaskType.Attack, priority, maxAssignees=1)
        TargetUnit = target
    
    // ─── 效用评估 ───
    override CalculateUtilityFor(unit):
        // 0. 目标检查
        if TargetUnit is dead → return 0
        if TargetUnit 不在 unit 的威胁范围内(含移动后) → return 0
        
        // 1. 距离效用 (越近越好)
        dist = ManhattanDist(unit.gridPosition, TargetUnit.gridPosition)
        maxReach = unit.moveRange + unit.NormalAttackSkill.CastMaxRange
        distanceUtility = 1.0 - min(dist / maxReach, 1.0)
        
        // 2. 克制关系效用
        advantageUtility = CalculateTypeAdvantage(unit, TargetUnit)
        // 物理职业对低防单位: advantage = TargetUnit.DEF 越低越高
        // 法师对低抗单位: advantage = TargetUnit.RES 越低越高
        
        // 3. 处决效用 (低血量目标优先)
        hpPercent = TargetUnit.HP / TargetUnit.MaxHP
        executeUtility = 1.0 - hpPercent
        
        // 4. 威胁匹配效用
        threatScore = ThreatMap.GetScore(TargetUnit.gridPosition)
        // 打高威胁目标有价值
        threatUtility = clamp(threatScore / maxThreatSeen, 0, 1)
        
        // 5. 综合
        return 0.3*distanceUtility + 0.15*advantageUtility + 0.35*executeUtility + 0.2*threatUtility
    
    // ─── 计划生成 ───
    override GeneratePlan(unit):
        plan = new AIPlan()
        
        // 检查是否需要移动
        attackRange = AttackRangeSystem.GetCastRange3D(unit.gridPosition, unit.NormalAttackSkill)
        if TargetUnit.gridPosition not in attackRange:
            // 找最佳攻击位置
            reachablePositions = getReachableTiles(unit)
            bestPos = null, bestScore = -inf
            for pos in reachablePositions:
                if pos is occupied → skip
                range = GetCastRange3D(pos, unit.NormalAttackSkill)
                if TargetUnit.gridPosition in range:
                    // 评估此位置的威胁度 + 距离
                    threat = ThreatMap.GetScore(pos)
                    score = -threat  // 威胁越低越好
                    if score > bestScore:
                        bestScore = score, bestPos = pos
            
            if bestPos is not null:
                plan.AddStep(Move(bestPos))
            else:
                plan.AddStep(Wait(0.5f))
                return plan  // 走不到，放弃
        
        // 选择最优进攻技能
        bestSkill = SelectBestOffensiveSkill(unit, TargetUnit)
        if bestSkill is not null and unit.CanAction:
            plan.AddStep(UseSkill(bestSkill, TargetUnit))
        
        return plan
    
    // ─── 距离估算 ───
    override EstimatedDistanceTo(unit):
        // AttackTask的距离定义: 需要走多远才能攻击到目标
        return minDistToAttackRange(unit, TargetUnit)
    
    // ─── 状态检查 ───
    override IsCompleted():
        return TargetUnit is dead
    
    override IsFailed():
        return TargetUnit is null
```

### 9.3 SkillTask 完整伪代码 (技能任务)

```
class SkillTask extends AITask
    field Skill: SkillDataSO
    field TargetUnit: MapUnit
    
    constructor(skill, target, priority):
        super(AITaskType.Skill, priority, maxAssignees=1)
        Skill = skill
        TargetUnit = target
    
    override CalculateUtilityFor(unit):
        // 0. 前置检查
        if not unit.SkillInventory.HasSkill(Skill.SlotType) → return 0
        if TargetUnit is dead → return 0
        
        // 1. 计算技能对目标的价值
        skillValue = EvaluateSkillImpact(Skill, unit, TargetUnit)
        // EvaluateSkillImpact:
        //   伤害技能: 估算伤害值 / target.maxHP
        //   治疗技能: 估算治疗量 / target.maxHP
        //   Buff技能: buff强度 * 持续时间 * 影响范围
        //   Debuff技能: 负面效果对目标的影响程度
        
        // 2. AoE加成
        aoeFactor = 1.0
        if Skill has AoE:
            affectedCount = CountUnitsInAOE(Skill, TargetUnit, unit)
            aoeFactor = 1.0 + (affectedCount - 1) * 0.3  // 每多一个目标 +30%
        
        // 3. 距离效用 (与AttackTask类似)
        distanceUtility = CalculateDistanceUtility(unit, TargetUnit, Skill)
        
        // 4. 技能是否是对该职业的"招牌技能"
        // 例如: 圣骑士的 "圣光审判" 对不死族加成
        specialtyBonus = CalculateSpecialtyBonus(unit, Skill)
        
        return skillValue * aoeFactor * distanceUtility * specialtyBonus
    
    override GeneratePlan(unit):
        plan = new AIPlan()
        
        // 走到技能施放范围
        castRange = AttackRangeSystem.GetCastRangeForSkill(unit.gridPosition, Skill)
        if TargetUnit.gridPosition not in castRange and unit.CanMove:
            bestPos = FindBestCastPosition(unit, Skill, TargetUnit)
            plan.AddStep(Move(bestPos))
        
        plan.AddStep(UseSkill(Skill, TargetUnit))
        return plan
    
    // ─── 效用评估辅助：评估技能影响 ───
    private EvaluateSkillImpact(skill, caster, target):
        impact = 0
        for phase in skill.Phases:
            for effect in phase.Effects:
                switch effect.EffectType:
                    case Damage:
                        estimatedDmg = EstimateDamage(caster, target, effect)
                        impact = max(impact, estimatedDmg / target.maxHP)
                    case Heal:
                        estimatedHeal = EstimateHeal(caster, effect)
                        missingHP = target.maxHP - target.currentHP
                        impact = max(impact, estimatedHeal / target.maxHP)
                        // 过量治疗惩罚
                        if estimatedHeal > missingHP:
                            impact *= (missingHP / estimatedHeal)
                    case AddBuff:
                        // 检查目标是否已有此buff (避免重复)
                        impact = max(impact, 0.3)
                    case RemoveBuff:
                        // 只有目标有debuff时才有效
                        if target has debuff:
                            impact = max(impact, 0.3)
        return impact
```

### 9.4 整合到 TurnManager (修改点)

```
// TurnManager.StartUnitTurn() 修改后:

private void StartUnitTurn(MapUnit unit)
    Debug.Log($"---> 轮到 {unit.name} 行动了！")
    unit.ResetTurnState()
    unit.OnTurnStart()
    UnitManager.Instance.unitOnStay(unit)

    if unit.Faction == Player:
        BattleInputController.Instance.ChangeState(InputState.Idle)
    else:
        BattleInputController.Instance.ChangeState(InputState.Locked)
        
        // ─── 改动: 使用任务系统替代原来的 EnemyAIManager.TakeControl() ───
        AITaskSystem.Instance.ExecuteTurnCoroutine(unit)
        // 这会启动一个协程, 协程结束时调用 EndCurrentUnitTurn()
```

---

## 10. 实现路线图

### Phase 1: 基础设施 (预计 2-3 天)

| 步骤 | 内容 | 涉及文件 |
|------|------|---------|
| 1.1 | 创建 `AITask` 基类、`AITaskType` 枚举、`AIPlan`、`AIPlanStep` 类 | 新建 `Assets/Script/GamePlay/AI/Tasks/` |
| 1.2 | 创建 `AITaskSystem` MonoBehaviour 单例 | 新建 `Assets/Script/GamePlay/AI/AITaskSystem.cs` |
| 1.3 | 创建 `AIDirector` 类 (任务生成器) | 新建 `Assets/Script/GamePlay/AI/AIDirector.cs` |
| 1.4 | 创建 `TaskBidding` 类 (竞价系统) | 新建 `Assets/Script/GamePlay/AI/TaskBidding.cs` |
| 1.5 | 创建 `AITaskExecutor` 类 (计划执行器) | 新建 `Assets/Script/GamePlay/AI/AITaskExecutor.cs` |
| 1.6 | 创建 `ClassTaskWeightCalculator` 静态类 | 新建 `Assets/Script/GamePlay/AI/ClassTaskWeight.cs` |

### Phase 2: 核心任务类型 (预计 3-4 天)

| 步骤 | 内容 | 涉及文件 |
|------|------|---------|
| 2.1 | 实现 `AttackTask` (进攻任务) | `Assets/Script/GamePlay/AI/Tasks/AttackTask.cs` |
| 2.2 | 实现 `SupportTask` (支援任务) | `Assets/Script/GamePlay/AI/Tasks/SupportTask.cs` |
| 2.3 | 实现 `DefendTask` (防御任务) | `Assets/Script/GamePlay/AI/Tasks/DefendTask.cs` |
| 2.4 | 实现 `SkillTask` (技能任务) | `Assets/Script/GamePlay/AI/Tasks/SkillTask.cs` |
| 2.5 | 实现 `MoveTask` (战术走位任务) | `Assets/Script/GamePlay/AI/Tasks/MoveTask.cs` |
| 2.6 | 实现 `WaitTask` (待机任务 - 兜底) | `Assets/Script/GamePlay/AI/Tasks/WaitTask.cs` |

### Phase 3: 集成与替换 (预计 1-2 天)

| 步骤 | 内容 | 涉及文件 |
|------|------|---------|
| 3.1 | 修改 `TurnManager.StartUnitTurn()` 调用 `AITaskSystem` | `TurnManager.cs` |
| 3.2 | 保留 `EnemyAIManager` 作为兼容层 (可选), 或直接移除 | `EnemyAIManager.cs` |
| 3.3 | 修改 `TacticalMapManager` 支持战略图更新 | `TacticalMapManager.cs` |
| 3.4 | 配置 `UnitClassSO` 的性格默认值 | `UnitClassSO` ScriptableObjects |

### Phase 4: 调试与平衡 (预计 2-3 天)

| 步骤 | 内容 |
|------|------|
| 4.1 | 添加 AI Debug 可视化 (Gizmos 显示任务、计划路径、竞价分数) |
| 4.2 | 添加 Debug 日志系统 (可开关的任务系统详细日志) |
| 4.3 | 调整各个效用函数的权重系数 |
| 4.4 | 测试各职业在不同场景下的 AI 行为是否符合预期 |

### Phase 5: 扩展 (后续迭代)

| 步骤 | 内容 |
|------|------|
| 5.1 | 实现多单位协同任务 (CoordinatedTask) |
| 5.2 | 实现关卡级战略任务系统 (PersistentTask) |
| 5.3 | 实现 AI 学习/适应 (根据玩家行为调整策略) |
| 5.4 | 实现行为树可视化编辑器 (Inspector 中配置任务优先级) |

---

## 附录: 文件结构规划

```
Assets/Script/GamePlay/AI/
├── AITaskSystem.cs          // 主入口，MonoBehaviour 单例
├── AIDirector.cs            // 任务生成器
├── TaskBidding.cs           // 竞价系统
├── AITaskExecutor.cs        // 计划执行器
├── ClassTaskWeight.cs       // 职业-任务权重计算
├── AIPlan.cs                // 执行计划
├── AIPlanStep.cs            // 计划步骤
└── Tasks/
    ├── AITask.cs            // 任务基类 + AITaskType 枚举
    ├── AttackTask.cs        // 进攻任务
    ├── SupportTask.cs       // 支援任务
    ├── DefendTask.cs         // 防御任务
    ├── SkillTask.cs         // 技能使用任务
    ├── MoveTask.cs          // 战术走位任务
    └── WaitTask.cs          // 待机任务
```

### 命名空间约定

```
namespace GamePlay.AI           // AITaskSystem, AIDirector, TaskBidding, AITaskExecutor
namespace GamePlay.AI.Tasks     // AITask, AttackTask, SupportTask, DefendTask, SkillTask, MoveTask, WaitTask
```

遵循项目已有的命名空间规范 (`Assets/Script/GamePlay/AI/` → `namespace GamePlay.AI`)
