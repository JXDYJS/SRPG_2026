# <font style="color:rgb(31, 31, 31);">技术栈选型依据深度研究报告</font>
## <font style="color:rgb(31, 31, 31);">1. 核心开发环境：Unity 2022.3 LTS + C#</font>
**<font style="color:rgb(31, 31, 31);">选型依据：</font>**

+ **<font style="color:rgb(31, 31, 31);">成熟的 3D 物理与坐标系统：</font>**<font style="color:rgb(31, 31, 31);"> 战棋游戏涉及大量的射线检测（Raycast）用于网格拾取，以及复杂的 3D 空间坐标转换。Unity 完善的物理引擎和 </font>`<font style="color:rgb(68, 71, 70);">Transform</font>`<font style="color:rgb(31, 31, 31);"> 体系能极大地降低体素寻路算法的实现门槛。</font>
+ **<font style="color:rgb(31, 31, 31);">高度可扩展的脚本化对象（ScriptableObject）：</font>**<font style="color:rgb(31, 31, 31);"> 战棋游戏是典型的内容密集型游戏。利用 </font>`<font style="color:rgb(68, 71, 70);">ScriptableObject</font>`<font style="color:rgb(31, 31, 31);"> 实现数据驱动（Data-Driven），可以将技能数值、地形属性、Buff 逻辑从代码中抽离。这不仅方便 LLM 生成结构化的 JSON/YAML 配置文件，也便于开发者进行可视化调优。</font>
+ **<font style="color:rgb(31, 31, 31);">C# 语言特性：</font>**<font style="color:rgb(31, 31, 31);"> 相比 C++，C# 的反射机制和现代语法（如 Records, Generics）更利于构建复杂的 Buff 效果器和事件系统。</font>

## <font style="color:rgb(31, 31, 31);">2. 异步时序控制：UniTask 替代原生 Coroutine</font>
**<font style="color:rgb(31, 31, 31);">选型依据：</font>**

+ **<font style="color:rgb(31, 31, 31);">解决“回调地狱”与性能瓶颈：</font>**<font style="color:rgb(31, 31, 31);"> 战棋游戏的战斗表现（移动 -> 播放动画 -> 触发特效 -> 弹出伤害 -> 结算死亡）是一连串严格的异步时序。原生 </font>`<font style="color:rgb(68, 71, 70);">Coroutine</font>`<font style="color:rgb(31, 31, 31);"> (协程) 产生大量的 GC 且无法返回结果。</font>
+ **<font style="color:rgb(31, 31, 31);">强类型与生命周期管理：</font>**`<font style="color:rgb(68, 71, 70);">UniTask</font>`<font style="color:rgb(31, 31, 31);"> 支持 </font>`<font style="color:rgb(68, 71, 70);">await</font>`<font style="color:rgb(31, 31, 31);"> 语法，能像编写同步代码一样编写异步逻辑。其提供的 </font>`<font style="color:rgb(68, 71, 70);">CancellationToken</font>`<font style="color:rgb(31, 31, 31);"> 机制可以完美解决“玩家在动画播放中突然退出或悔棋”导致的逻辑残留问题。</font>
+ **<font style="color:rgb(31, 31, 31);">LLM 友好性：</font>**<font style="color:rgb(31, 31, 31);"> 异步状态机的逻辑比复杂的协程嵌套更容易被 AI 理解和生成。</font>

## <font style="color:rgb(31, 31, 31);">3. 架构模式：Command 模式 + ITrackable 接口</font>
**<font style="color:rgb(31, 31, 31);">选型依据：</font>**

+ **<font style="color:rgb(31, 31, 31);">悔棋机制的刚需：</font>**<font style="color:rgb(31, 31, 31);"> 战棋游戏的核心痛点之一是“误操作回滚”。传统的全状态快照会消耗巨大内存，而 </font>**<font style="color:rgb(31, 31, 31);">Command 模式</font>**<font style="color:rgb(31, 31, 31);"> 记录的是“位移”、“扣血”等原子操作。</font>
+ **<font style="color:rgb(31, 31, 31);">解耦输入与执行：</font>**<font style="color:rgb(31, 31, 31);"> 将玩家的操作（Input）转化为指令对象（Command），可以轻松实现 AI 托管、录像回放以及多人对战的指令同步。</font>
+ **<font style="color:rgb(31, 31, 31);">状态快照优化：</font>**<font style="color:rgb(31, 31, 31);"> 配合 </font>`<font style="color:rgb(68, 71, 70);">ITrackable</font>`<font style="color:rgb(31, 31, 31);"> 接口，仅对受影响的单位进行增量快照，确保在实现“无限次悔棋”的同时，内存占用保持在极低水平。</font>

## <font style="color:rgb(31, 31, 31);">4. 资源管理：Addressables 系统</font>
**<font style="color:rgb(31, 31, 31);">选型依据：</font>**

+ **<font style="color:rgb(31, 31, 31);">内存压力释放：</font>**<font style="color:rgb(31, 31, 31);"> 体素游戏可能包含成百上千种不同的方块预制体。传统的 </font>`<font style="color:rgb(68, 71, 70);">Resources</font>`<font style="color:rgb(31, 31, 31);"> 文件夹会在启动时构建巨大的索引表。</font>`<font style="color:rgb(68, 71, 70);">Addressables</font>`<font style="color:rgb(31, 31, 31);"> 允许按需异步加载，并能显著缩减首包体积。</font>
+ **<font style="color:rgb(31, 31, 31);">资源引用解耦：</font>**<font style="color:rgb(31, 31, 31);"> 通过 </font>`<font style="color:rgb(68, 71, 70);">AssetReference</font>`<font style="color:rgb(31, 31, 31);"> 替代直接引用，防止了场景文件因引用过多资源而变得巨大且难以合并（Git Conflict），这对于单人开发中的版本管理至关重要。</font>

## <font style="color:rgb(31, 31, 31);">5. 渲染管线：URP + 自定义 ScriptableRendererFeature</font>
**<font style="color:rgb(31, 31, 31);">选型依据：</font>**

+ **<font style="color:rgb(31, 31, 31);">性能与表现的平衡：</font>**<font style="color:rgb(31, 31, 31);"> 考虑到体素风格对光影（如 AO、阴影质量）有较高要求，但又需在移动端或笔记本上流畅运行，URP 是最佳平衡点。</font>
+ **<font style="color:rgb(31, 31, 31);">图形学拓展空间：</font>**<font style="color:rgb(31, 31, 31);"> 开发者具备 Shader 编写能力，通过自定义 </font>`<font style="color:rgb(68, 71, 70);">RendererFeature</font>`<font style="color:rgb(31, 31, 31);"> 可以实现诸如“网格边缘高亮”、“迷雾遮罩”以及基于 Compute Shader 的后期处理，这些是标准管线难以灵活实现的。</font>

---

## <font style="color:rgb(31, 31, 31);">6. AI 辅助研发范式：LLM-Augmented Workflow</font>
**<font style="color:rgb(31, 31, 31);">选型依据：</font>**

+ **<font style="color:rgb(31, 31, 31);">数学与算法外包：</font>**<font style="color:rgb(31, 31, 31);"> 3D A* 算法中的 G/H 值计算、抛物线弹道的高度插值、UI 头像重叠算法等纯逻辑模块，是 LLM 的擅长领域。</font>
+ **<font style="color:rgb(31, 31, 31);">代码脚手架生成：</font>**<font style="color:rgb(31, 31, 31);"> 利用 LLM 快速生成大量的样板代码（Boilerplate），如 Command 类的定义、Buff 接口的基类、Addressables 的加载封装。</font>
+ **<font style="color:rgb(31, 31, 31);">架构咨询：</font>**<font style="color:rgb(31, 31, 31);"> 在遇到系统耦合过紧时，利用 LLM 作为“架构评审员”，提供重构方案建议（如引入观察者模式优化 UI 更新）。</font>

