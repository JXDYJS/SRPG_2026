# 敌人AI系统开发计划

**文档版本**: v1.0  
**创建日期**: 2026-04-04  
**目标**: 实现智能敌人AI，支持移动决策、技能选择和战术评估  

---

## 目录

1. [任务总览](#任务总览)
2. [阶段1：基础移动能力](#阶段1基础移动能力)
3. [阶段2：技能决策系统](#阶段2技能决策系统)
4. [阶段3：战术AI框架](#阶段3战术ai框架)
5. [阶段4：高级AI特性](#阶段4高级ai特性)
6. [附录：算法详解](#附录算法详解)

---

## 任务总览

### 优先级与难度矩阵

| 阶段 | 任务 | 优先级 | 难度 | 依赖 |
|:----:|------|:------:|:----:|------|
| 1 | 移动范围计算 | P0 | ★★☆ | 无 |
| 1 | 可达位置查询 | P0 | ★★☆ | 移动范围计算 |
| 1 | 最近攻击位置查找 | P0 | ★★★ | 可达位置查询 |
| 2 | 技能可用性检查 | P0 | ★★☆ | 无 |
| 2 | 技能价值评估 | P1 | ★★★ | 技能可用性检查 |
| 2 | 最优技能选择 | P1 | ★★★ | 技能价值评估 |
| 3 | 威胁评估系统 | P1 | ★★★ | 基础移动+技能决策 |
| 3 | 位置评分系统 | P1 | ★★★★ | 威胁评估系统 |
| 3 | AI状态机 | P2 | ★★★★ | 位置评分系统 |
| 4 | 协作AI | P2 | ★★★★★ | AI状态机 |
| 4 | 学习机制 | P3 | ★★★★★ | 协作AI |

### 任务依赖图

```
阶段1: 基础移动能力
├── 移动范围计算
│   └── 可达位置查询
│       └── 最近攻击位置查找 ←─┐
│                               │
阶段2: 技能决策系统            │
├── 技能可用性检查              │
│   └── 技能价值评估            │
│       └── 最优技能选择 ←──────┼──→ 基础AI决策完成
│                               │
阶段3: 战术AI框架              │
├── 威胁评估系统 ←──────────────┘
│   └── 位置评分系统
│       └── AI状态机
│           └── 高级决策完成
│
阶段4: 高级AI特性
├── 协作AI
│   └── 学习机制
```

---

## 阶段1：基础移动能力

### 1.1 移动范围计算

**重要性**: P0（阻塞性）  
**难度**: ★★☆  
**前置条件**: 无  

#### 目标效果
获取单位在当前回合可以移动到的所有格子，考虑：
- 单位移动点数
- 地形消耗
- 其他单位阻挡
- Z轴高度差（跳跃高度限制）

#### 算法详解：BFS移动范围计算

```csharp
/// <summary>
/// 计算单位可移动范围
/// </summary>
public HashSet<GridTile> CalculateMovementRange(MapUnit unit, int movementPoints)
{
    var reachableTiles = new HashSet<GridTile>();
    var visited = new Dictionary<GridTile, int>();
    var queue = new Queue<(GridTile tile, int cost)>();
    
    var startTile = unit.CurrentTile;
    queue.Enqueue((startTile, 0));
    visited[startTile] = 0;
    
    while (queue.Count > 0)
    {
        var (currentTile, currentCost) = queue.Dequeue();
        
        if (currentCost > movementPoints) continue;
        if (currentTile != startTile) reachableTiles.Add(currentTile);
        
        foreach (var neighbor in currentTile.GetNeighbors())
        {
            if (IsTileBlocked(neighbor, unit)) continue;
            
            int heightDiff = Mathf.Abs(neighbor.Height - currentTile.Height);
            if (heightDiff > unit.JumpHeight) continue;
            
            int moveCost = CalculateMoveCost(currentTile, neighbor, unit);
            int totalCost = currentCost + moveCost;
            
            if (!visited.ContainsKey(neighbor) || visited[neighbor] > totalCost)
            {
                visited[neighbor] = totalCost;
                queue.Enqueue((neighbor, totalCost));
            }
        }
    }
    
    return reachableTiles;
}

private bool IsTileBlocked(GridTile tile, MapUnit movingUnit)
{
    var unitOnTile = UnitManager.Instance.GetUnitAt(tile);
    if (unitOnTile != null && unitOnTile != movingUnit)
        return unitOnTile.Faction != movingUnit.Faction;
    return !tile.IsWalkable;
}

private int CalculateMoveCost(GridTile from, GridTile to, MapUnit unit)
{
    int baseCost = 1 + to.TerrainCost;
    int heightDiff = to.Height - from.Height;
    
    if (heightDiff > 0) baseCost += heightDiff * 2;
    else if (heightDiff < 0) baseCost += Mathf.Abs(heightDiff);
    
    return baseCost;
}
```

**复杂度分析**：
- 时间复杂度: O(N + M)，N是可达格子数，M是边数
- 空间复杂度: O(N)

---

### 1.2 可达位置查询

**重要性**: P0  
**难度**: ★★☆  
**前置条件**: 1.1 移动范围计算  

#### 目标效果
提供常用查询功能：
- 获取可到达的所有格子
- 检查特定格子是否可达
- 获取到达某格子的路径
- 获取路径消耗

#### 代码实现

```csharp
public class MovementRangeQuery
{
    private HashSet<GridTile> _reachableTiles;
    private Dictionary<GridTile, int> _costMap;
    private Dictionary<GridTile, GridTile> _cameFrom;
    
    public MovementRangeQuery(MapUnit unit, int movementPoints)
    {
        CalculateRange(unit, movementPoints);
    }
    
    public IEnumerable<GridTile> GetAllReachableTiles()
    {
        return _reachableTiles;
    }
    
    public bool IsReachable(GridTile tile)
    {
        return _reachableTiles.Contains(tile);
    }
    
    public List<GridTile> GetPathTo(GridTile targetTile)
    {
        if (!_reachableTiles.Contains(targetTile)) return null;
            
        var path = new List<GridTile>();
        var current = targetTile;
        
        while (_cameFrom.ContainsKey(current))
        {
            path.Add(current);
            current = _cameFrom[current];
        }
        
        path.Reverse();
        return path;
    }
    
    public int GetCostTo(GridTile tile)
    {
        if (_costMap.ContainsKey(tile)) return _costMap[tile];
        return int.MaxValue;
    }
}
```

---

### 1.3 最近攻击位置查找

**重要性**: P0（阻塞性）  
**难度**: ★★★  
**前置条件**: 1.2 可达位置查询  

#### 目标效果
找出能攻击到目标的最佳位置：
- 优先选择消耗移动点最少的位置
- 考虑不同攻击范围的技能
- 考虑地形优势（高地等）
- 返回最优位置和路径

#### 算法详解

```csharp
public AttackPositionResult FindBestAttackPosition(
    MapUnit attacker, MapUnit target, SkillDataSO skill = null)
{
    skill = skill ?? attacker.NormalAttackSkill;
    int attackRange = skill.Range;
    
    var movementRange = new MovementRangeQuery(attacker, attacker.MovementPoints);
    var reachableTiles = movementRange.GetAllReachableTiles().ToList();
    var validAttackPositions = new List<AttackPositionCandidate>();
    
    foreach (var tile in reachableTiles)
    {
        int distanceToTarget = GridUtils.GetManhattanDistance(tile, target.CurrentTile);
        
        if (distanceToTarget <= attackRange && HasLineOfSight(tile, target.CurrentTile, attacker))
        {
            var path = movementRange.GetPathTo(tile);
            int moveCost = movementRange.GetCostTo(tile);
            float score = CalculatePositionScore(tile, target, attacker, moveCost, path.Count);
            
            validAttackPositions.Add(new AttackPositionCandidate
            {
                Tile = tile, Path = path, MoveCost = moveCost, 
                Score = score, DistanceToTarget = distanceToTarget
            });
        }
    }
    
    if (validAttackPositions.Count == 0)
        return FindClosestApproachPosition(attacker, target, movementRange);
    
    var bestPosition = validAttackPositions
        .OrderByDescending(p => p.Score)
        .ThenBy(p => p.MoveCost)
        .First();
    
    return new AttackPositionResult
    {
        Success = true, TargetTile = bestPosition.Tile, Path = bestPosition.Path,
        MoveCost = bestPosition.MoveCost, Score = bestPosition.Score
    };
}

private float CalculatePositionScore(GridTile tile, MapUnit target, MapUnit attacker, int moveCost, int pathLength)
{
    float score = 100f;
    
    // 高地优势
    int heightAdvantage = tile.Height - target.CurrentTile.Height;
    score += heightAdvantage * 10f;
    
    // 距离目标越近越好
    int distance = GridUtils.GetManhattanDistance(tile, target.CurrentTile);
    score -= distance * 2f;
    
    // 移动消耗越低越好
    score -= moveCost * 3f;
    
    // 路径长度越短越好
    score -= pathLength * 1f;
    
    // 安全距离（远离其他敌人）
    var nearbyEnemies = GetNearbyEnemies(tile, attacker, 3);
    score -= nearbyEnemies.Count * 5f;
    
    return score;
}

private bool HasLineOfSight(GridTile from, GridTile to, MapUnit attacker)
{
    var line = GridUtils.GetLine(from, to);
    
    foreach (var tile in line)
    {
        if (tile == from || tile == to) continue;
            
        var unit = UnitManager.Instance.GetUnitAt(tile);
        if (unit != null && unit.Faction != attacker.Faction)
            return false;
            
        int heightDiff = Mathf.Abs(tile.Height - from.Height);
        if (heightDiff > 2) return false;
    }
    
    return true;
}

private AttackPositionResult FindClosestApproachPosition(MapUnit attacker, MapUnit target, MovementRangeQuery movementRange)
{
    var reachableTiles = movementRange.GetAllReachableTiles();
    
    GridTile bestTile = null;
    int bestDistance = int.MaxValue;
    List<GridTile> bestPath = null;
    
    foreach (var tile in reachableTiles)
    {
        int distance = GridUtils.GetManhattanDistance(tile, target.CurrentTile);
        if (distance < bestDistance)
        {
            bestDistance = distance;
            bestTile = tile;
            bestPath = movementRange.GetPathTo(tile);
        }
    }
    
    if (bestTile != null)
    {
        return new AttackPositionResult
        {
            Success = true, TargetTile = bestTile, Path = bestPath,
            MoveCost = movementRange.GetCostTo(bestTile), Score = 0
        };
    }
    
    return new AttackPositionResult { Success = false };
}

private List<MapUnit> GetNearbyEnemies(GridTile center, MapUnit self, int range)
{
    var enemies = new List<MapUnit>();
    var allUnits = UnitManager.Instance.GetAllUnits();
    
    foreach (var unit in allUnits)
    {
        if (unit == self || unit.Faction == self.Faction) continue;
            
        int distance = GridUtils.GetManhattanDistance(center, unit.CurrentTile);
        if (distance <= range) enemies.Add(unit);
    }
    
    return enemies;
}

#region 数据结构定义

public class AttackPositionCandidate
{
    public GridTile Tile;
    public List<GridTile> Path;
    public int MoveCost;
    public float Score;
    public int DistanceToTarget;
}

public class AttackPositionResult
{
    public bool Success;
    public GridTile TargetTile;
    public List<GridTile> Path;
    public int MoveCost;
    public float Score;
}

#endregion
```


---

## 阶段2：技能决策系统

### 2.1 技能可用性检查

**重要性**: P0  
**难度**: ★★☆  
**前置条件**: 无  

#### 目标效果
确定哪些技能当前可以释放：
- 检查技能冷却状态
- 检查资源消耗（MP/AP等）
- 检查施放条件（生命值、特定状态等）
- 检查施法距离内的有效目标

#### 代码实现

```csharp
/// <summary>
/// 技能可用性检查器
/// </summary>
public class SkillAvailabilityChecker
{
    /// <summary>
    /// 获取单位所有可用的技能
    /// </summary>
    public List<SkillDataSO> GetAvailableSkills(MapUnit unit)
    {
        var availableSkills = new List<SkillDataSO>();
        var allSkills = unit.GetAllSkills();
        
        foreach (var skill in allSkills)
        {
            if (IsSkillAvailable(unit, skill))
            {
                availableSkills.Add(skill);
            }
        }
        
        return availableSkills;
    }
    
    /// <summary>
    /// 检查单个技能是否可用
    /// </summary>
    public bool IsSkillAvailable(MapUnit unit, SkillDataSO skill)
    {
        // 1. 检查冷却
        if (!IsCooldownReady(unit, skill))
            return false;
        
        // 2. 检查资源消耗
        if (!HasEnoughResources(unit, skill))
            return false;
        
        // 3. 检查施放条件
        if (!MeetsCastConditions(unit, skill))
            return false;
        
        // 4. 检查是否有有效目标
        if (!HasValidTargets(unit, skill))
            return false;
        
        return true;
    }
    
    /// <summary>
    /// 检查技能冷却是否就绪
    /// </summary>
    private bool IsCooldownReady(MapUnit unit, SkillDataSO skill)
    {
        int currentCooldown = unit.SkillCooldowns.GetCooldown(skill.SkillID);
        return currentCooldown <= 0;
    }
    
    /// <summary>
    /// 检查是否有足够的资源
    /// </summary>
    private bool HasEnoughResources(MapUnit unit, SkillDataSO skill)
    {
        var stats = unit.Character.statSystem;
        
        // 检查MP
        if (stats.currentMP < skill.MPCost)
            return false;
        
        // 检查AP（行动点）
        if (skill.APCost > 0 && unit.ActionPoints < skill.APCost)
            return false;
        
        // 检查其他特殊资源
        foreach (var resourceCost in skill.AdditionalCosts)
        {
            if (!unit.HasEnoughResource(resourceCost.ResourceType, resourceCost.Amount))
                return false;
        }
        
        return true;
    }
    
    /// <summary>
    /// 检查是否满足施放条件
    /// </summary>
    private bool MeetsCastConditions(MapUnit unit, SkillDataSO skill)
    {
        var stats = unit.Character.statSystem;
        
        foreach (var condition in skill.CastConditions)
        {
            switch (condition.ConditionType)
            {
                case CastConditionType.HealthPercentage:
                    float hpPercent = (float)stats.currentHP / stats.maxHP;
                    if (!condition.Compare(hpPercent))
                        return false;
                    break;
                    
                case CastConditionType.HasBuff:
                    if (!unit.HasBuff(condition.BuffID))
                        return false;
                    break;
                    
                case CastConditionType.TargetCount:
                    int targetCount = CountValidTargets(unit, skill);
                    if (!condition.Compare(targetCount))
                        return false;
                    break;
            }
        }
        
        return true;
    }
    
    /// <summary>
    /// 检查是否有有效目标
    /// </summary>
    private bool HasValidTargets(MapUnit unit, SkillDataSO skill)
    {
        return CountValidTargets(unit, skill) > 0;
    }
    
    /// <summary>
    /// 计算有效目标数量
    /// </summary>
    private int CountValidTargets(MapUnit unit, SkillDataSO skill)
    {
        int count = 0;
        var potentialTargets = GetPotentialTargets(unit, skill);
        
        foreach (var target in potentialTargets)
        {
            if (IsValidTarget(unit, target, skill))
                count++;
        }
        
        return count;
    }
    
    /// <summary>
    /// 获取所有潜在目标
    /// </summary>
    private List<MapUnit> GetPotentialTargets(MapUnit unit, SkillDataSO skill)
    {
        var targets = new List<MapUnit>();
        var allUnits = UnitManager.Instance.GetAllUnits();
        
        foreach (var otherUnit in allUnits)
        {
            if (otherUnit == unit) continue;
            
            // 根据技能目标类型筛选
            switch (skill.TargetType)
            {
                case TargetType.Enemy:
                    if (otherUnit.Faction != unit.Faction)
                        targets.Add(otherUnit);
                    break;
                    
                case TargetType.Ally:
                    if (otherUnit.Faction == unit.Faction)
                        targets.Add(otherUnit);
                    break;
                    
                case TargetType.Self:
                    // 自身为目标的情况特殊处理
                    break;
                    
                case TargetType.All:
                    targets.Add(otherUnit);
                    break;
            }
        }
        
        return targets;
    }
    
    /// <summary>
    /// 检查是否是有效目标
    /// </summary>
    private bool IsValidTarget(MapUnit caster, MapUnit target, SkillDataSO skill)
    {
        // 1. 检查距离
        int distance = GridUtils.GetManhattanDistance(caster.CurrentTile, target.CurrentTile);
        if (distance > skill.Range)
            return false;
        
        // 2. 检查视线
        if (skill.RequireLineOfSight && !HasLineOfSight(caster.CurrentTile, target.CurrentTile, caster))
            return false;
        
        // 3. 检查目标状态
        if (target.Character.statSystem.currentHP <= 0)
            return false;
        
        // 4. 检查特殊条件
        foreach (var condition in skill.TargetConditions)
        {
            if (!condition.IsValid(target))
                return false;
        }
        
        return true;
    }
}
```

**核心要点**：
1. **分层检查**：冷却 → 资源 → 条件 → 目标，快速失败
2. **模块化设计**：每个检查独立，便于扩展
3. **性能优化**：缓存中间结果，避免重复计算

