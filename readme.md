
---

# 方块肉鸽战棋 (Blocky Spire Tactics) - 技术实现手册 v1.0

## 📂 模块 1：核心数值与伤害流水线 (Namespace: `Status`)

**目标**：建立一套解耦的伤害计算系统，允许 Buff 和 藏品 (Relics) 介入并修改伤害数值。

### 1.1 核心接口 `IDamageModifier` (新增)

* **文件位置**: `Assets/Script/Core/Status/IDamageModifier.cs`
* **职责**: 任何想要改变伤害的东西（Buff/藏品/被动技能）都必须实现此接口。
* **代码蓝图**:
```csharp
namespace Status.damage {
    public interface IDamageModifier {
        // 优先级：数字越小越先计算（建议：固定数值修改用 0，百分比修改用 100）
        int Priority { get; }

        // 当拥有者发起攻击时触发
        // ref damage: 允许直接修改伤害值
        void OnOutgoingDamage(ref float damage, DamageInfo info);

        // 当拥有者受到攻击时触发
        void OnIncomingDamage(ref float damage, DamageInfo info);
    }
}

```



### 1.2 伤害计算器 `CombatCalculator` (重写)

* **文件位置**: `Assets/Script/Core/Status/CombatCalculator.cs`
* **逻辑流程**:
1. 提取基础伤害 (`info.damage`)。
2. **阶段 A (输出修正)**: 获取攻击者身上所有的 `IDamageModifier`，按优先级排序，依次调用 `OnOutgoingDamage`。
3. **阶段 B (基础防御)**: 此时的伤害值是“理论伤害”。根据 `info.damageType` 计算防御减免 (物理减法 / 魔法百分比)。
4. **阶段 C (受击修正)**: 获取防御者身上所有的 `IDamageModifier`，按优先级排序，依次调用 `OnIncomingDamage`。
5. **阶段 D (保底)**: 确保伤害 `>= 0`，返回最终值。



### 1.3 伤害信息 `DamageInfo` (优化)

* **建议**: 确保 `CharacterInstance source` 和 `CharacterInstance target` 都在里面，方便修改器判断（比如“如果目标血量低于30%则伤害翻倍”）。

---

## 📂 模块 2：角色与全局成长 (Namespace: `Character` & `Managers`)

**目标**：实现“战斗赚取全局经验 -> 提升全局等级 -> 获得强化点 -> 强化具体棋子”的循环。

### 2.1 角色配置 `CharacterData` (完善)

* **文件位置**: `Assets/Script/Core/Character/CharacterData.cs`
* **新增字段**:
```csharp
[Header("成长配置")]
public int HP_Growth = 10;  // 每次强化+10 HP
public int ATK_Growth = 2;  // 每次强化+2 ATK
public int DEF_Growth = 1;
// public List<SkillData> UnlockableSkills; // 未来扩展：每级解锁的技能

```



### 2.2 全局等级配置 `GlobalLevelConfig` (新增)

* **文件位置**: `Assets/Script/Core/GlobalLevelConfig.cs` (ScriptableObject)
* **字段**:
* `List<int> ExpRequirements`: 索引 0 代表 1级升2级所需经验，索引 1 代表 2级升3级...



### 2.3 升级管理器 `LevelingManager` (新增)

* **文件位置**: `Assets/Script/Managers/LevelingManager.cs`
* **职责**: 管理“银行”账户（经验和点数）。
* **变量**:
* `int GlobalLevel` (当前队伍等级)
* `int CurrentExp` (当前经验池)
* `int UpgradePoints` (可用强化点数)


* **核心方法 `AddExp(int amount)**`:
* 加经验，循环检查是否满足 `GlobalLevelConfig` 的升级门槛。
* 如果升级：`GlobalLevel++`, `UpgradePoints++`。


* **核心方法 `TryUpgradeUnit(CharacterInstance unit)**`:
* 检查 `UpgradePoints > 0` 和 `unit.level < 5`。
* 如果通过：
* `UpgradePoints--`
* 修改 `unit.statSystem` 的 BaseValue (加上 Data 里的 Growth 数值)。
* **满血奖励**: `unit.statSystem.currentHP = unit.statSystem.maxHP.getValue()`。
* `unit.level++`。





---

## 📂 模块 3：战斗实体与交互 (Namespace: `Gameplay`)

**目标**：把数据层 (`CharacterInstance`) 变成 3D 场景里能动的方块。

### 3.1 战斗单位 `MapUnit` (核心 MonoBehaviour)

* **文件位置**: `Assets/Script/Gameplay/Units/MapUnit.cs`
* **继承**: `MonoBehaviour`
* **职责**: 它是连接“数据”和“画面”的桥梁。
* **核心变量**:
* `CharacterInstance _data`: 数据的引用。
* `Animator _animator`: 控制动画。
* `Vector2Int GridPosition`: 当前在棋盘的哪一格。


* **关键方法 `GetDamageModifiers()**`:
* 创建 `List<IDamageModifier>`。
* 遍历 `_data` 里的 BuffManager，把实现了接口的 Buff 加进去。
* (如果是玩家单位) 访问 `RunManager.Relics`，把实现了接口的藏品加进去。
* 返回列表给计算器使用。


* **关键方法 `TakeDamage(float amount)**`:
* 调用 `_data.statSystem.currentHP -= amount`。
* 更新头顶血条 UI。
* 播放受击动画。
* 检测死亡：如果 HP <= 0，触发死亡流程。



### 3.2 棋盘系统 `GridManager`

* **职责**:
* `LogicalGrid`: 二维数组 `Node[,]`，记录哪个格子是墙，哪个格子站了人。
* `WorldToGrid(Vector3)` / `GridToWorld(Vector2Int)`: 坐标转换。
* `GetPath(start, end)`: A* 寻路算法，返回路径列表。



---

## 📂 模块 4：藏品系统 (Namespace: `Gameplay.Relics`)

**目标**：实现“改变规则”的物品。

### 4.1 藏品基类 `RelicBase`

* **文件位置**: `Assets/Script/Gameplay/Relics/RelicBase.cs`
* **继承**: `ScriptableObject`, `IDamageModifier`
* **虚方法**:
* `OnOutgoingDamage`: 默认空实现。
* `OnIncomingDamage`: 默认空实现。
* `OnBattleStart`: 战斗开始时触发（如：获得一层护盾）。



### 4.2 示例：火焰背心 `Relic_FireVest`

* **代码逻辑**:
```csharp
public override void OnIncomingDamage(ref float damage, DamageInfo info) {
    if (info.damageType == DamageType.Fire) {
        damage *= 0.5f; // 这里的代码实现了具体功能
    }
}

```



---

## 🛠️ 执行清单：你接下来要做什么？

请严格按照以下顺序编写代码，每完成一步，确保没有编译错误。

### 第一阶段：打通数据与伤害 (纯代码，无场景)

1. **创建接口**: 编写 `IDamageModifier.cs`。
2. **完善计算器**: 修改 `CombatCalculator.cs`，把 Switch 改成流水线逻辑（获取接口列表 -> 循环调用 -> 基础计算）。
3. **完善数据**: 修改 `CharacterData.cs` 加入 `HP_Growth` 等成长字段。

### 第二阶段：场景实体化 (Unity 场景工作)

4. **创建 MapUnit**: 编写 `MapUnit.cs`。
* 写一个 `Setup(CharacterInstance data)` 方法。
* 在 `Start` 里测试：创建一个临时的 `CharacterData`，生成一个 `CharacterInstance`，传给 `MapUnit`，看看血量是不是读对了。


5. **实现移动**: 利用你现有的 `Astar.cs` 和 `Test_ClickMove.cs`，把逻辑整合进 `MapUnit`。让它能根据 `GridManager` 的指令移动。

### 第三阶段：战斗闭环

6. **编写 BattleManager**:
* 状态机：`PlayerTurn`（玩家点选单位移动/攻击） -> `EnemyTurn`（AI自动行动）。


7. **攻击测试**:
* 在场景里放两个 `MapUnit`（一个玩家，一个敌人）。
* 编写逻辑：当玩家走到敌人旁边点击攻击 -> 构建 `DamageInfo` -> 调用 `CombatCalculator` -> 敌人 `TakeDamage` -> 敌人血条减少。



### 第四阶段：成长与肉鸽

8. **编写 LevelingManager**: 实现经验累加和升级点数逻辑。
9. **编写 RunManager**: 串联“战斗场景”和“休息场景”。

---

你可以把这份文档复制下来。
**现在的建议**：先不要管地图生成和商店，**集中精力完成第一阶段和第二阶段**。只要能让一个方块人读到数据，并按照新的计算公式扣血，剩下的就是堆内容了。