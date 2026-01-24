这是一个非常棒的工程思维！将设计文档化是项目成功的基石。

下面我为你准备了一份详细的 Markdown 文档，你可以直接复制保存为 `GameDesign.md`。

文档之后，我会专门回答你关于 **“数据驱动”** 和 **“存档加载”** 的疑问。

---

# 模块化设计文档：方块肉鸽战棋 (Blocky Spire Tactics)

## 0. 核心架构理念

* **数据驱动 (Data-Driven)**：所有游戏内容（角色属性、技能效果、关卡配置）与代码逻辑分离，使用 ScriptableObject 存储。
* **事件驱动 (Event-Driven)**：模块间通过事件中心解耦，避免“意大利面条式”的相互引用。
* **组合优于继承**：Buff 和技能效果采用组件组合的方式，而非深层继承。

---

## 1. 模块详解与职责

### 1.1 基础数值模块 (Core Stats Module)

* **职责**：定义游戏世界最底层的数学逻辑。
* **核心类**：
* `StatSystem` (数值容器)：存放 HP, ATK, DEF, RES 等。
* `DamageInfo` (数据结构)：封装伤害来源、目标、数值、类型（物理/法术/真实）。
* `CombatCalculator` (工具类)：静态方法，传入 `DamageInfo`，返回最终扣血量。


* **关键接口**：
* `CalculateDamage(source, target, rawAmount, type)`



### 1.2 角色成长模块 (Character Module)

* **职责**：管理棋子的持久化数据和运行时状态。
* **核心类**：
* `CharacterData` (ScriptableObject)：配置表。包含名字、模型预制体、初始属性、**攻击范围数组**。
* `CharacterInstance` (类)：运行时对象。包含当前等级、经验值、当前HP。
* `LevelingSystem` (逻辑)：处理经验获取、等级提升、属性成长公式。


* **关键功能**：
* 处理武器概念：武器不作为独立物品，而是绑定在 `CharacterData` 中的攻击范围和特效配置。



### 1.3 战斗核心模块 (Battle Core Module)

* **职责**：处理战斗内的空间关系和流程控制。
* **核心类**：
* `GridManager`：生成棋盘、管理地块数据 (Walkable/Blocked)、计算曼哈顿距离。
* `UnitController`：棋子的 MonoBehaviour，控制动画、移动补间、血条UI。
* `TurnManager`：状态机 (FSM)。管理 `PlayerTurn` -> `EnemyTurn` -> `Settlement` 的循环。


* **关键逻辑**：
* 寻路算法 (BFS/A*)。
* 处理单位在格子上的位置同步。



### 1.4 技能与效果模块 (Skill System)

* **职责**：定义“做什么”和“怎么做”。
* **核心类**：
* `SkillData` (ScriptableObject)：技能元数据（图标、CD、范围形状）。
* `Effect` (抽象基类)：所有具体行为的父类。
* `DamageEffect`, `HealEffect`, `BuffEffect` (子类)：具体的逻辑实现。


* **运作方式**：
* 一个 `SkillData` 包含一个 `List<Effect>`。释放技能时遍历执行这些 Effect。



### 1.5 Buff 与状态模块 (Buff System)

* **职责**：处理持续性效果和被动触发逻辑。
* **核心类**：
* `BuffBase`：定义生命周期钩子 (`OnTurnStart`, `OnHit`, `OnDie`)。
* `BuffManager`：挂载在每个 Unit 上，管理 Buff 列表。


* **关键逻辑**：
* 层数堆叠规则 (Stacking Rules)。
* Buff 的清除与老化 (Decay)。



### 1.6 藏品/遗物模块 (Relic System)

* **职责**：全局被动效果，改变游戏规则。
* **核心类**：
* `RelicData` (ScriptableObject)：藏品描述、图标。
* `RelicController`：监听全局事件总线。


* **交互**：
* 订阅 `GlobalEvents.OnBattleStart` 或 `GlobalEvents.OnKillEnemy` 来触发效果。



### 1.7 肉鸽流程模块 (Run Manager)

* **职责**：串联战斗，管理 Meta Game。
* **核心类**：
* `MapGenerator`：生成节点树 (Start -> Elite -> Rest -> Boss)。
* `RunState`：保存当前层数、玩家携带的棋子列表、拥有的藏品、金币。
* `ShopSystem`：处理买卖逻辑，升级棋子逻辑。



---

## 2. 建议的实现顺序 (Roadmap)

### 阶段一：原型验证 (The Prototype)

1. **数值层**：写好 `DamageInfo` 和简单的伤害公式。
2. **网格层**：在场景里生成 8x8 的格子，实现点击格子移动物体。
3. **战斗交互**：实现“靠近敌人点击攻击”，扣除对方 HP，对方死亡消失。
* *目标：能玩通一个简单的“移动-攻击-杀怪”闭环。*



### 阶段二：数据框架 (The Framework)

4. **数据驱动**：创建 `CharacterData` (SO)，通过配置生成不同的单位。
5. **回合制**：实现 `TurnManager`，控制玩家动完敌人动。
6. **Buff系统**：实现最基础的 Buff（如：下回合受到伤害增加）。
* *目标：战斗有了规则和顺序。*



### 阶段三：内容填充 (The Content)

7. **技能系统**：将普通攻击重构为一种“技能”，并添加第2个技能（如治疗）。
8. **流程控制**：写一个简单的地图界面，点击节点进入战斗场景。
9. **成长系统**：实现战斗胜利结算，获得经验，棋子升级。
* *目标：游戏有了循环 (Loop)。*



### 阶段四：扩展与打磨 (Polish)

10. **藏品系统**：接入事件中心，实现第一个藏品。
11. **商店与休息**：实现非战斗节点逻辑。
12. **存档系统**：最后实现数据的保存与读取。

---