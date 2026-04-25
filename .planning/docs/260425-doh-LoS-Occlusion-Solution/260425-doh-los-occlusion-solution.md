# AI 威胁图视线遮挡（LoS Occlusion）架构解决方案

> **文档版本**: v1.0
> **创建日期**: 2026-04-25
> **目标**: 解决 TacticalMapManager.RebuildThreatMapSnapshot() 中威胁扩散时视线遮挡计算的两难困境
> **状态**: 方案论证完成，待实现

---

## 目录

1. [现状与瓶颈分析](#1-现状与瓶颈分析)
2. [最终架构选型论证](#2-最终架构选型论证)
3. [系统集成方案](#3-系统集成方案)
4. [性能兜底与多线程优化](#4-性能兜底与多线程优化)
5. [关键伪代码 / 接口契约定义](#5-关键伪代码--接口契约定义)

---

## 1. 现状与瓶颈分析

### 1.1 当前体素数据结构

本项目体素网格基于 `LogicalGrid` 实现，位于 `Assets/Script/GamePlay/Grid/`：

| 组件 | 类型 | 说明 |
|------|------|------|
| `blockData` | `Dictionary<Vector3Int, BlockType>` | 存储每个网格坐标的方块类型 |
| `blockYSizes` | `Dictionary<Vector3Int, float>` | 存储每个格子的 Y 轴高度（Solid=1.0, Slab=0.5） |
| `Vector3Int` | `(x, y, z)` | y 轴表示垂直高度层级 |

`BlockType` 枚举（`Assets/Script/Core/Global.cs:75`）：
- `Solid` (1.0 整砖) → **完全阻挡视线**
- `Slab` (0.5 半砖) → 低掩体，可遮挡下半身但蹲下可射击
- `Stairs` (特殊形状) → 需要特殊处理
- `Air` (空气) → 完全通透
- `Liquid` (液体) → 可视为空气

关键特征：
- **每个格子只有一个方块**（`MapData.cs` 虽定义 `stack` 但当前未使用多块堆叠）
- **高度维度** 通过 `gridPos.y + blockYSizes[gridPos]` 表达，世界坐标映射见 `MapManager.GetWorldPosition()`: `gridPos.y * cellSize + blockHeight * cellSize`
- **无显式"体积阻挡"概念**，视线阻挡仅通过 BlockType 推断
- 单位站立高度 = `gridPos.y + blockYSizes[gridPos]`，眼睛高度 ≈ 站立高度 + 1.0

### 1.2 当前威胁图瓶颈

`TacticalMapManager.RebuildThreatMapSnapshot()`（第 38-118 行）：

```
当前流程：
1. ThreatMap.Clear()
2. foreach player in alivePlayers:
   a. 计算标准化属性威胁分 (ATK, DEF, HP, Move, RES, Speed, atkDist, skillRange)
   b. 总计分数 × Aggressiveness × 10 → baseThreat
   c. XXX 网格扩散代码被注释掉（第 108-117 行）
3. 结果：ThreatMap 始终保持为空！
```

注释掉的扩散代码（第 108-117 行）原本使用曼哈顿距离线性衰减：

```csharp
// var affectedTiles = GridUtils.GetTilesInRadius(player.gridPosition, threatRadius);
// foreach (var tile in affectedTiles) {
//     int dist = GridUtils.GetManhattanDistance(player.gridPosition, tile);
//     float falloffScore = baseThreat * (1f - (float)dist / (threatRadius + 1));
//     ThreatMap.AddScore(tile, falloffScore);
// }
```

**核心矛盾**：此曼哈顿扩散未考虑遮挡，导致：
- 墙后安全区被标记为高危 → AI 不敢躲掩体
- 高度差未处理 → 低地势被标记同样威胁
- 无法反映真实战场态势

### 1.3 三种候选方案代价评估

#### 方案 A：伪遮挡（环境奖励分抵消）

| 维度 | 评估 |
|------|------|
| **思路** | 不在威胁图中加遮挡，而是在位置评分器（Location Scoring）中为掩体后格子增加"安全奖励分"抵消虚高威胁 |
| **实现成本** | ★☆☆（低）—— 只需在 EnemyAIManager 或位置评分器中加额外逻辑 |
| **性能代价** | 几乎为零，无额外网格遍历 |
| **根本问题** | **治标不治本**。威胁图失真会影响所有下游系统（撤退路径规划、范围判断等）。AI 需同时查威胁图和奖励图，逻辑复杂度翻倍 |
| **3D 高度差** | 需要额外判断高低台奖励，复杂度进一步增加 |
| **推荐度** | ❌ 不推荐作为核心方案，可作为辅助兜底 |

#### 方案 B：经典网格视线算法（Recursive Shadowcasting / Bresenham）

| 维度 | 评估 |
|------|------|
| **思路** | 在威胁扩散时，从每个玩家向半径内每格子发射 Bresenham 直线，检查路径上是否有 Solid 方块阻挡 |
| **实现成本** | ★★☆（中）—— 需实现 3D Bresenham 或 DDA 体素遍历 |
| **性能代价** | Brute-force Bresenham: O(P × R³)。P=6, R=15 时约 6×15³=20,250 射线 × 15 格子 = 303,750 次 GetBlock() |
| **3D 高度差** | 3D Bresenham 或 DDA 可自然处理高度差 |
| **优化空间** | 大：Shadowcasting 降为 O(P × R²)；预计算可见性矩阵降为查表 O(P × R²) |
| **推荐度** | ⭐ **推荐为基础方案** —— Recursive Shadowcasting 2D + 高度差后处理 |

#### 方案 C：预计算缓存（全图可见性矩阵）

| 维度 | 评估 |
|------|------|
| **思路** | 地形加载后预计算全图格子间可见性，运行时查表 |
| **实现成本** | ★★★（高）—— 需实现全对全可见性计算和序列化存储 |
| **性能代价** | 构建 O(N² × D)。N≈1600 (40×40)，D≈15：1600²×15≈38M 次 GetBlock()，约 0.1-0.5s（Burst 后） |
| **内存代价** | O(N²)。用 BitArray 约 1600²/8 = 320KB；用 short 约 5MB |
| **场景变更** | 地形变化时缓存失效，需重建或增量更新 |
| **推荐度** | ⚠️ 有条件推荐 —— 地形静态时最优，可破坏时需要增量更新 |

---

## 2. 最终架构选型论证

### 推荐方案：Recursive Shadowcasting (2D) + 高度差后处理修正

#### 选型理由矩阵

| 标准 | 评分 | 理由 |
|------|------|------|
| 实现复杂度 | ★★☆ | 2D Shadowcasting 为成熟算法，有大量参考实现；3D 修正通过后处理而非完全 3D 算法 |
| 运行性能 | ★★★★ | Shadowcasting O(P × R²) 优于 brute-force Bresenham O(P × R³) |
| 3D 适配 | ★★★ | 2D 平面投影 + Y 轴高度差阈值的组合策略适用于本项目体素体系 |
| 动态地形 | ★★★ | 单位移动后不改变地形，仅需重新计算动态遮挡（其他单位） |
| 可维护性 | ★★★★ | 算法逻辑清晰，核心函数聚焦明确，易于测试和调整 |
| 成本效益 | ★★★★★ | 实现代价远低于纯 3D 方案，效果覆盖 95%+ 实际战棋场景 |

#### 基本原理

```
对每个玩家单位 P，在其 threatRadius 内：
1. 将 3D 体素投影到 2D (x, z) 平面
2. 使用 Recursive Shadowcasting 计算 2D 可见性
3. 对可见格子，应用高度差修正：
   - 目标 Y 低于阻挡物顶部 → "半可见"（威胁 × 0.5 梯度系数）
   - 目标 Y 显著高于阻挡物顶部 → 恢复为完全可见（high-ground overlook）
   - 目标与玩家同层且路径有 Solid → 完全不可见（威胁 × leakFactor）
4. 不可见格子 → 威胁值 × LEAK_FACTOR（默认 0.0）
```

#### 为何不选纯 3D Shadowcasting

纯 3D 体素 Shadowcasting（3D 递归阴影投射）复杂度高、实现困难。本项目威胁辐射大部分发生在 2D 平面（单位在同一地面移动）。3D 特殊场景通过以下策略覆盖：

| 场景 | 2D+后处理策略 |
|------|---------------|
| **同层高低台** | Y 差阈值判定：站立高度差 > jumpHeight 视为不可达，不计算威胁 |
| **跨层视野（高打低）** | 玩家站立高度 > 墙顶 → overlook，墙不阻挡视线 |
| **跨层视野（低打高）** | 墙完全遮蔽低处对高处的视线，除非目标部分露出 |
| **半砖掩体** | Slab 仅阻挡低高度射线；站立单位眼睛高度 1.0 > 0.5，Slab 不阻挡站立视线 |

---

## 3. 系统集成方案

### 3.1 嵌入 RebuildThreatMapSnapshot() 流程

```
RebuildThreatMapSnapshot()
  1. ThreatMap.Clear()
  2. foreach player in alivePlayers:
     ├─ 2a. 计算 baseThreat（属性评分，现有逻辑完全保留）
     ├─ 2b. 获取 threatRadius（攻击范围+移动距离，现有逻辑完全保留）
     ├─ 2c. OcclusionRadialDiffuse(
     │       player.gridPosition,
     │       threatRadius,
     │       baseThreat,
     │       logicalGrid,
     │       out Dictionary<Vector3Int, float> tileThreats
     │     )
     └─ 2d. foreach (kvp in tileThreats):
              ThreatMap.AddScore(kvp.Key, kvp.Value)
  3. Debug: 可选输出热力图可视化
```

**改动量**：
- `TacticalMapManager.cs`：替换第 108-117 行注释 → 调用 `OcclusionRadialDiffuse()`
- 新增 `OcclusionRadialDiffuse()`（可放在 TacticalMapManager 内或独立 Helper 类）
- 新增 2D Shadowcasting 核心逻辑
- `InfluenceMapLayer.cs`：无需修改

### 3.2 3D 高度差视野盲区处理

#### 核心策略：2D Shadowcasting + 三维修正层

```csharp
void OcclusionRadialDiffuse(
    Vector3Int origin, int radius, float baseThreat,
    LogicalGrid grid, out Dictionary<Vector3Int, float> result)
{
    result = new Dictionary<Vector3Int, float>();

    // Phase 1: 2D Recursive Shadowcasting
    // 投影到 2D：BlockType != Air 视为不透明
    bool[,] isOpaque2D = ProjectToOpaqueMap(grid, origin, radius);
    bool[,] visible2D = Shadowcast2D(radius, isOpaque2D);

    // Phase 2: 3D 高度差修正
    float originStandY = GetStandHeight(grid, origin);
    float originEyeY = originStandY + EYE_HEIGHT; // 眼睛高度 ≈ 1.0

    foreach (Vector3Int tile in GetTilesInRadius(origin, radius))
    {
        int lx = tile.x - origin.x + radius;
        int lz = tile.z - origin.z + radius;

        if (!visible2D[lx, lz])
        {
            // 2D 不可见 → 检查高度差能否"露头"
            float targetStandY = GetStandHeight(grid, tile);
            float highestObsY = GetHighestObstacleTop(grid, origin, tile);

            if (originEyeY > highestObsY && targetStandY > highestObsY)
            {
                // 高打低：玩家眼睛高于墙顶，目标也高于墙顶 → 仍可见
                result[tile] = baseThreat * GetFalloff(origin, tile, radius);
            }
            else
            {
                // 真的被挡住了
                result[tile] = baseThreat * LEAK_FACTOR;
            }
        }
        else
        {
            // 2D 可见 → 普通距离衰减
            result[tile] = baseThreat * GetFalloff(origin, tile, radius);
        }
    }
}
```

#### 三种高度差场景策略

| 场景 | 条件 | 策略 |
|------|------|------|
| **高打低** | originEyeY > obstacleTop && targetY > obstacleTop | 无视该墙，标记可见 |
| **低打高** | originEyeY ≤ obstacleTop | 完全遮蔽，标记不可见 |
| **半砖掩体** | obstacleTop = 0.5 (Slab) | originEyeY=1.0 > 0.5，不阻挡，标记可见 |

### 3.3 静态 vs 动态遮挡分层

```
OcclusionRadialDiffuse
├── Phase A: 静态地形遮挡（基于 blockData）
│   └── 只考虑 Solid/Slab 方块
│   └── 可缓存（见第 4 节）
│
└── Phase B: 动态单位遮挡（可选，性能敏感可跳过）
    └── 将其他单位（重甲=半透明遮挡）标记为阻挡
    └── 大型单位（2×2）每个占用格子独立阻挡
```

---

## 4. 性能兜底与多线程优化

### 4.1 性能预算

| 参数 | 典型值 | 极端值 |
|------|--------|--------|
| 玩家单位数 P | 4-6 | 10 |
| 威胁半径 R | 10-15 | 20 |
| 网格大小 N | 40×40=1600 | 80×80=6400 |
| 2D Shadowcasting 遍历量 | 6×15²=1,350 | 10×20²=4,000 |
| 3D 后处理遍历量 | 同左 + 少量 Bresenham | 同左 |
| 预计单帧耗时 | < 0.5ms | < 2ms |

**结论**：对于本项目体素规模（40×40），纯单线程亦可在单帧内完成，无需额外多线程。

### 4.2 静态遮挡预计算缓存（中级优化）

当地形为静态时（无破坏/建造），可直接预计算并缓存可见性矩阵：

```csharp
public class StaticVisibilityCache
{
    private NativeParallelHashMap<Vector2Int, BitArray> _visibilityFromOrigin;

    public void Build(LogicalGrid grid, int maxRadius)
    {
        // 对每个 (x,z) 格子执行 2D Shadowcasting
        // 结果存入 BitArray（按相对坐标偏移编码）
    }

    public bool IsVisible(Vector3Int from, Vector3Int to, int radius)
    {
        // O(1) 查表
    }
}
```

**缓存更新时机**：
- 地图加载完成后（`MapManager.LoadFromSO()` 之后）
- 地形改变时（局部增量更新或全量重建）


### 4.3 Job System + Burst 完全体（深度优化）

当遭遇极端规模（80×80 网格、10+ 单位、25+ 威胁半径）时启用：

```csharp
[BurstCompile]
public struct ShadowcastPerOriginJob : IJobParallelFor
{
    [ReadOnly] public NativeArray<byte> flatGrid;      // 行优先 2D 投影
    [ReadOnly] public NativeArray<Vector3Int> origins; // 玩家位置列表
    [ReadOnly] public NativeArray<float> baseThreats;  // 对应基础威胁
    public int radius;

    [WriteOnly] public NativeArray<float> threatRing;  // [originIdx * ringSize + localIdx]

    public void Execute(int index)
    {
        Vector3Int o = origins[index];
        float bt = baseThreats[index];
        int ringSize = (2 * radius + 1) * (2 * radius + 1);
        // 1. 提取 isOpaque 子矩阵
        // 2. Shadowcast2D
        // 3. 写入 threatRing
    }
}
```

并行策略：每个玩家单位分配一个 IJobParallelFor 任务，各计算自己的威胁环。主线程在 `JobHandle.ScheduleBatch()` + `Complete()` 后合并结果。

---

## 5. 关键伪代码 / 接口契约定义

### 5.1 核心接口

```csharp
namespace GamePlay.Grid.Occlusion
{
    /// <summary>
    /// 威胁扩散配置
    /// </summary>
    public struct ThreatDiffuseConfig
    {
        public float leakFactor;       // 遮挡格子的残余威胁系数（默认 0.0）
        public float eyeHeight;        // 视线高度偏移（默认 1.0）
        public float slabBlockHeight;  // 半砖阻挡判定高度（默认 0.3，膝盖高度）
        public bool enableDynamicOcclusion; // 是否计算单位遮挡
        public bool enableHeightCorrection; // 是否启用高度差修正
    }

    /// <summary>
    /// 遮挡感知威胁扩散器 —— 核心计算入口
    /// </summary>
    public interface IThreatOcclusionDiffuser
    {
        /// <summary>
        /// 从指定原点以遮挡感知方式扩散威胁
        /// </summary>
        Dictionary<Vector3Int, float> Diffuse(
            Vector3Int origin,
            int radius,
            float baseThreat,
            LogicalGrid grid,
            ThreatDiffuseConfig config
        );
    }

    /// <summary>
    /// 2D 递归阴影投射器
    /// </summary>
    public interface IShadowCaster2D
    {
        /// <summary>
        /// 计算 2D 可见性掩码
        /// </summary>
        /// <param name="radius">扩散半径（菱形/切比雪夫距离）</param>
        /// <param name="isOpaque">不透明掩码 [2R+1, 2R+1]，中心为原点</param>
        /// <returns>可见性掩码 true=可见</returns>
        bool[,] ComputeVisibility(int radius, bool[,] isOpaque);
    }

    /// <summary>
    /// 3D 高度差修正器 —— 对 2D 可见性格子进行高度差后处理
    /// </summary>
    public interface IHeightCorrector
    {
        /// <summary>
        /// 修正单个格子的可见性状态
        /// </summary>
        VisibilityState Correct(
            Vector3Int origin,
            Vector3Int target,
            LogicalGrid grid,
            bool visible2D,
            float originEyeHeight
        );
    }

    public enum VisibilityState
    {
        Full,       // 完全可见，威胁全额
        Partial,    // 部分可见（如半砖遮挡下半身），威胁 × 0.5
        Blocked     // 完全不可见，威胁 × leakFactor
    }

    /// <summary>
    /// 静态遮挡缓存（可选优化）
    /// </summary>
    public interface IStaticVisibilityCache
    {
        void Build(LogicalGrid grid, int maxRadius);
        bool IsVisible(Vector3Int from, Vector3Int to, int maxRadius);
        void InvalidateRegion(Vector3Int center, int radius); // 局部失效
    }
}
```

### 5.2 数据结构契约

```csharp
/// <summary>
/// 影响图层（现有 API，无需修改）
/// 用于 ThreatMap.AddScore(position, score)
/// </summary>
public class InfluenceMapLayer
{
    public void Clear();
    public void AddScore(Vector3Int position, float score);
    public float GetScore(Vector3Int position);
}

/// <summary>
/// TacticalMapManager 增量改动
/// </summary>
public class TacticalMapManager : MonoBehaviour
{
    public InfluenceMapLayer ThreatMap { get; private set; }
    public InfluenceMapLayer StrategicMap { get; private set; }

    // === 新增依赖注入 ===
    private IThreatOcclusionDiffuser _diffuser;
    private ThreatDiffuseConfig _config;

    // === RebuildThreatMapSnapshot 改造 ===
    public void RebuildThreatMapSnapshot()
    {
        ThreatMap.Clear();
        var alivePlayers = UnitManager.Instance.GetAllAlivePlayers();

        foreach (var player in alivePlayers)
        {
            if (player.Character == null) continue;

            int attackRange = player.getNormalAttackSkill()?.CastMaxRange ?? 1;
            int threatRadius = attackRange + player.Character.characterData.MoveRange;

            // ... 现有 baseThreat 计算逻辑保持不变 ...

            // 替换注释代码：遮挡感知扩散
            var tileThreats = _diffuser.Diffuse(
                player.gridPosition,
                threatRadius,
                baseThreat,
                MapManager.Instance.logicalGrid,
                _config
            );

            foreach (var kvp in tileThreats)
            {
                ThreatMap.AddScore(kvp.Key, kvp.Value);
            }
        }
    }
}
```

### 5.3 辅助函数契约

```csharp
/// <summary>
/// 网格工具扩展
/// </summary>
public static class GridOcclusionUtils
{
    /// <summary>
    /// 获取格子的站立高度（地面 + 方块厚度）
    /// </summary>
    public static float GetStandHeight(LogicalGrid grid, Vector3Int pos)
    {
        return pos.y + grid.GetBlockYSize(pos);
    }

    /// <summary>
    /// 获取从 origin 到 target 的直线上最高障碍物顶部高度
    /// </summary>
    public static float GetHighestObstacleTop(LogicalGrid grid,
        Vector3Int origin, Vector3Int target)
    {
        var line = GetLinePath(origin, target);
        float maxTop = float.MinValue;
        foreach (var pos in line)
        {
            if (pos == origin || pos == target) continue;
            BlockType block = grid.GetBlock(pos);
            if (block == BlockType.Solid || block == BlockType.Stairs)
            {
                float top = pos.y + grid.GetBlockYSize(pos);
                if (top > maxTop) maxTop = top;
            }
        }
        return maxTop == float.MinValue ? 0f : maxTop;
    }

    /// <summary>
    /// 距离衰减函数（线性）
    /// </summary>
    public static float GetDistanceFalloff(Vector3Int from, Vector3Int to, int radius)
    {
        int dist = Mathf.Abs(from.x - to.x) + Mathf.Abs(from.z - to.z);
        return 1f - (float)dist / (radius + 1);
    }

    /// <summary>
    /// 获取半径内的所有格子坐标
    /// </summary>
    public static List<Vector3Int> GetTilesInRadius(Vector3Int center, int radius)
    {
        var result = new List<Vector3Int>();
        for (int x = -radius; x <= radius; x++)
        for (int z = -radius; z <= radius; z++)
        {
            if (Mathf.Abs(x) + Mathf.Abs(z) <= radius)
                result.Add(new Vector3Int(center.x + x, center.y, center.z + z));
        }
        return result;
    }

    /// <summary>
    /// 将 3D 体素投影到 2D 不透明掩码（仅静态地形）
    /// </summary>
    public static bool[,] ProjectToOpaqueMap(LogicalGrid grid,
        Vector3Int origin, int radius)
    {
        int size = 2 * radius + 1;
        var map = new bool[size, size];
        for (int x = -radius; x <= radius; x++)
        for (int z = -radius; z <= radius; z++)
        {
            var pos = new Vector3Int(origin.x + x, origin.y, origin.z + z);
            var block = grid.GetBlock(pos);
            // Solid 和 Stairs 视为完全不透明
            // Slab 根据配置可能部分透明
            map[x + radius, z + radius] = (block == BlockType.Solid || block == BlockType.Stairs);
        }
        return map;
    }
}
```

### 5.4 2D Recursive Shadowcasting 接口

```
ComputeVisibility(radius, isOpaque[2R+1, 2R+1]) → visible[2R+1, 2R+1]

算法伪代码：
1. 初始化 visible 全部为 false
2. visible[radius, radius] = true // 原点自身可见
3. 对每个八分象限 (octant 0-7):
   CastLight(1, 1.0, 0.0, radius, octant)

CastLight(row, startSlope, endSlope, radius, octant):
  if startSlope < endSlope: return
  for col in 0..radius:
    for row in computeRowRange(col, startSlope, endSlope):
      localPos = TransformOctant(col, row, octant)
      worldPos = origin + localPos
      visible[worldPos] = true
      if isOpaque[localPos]:
        CastLight(row + 1, startSlope, (col - 0.5) / (row + 0.5), radius, octant)
        startSlope = (col + 0.5) / (row - 0.5)
        if startSlope < endSlope: return
```

> **注**：上述 Shadowcasting 为经典递归法，具体实现可参考 Roguebasin 的"FOV using recursive shadowcasting"或 Adam Milazzo 的改进版。对于本项目需求，建议用迭代队列代替递归以控制栈深度。

---

## 附录：代码修改清单

| 文件 | 改动类型 | 说明 |
|------|---------|------|
| `Assets/Script/GamePlay/Grid/TacticalMapManager.cs` | 修改 | 替换第 108-117 行注释 → `_diffuser.Diffuse()` |
| `Assets/Script/GamePlay/Grid/TacticalMapManager.cs` | 新增 | `_diffuser` 字段 + `_config` + 构造函数或 Awake 注入 |
| `Assets/Script/GamePlay/Grid/ThreatOcclusionDiffuser.cs` | **新建** | `IThreatOcclusionDiffuser` 实现 + `OcclusionRadialDiffuse` 完整逻辑 |
| `Assets/Script/GamePlay/Grid/Shadowcast2D.cs` | **新建** | `IShadowCaster2D` 实现 + Recursive Shadowcasting 算法 |
| `Assets/Script/GamePlay/Grid/HeightCorrector.cs` | **新建** | `IHeightCorrector` 实现 + 3D 高度差修正逻辑 |
| `Assets/Script/GamePlay/Grid/GridOcclusionUtils.cs` | **新建** | 辅助函数：GetStandHeight, GetHighestObstacleTop, ProjectToOpaqueMap 等 |
| `Assets/Script/GamePlay/Grid/StaticVisibilityCache.cs` | **新建** | 可选优化：预计算可见性矩阵缓存 |
| `Assets/Script/GamePlay/Grid/InfluenceMapLayer.cs` | 无需修改 | 现有 API 保持不变 |

---

## 附录：推荐实施顺序

```
Phase 1 (核心功能，1-2天):
├── GridOcclusionUtils.cs (辅助函数)
├── Shadowcast2D.cs (2D Shadowcasting 核心)
├── HeightCorrector.cs (3D 高度差修正)
└── ThreatOcclusionDiffuser.cs (编排入口)

Phase 2 (集成，0.5天):
└── TacticalMapManager.cs 改造 + 测试

Phase 3 (优化，按需):
├── StaticVisibilityCache.cs (预计算缓存)
└── ShadowcastJob (Job System + Burst 并行)
```

