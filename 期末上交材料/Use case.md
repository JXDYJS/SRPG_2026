# <font style="color:rgb(31, 31, 31);">应用场景用例描述 (Use Cases)</font>
## <font style="color:rgb(31, 31, 31);">Use Case 1：跨高度地形的动态路径规划</font>
**<font style="color:rgb(31, 31, 31);">场景描述：</font>**

<font style="color:rgb(31, 31, 31);">玩家选中一名飞行单位或高机动单位（如刺客），目标点位于一个 3 格高、5 格远的体素平台上，中间隔着一堵 2 格高的围墙。</font>

+ **<font style="color:rgb(31, 31, 31);">技术实现逻辑：</font>**
    - _<font style="color:rgb(31, 31, 31);">3D A</font>__<font style="color:rgb(31, 31, 31);"> 寻路：</font>_<font style="color:rgb(31, 31, 31);">* 算法调取 </font>`<font style="color:rgb(68, 71, 70);">GridManager</font>`<font style="color:rgb(31, 31, 31);"> 中的 </font>`<font style="color:rgb(68, 71, 70);">BlockType</font>`<font style="color:rgb(31, 31, 31);"> 数据。判断当前单位的 </font>`<font style="color:rgb(68, 71, 70);">JumpHeight</font>`<font style="color:rgb(31, 31, 31);"> 属性。</font>
    - **<font style="color:rgb(31, 31, 31);">AI 辅助逻辑：</font>**<font style="color:rgb(31, 31, 31);"> 由 Gemini 生成的启发式函数 </font><font style="color:rgb(31, 31, 31);">$f(n) = g(n) + h(n)$</font><font style="color:rgb(31, 31, 31);"> 在计算 </font><font style="color:rgb(31, 31, 31);">$h(n)$</font><font style="color:rgb(31, 31, 31);"> 时引入了垂直距离权重，确保单位优先选择攀爬代价最小的路径。</font>
    - **<font style="color:rgb(31, 31, 31);">视觉反馈：</font>**`<font style="color:rgb(68, 71, 70);">GridVisualManager</font>`<font style="color:rgb(31, 31, 31);"> 动态生成由体素方块组成的“路径预览虚影”，并处理路径点在不同高度平面的平滑过渡。</font>
+ **<font style="color:rgb(31, 31, 31);">用户价值：</font>**<font style="color:rgb(31, 31, 31);"> 解决了传统 2D 战棋无法处理“立体机动”的痛点，增加了战术纵深。</font>

## <font style="color:rgb(31, 31, 31);">Use Case 2：基于 AV 时间轴的“插队”与“击退”</font>
**<font style="color:rgb(31, 31, 31);">场景描述：</font>**

<font style="color:rgb(31, 31, 31);">当前时间轴显示敌方 Boss 即将行动。玩家角色使用技能“重压打击”，命中 Boss 后产生“击退（推迟行动）”效果。</font>

+ **<font style="color:rgb(31, 31, 31);">技术实现逻辑：</font>**
    - **<font style="color:rgb(31, 31, 31);">动态 AV 计算：</font>**`<font style="color:rgb(68, 71, 70);">TimelineManager</font>`<font style="color:rgb(31, 31, 31);"> 接收到技能触发事件，重新计算 Boss 的 </font>`<font style="color:rgb(68, 71, 70);">ActionValue</font>`<font style="color:rgb(31, 31, 31);">：</font>

<font style="color:rgb(31, 31, 31);">$$NewAV = CurrentAV + (BaseAV \times PushbackRate)$$</font>

<font style="color:rgb(31, 31, 31);">。</font>

    - **<font style="color:rgb(31, 31, 31);">UI 自动排版：</font>**<font style="color:rgb(31, 31, 31);"> 使用双向扫荡算法（Two-Way Sweeping），当 Boss 的头像在时间轴上向后移动并与后续小怪头像重叠时，UI 自动计算偏移量，防止头像遮挡。</font>
    - **<font style="color:rgb(31, 31, 31);">异步表现：</font>**`<font style="color:rgb(68, 71, 70);">UniTask</font>`<font style="color:rgb(31, 31, 31);"> 确保在 Boss 受到攻击动画播放的同时，时间轴上的头像同步平滑滑动，而非瞬间跳变。</font>
+ **<font style="color:rgb(31, 31, 31);">用户价值：</font>**<font style="color:rgb(31, 31, 31);"> 直观展现“速度快慢”对战局的影响，让玩家能够精准计算“控速”策略。</font>

## <font style="color:rgb(31, 31, 31);">Use Case 3：抛物线曲射与物理阻挡判定</font>
**<font style="color:rgb(31, 31, 31);">场景描述：</font>**

<font style="color:rgb(31, 31, 31);">弓箭手试图攻击高墙后的敌人。系统需要判定这一箭是会被墙体拦截，还是能通过抛物线越过障碍。</font>

+ **<font style="color:rgb(31, 31, 31);">技术实现逻辑：</font>**
    - **<font style="color:rgb(31, 31, 31);">多阶段判定：</font>**<font style="color:rgb(31, 31, 31);"> 首先进行 </font>`<font style="color:rgb(68, 71, 70);">Data-Driven</font>`<font style="color:rgb(31, 31, 31);"> 的范围筛选（菱形 AoE），随后启动弹道模拟。</font>
    - **<font style="color:rgb(31, 31, 31);">物理采样：</font>**<font style="color:rgb(31, 31, 31);"> 算法沿抛物线轨迹进行多点射线检测（Raycast）。若路径中碰撞到 </font>`<font style="color:rgb(68, 71, 70);">BlockType.Solid</font>`<font style="color:rgb(31, 31, 31);"> 且非目标单位，则判定为“拦截”。</font>
    - **<font style="color:rgb(31, 31, 31);">渲染扩展：</font>**<font style="color:rgb(31, 31, 31);"> 使用自定义 Shader 实时渲染出一条亮色的预测弧线，并在拦截点显示红色的“Blocked”标识。</font>
+ **<font style="color:rgb(31, 31, 31);">用户价值：</font>**<font style="color:rgb(31, 31, 31);"> 强化了体素世界的物理真实感，利用高低差地形创造出“视线盲区”和“火力死角”。</font>

## <font style="color:rgb(31, 31, 31);">Use Case 4：一键撤销（Undo）错误决策</font>
**<font style="color:rgb(31, 31, 31);">场景描述：</font>**

<font style="color:rgb(31, 31, 31);">玩家指挥单位移动并释放技能后发现暴击未触发或走位失误，点击“悔棋”按钮回到回合开始前。</font>

+ **<font style="color:rgb(31, 31, 31);">技术实现逻辑：</font>**
    - **<font style="color:rgb(31, 31, 31);">Command 模式回溯：</font>**`<font style="color:rgb(68, 71, 70);">UndoSystem</font>`<font style="color:rgb(31, 31, 31);"> 从堆栈顶端取出最后执行的 </font>`<font style="color:rgb(68, 71, 70);">SkillCommand</font>`<font style="color:rgb(31, 31, 31);"> 和 </font>`<font style="color:rgb(68, 71, 70);">MoveCommand</font>`<font style="color:rgb(31, 31, 31);">。</font>
    - **<font style="color:rgb(31, 31, 31);">状态还原：</font>**<font style="color:rgb(31, 31, 31);"> 调用 </font>`<font style="color:rgb(68, 71, 70);">ITrackable.Restore(snapshot)</font>`<font style="color:rgb(31, 31, 31);">。由于移动前已记录了 </font>`<font style="color:rgb(68, 71, 70);">UnitSnapshot</font>`<font style="color:rgb(31, 31, 31);">（包含坐标、AV值、当前Buff列表），系统瞬间将对象属性重置。</font>
    - **<font style="color:rgb(31, 31, 31);">资源回收：</font>**`<font style="color:rgb(68, 71, 70);">Addressables</font>`<font style="color:rgb(31, 31, 31);"> 异步实例化的特效随指令回滚被自动标记回收，确保内存不溢出。</font>
+ **<font style="color:rgb(31, 31, 31);">用户价值：</font>**<font style="color:rgb(31, 31, 31);"> 极大地降低了战棋游戏的试错成本，允许玩家大胆尝试各种极限战术。</font>

