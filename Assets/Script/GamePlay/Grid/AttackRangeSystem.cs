using System.Collections.Generic;
using UnityEngine;
using Character.data;
using Global;
using GamePlay.Skill;
using GamePlay.Units;
using Managers;
using Command;
using Utils;

namespace GamePlay.Grid
{
    /// <summary>
    /// 纯数学工具类：负责计算各种形状的格子覆盖范围
    /// 重构为双层判定体系：施法范围 + AoE影响范围
    /// </summary>
    public static class AttackRangeSystem
    {
        // ================= 施法范围计算 =================
        
        /// <summary>
        /// 计算施法范围（玩家可以选取的格子）
        /// 重要：所有输出的坐标都必须是有效的脚底方块坐标
        /// </summary>
        public static List<Vector3Int> GetCastRange3D(Vector3Int casterPos, SkillDataSO skill)
        {
            List<Vector3Int> result3D = new List<Vector3Int>();

            Vector2Int start2D = new Vector2Int(casterPos.x, casterPos.z);
            
            // 对于施法范围，我们不需要目标位置，只需要计算以施法者为中心的范围
            List<Vector2Int> range2D = GetCastGrids(start2D, skill.CastPattern, skill.CastMinRange, skill.CastMaxRange);

            int heightUp = skill.CastVerticalRange;
            int heightDown = skill.CastVerticalRange;

            // 预计算施法者的世界坐标（每个 tile 循环都要用，提到外面避免重复计算）
            Vector3 casterWorldPos = MapManager.Instance.GetWorldPosition(casterPos);

            foreach (Vector2Int p2d in range2D)
            {
                for (int yOffset = -heightDown; yOffset <= heightUp; yOffset++)
                {
                    int targetY = casterPos.y + yOffset;
                    Vector3Int targetPos3D = new Vector3Int(p2d.x, targetY, p2d.y);
                    
                    // 重要：只添加有效的脚底方块坐标
                    // CanPlaceSkillOnTile已经检查了"固体方块+上方空气"的条件
                    if (!CanPlaceSkillOnTile(targetPos3D))
                    {
                        continue;
                    }

                    // 新增：根据弹道轨迹类型检查目标点是否可达
                    
                    // 计算正确的位置，考虑格子高度
                    Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(targetPos3D);
                    
                    bool isReachable = CheckTrajectoryReachable(casterWorldPos, targetWorldPos, skill);
                    if (!isReachable)
                    {
                        continue;
                    }

                    result3D.Add(targetPos3D);
                }
            }

            return result3D;
        }

        /// <summary>
        /// 快速距离预过滤：检查 tile 是否在 skill 的理论最大距离内
        /// 纯数学判距，不查轨迹/地形，用于跳过不可能命中的 tile
        /// </summary>
        public static bool IsWithinCastDistance(Vector3Int casterPos, Vector3Int targetPos, SkillDataSO skill)
        {
            int dx = Mathf.Abs(targetPos.x - casterPos.x);
            int dz = Mathf.Abs(targetPos.z - casterPos.z);
            int maxR = skill.CastMaxRange;

            switch (skill.CastPattern)
            {
                case CastPatternType.Diamond:
                    return (dx + dz) <= maxR;
                case CastPatternType.Square:
                    return Mathf.Max(dx, dz) <= maxR;
                case CastPatternType.Line:
                    return (dx == 0 && dz <= maxR) || (dz == 0 && dx <= maxR);
                case CastPatternType.Global:
                    return true;
            }

            return false;
        }

        /// <summary>
        /// 零分配点对点判定：casterPos 能否对 targetPos 施放 skill
        /// 纯数学判断 + 轨迹检查，不构建 List
        /// </summary>
        public static bool CanCastTo(Vector3Int casterPos, Vector3Int targetPos, SkillDataSO skill)
        {
            // 对自己施法：无视 CastMinRange/CastMaxRange，只需落脚点有效
            if (casterPos == targetPos && skill.TargetType == TargetType.Self)
            {
                return CanPlaceSkillOnTile(targetPos);
            }

            // 1. 2D shape check based on CastPattern
            int dx = targetPos.x - casterPos.x;
            int dz = targetPos.z - casterPos.z;
            bool inPattern = false;

            switch (skill.CastPattern)
            {
                case CastPatternType.Diamond:
                {
                    int dist = Mathf.Abs(dx) + Mathf.Abs(dz);
                    inPattern = dist >= skill.CastMinRange && dist <= skill.CastMaxRange;
                    break;
                }
                case CastPatternType.Square:
                {
                    int chebDist = Mathf.Max(Mathf.Abs(dx), Mathf.Abs(dz));
                    inPattern = chebDist >= skill.CastMinRange && chebDist <= skill.CastMaxRange;
                    break;
                }
                case CastPatternType.Line:
                {
                    if (dx == 0 && dz != 0)
                        inPattern = Mathf.Abs(dz) >= skill.CastMinRange && Mathf.Abs(dz) <= skill.CastMaxRange;
                    else if (dz == 0 && dx != 0)
                        inPattern = Mathf.Abs(dx) >= skill.CastMinRange && Mathf.Abs(dx) <= skill.CastMaxRange;
                    break;
                }
                case CastPatternType.Global:
                {
                    inPattern = true;
                    break;
                }
            }

            if (!inPattern)
            {
                return false;
            }

            // 2. Vertical range check
            int dy = targetPos.y - casterPos.y;
            if (Mathf.Abs(dy) > skill.CastVerticalRange)
            {
                return false;
            }

            // 3. CanPlaceSkillOnTile
            if (!CanPlaceSkillOnTile(targetPos))
            {
                return false;
            }

            // 4. CheckTrajectoryReachable
            Vector3 casterWorld = MapManager.Instance.GetWorldPosition(casterPos);
            Vector3 targetWorld = MapManager.Instance.GetWorldPosition(targetPos);
            return CheckTrajectoryReachable(casterWorld, targetWorld, skill);
        }

        /// <summary>
        /// 计算AoE影响范围（技能实际影响的格子）
        /// 重要：所有输出的坐标都必须是有效的脚底方块坐标
        /// </summary>
        public static List<Vector3Int> GetAoERange3D(Vector3Int casterPos, Vector3Int targetPos, SkillPhase phase)
        {
            List<Vector3Int> result3D = new List<Vector3Int>();

            Vector3Int origin3D = phase.OriginType == AoEOriginType.CasterPosition ? casterPos : targetPos;
            Vector2Int origin2D = new Vector2Int(origin3D.x, origin3D.z);
            Vector2Int caster2D = new Vector2Int(casterPos.x, casterPos.z);
            Vector2Int target2D = new Vector2Int(targetPos.x, targetPos.z);

            List<Vector2Int> range2D = GetAoEGrids(origin2D, caster2D, target2D, phase.AoEPattern, phase.AoERadius);

            int heightUp = phase.AoEVerticalRange;
            int heightDown = phase.AoEVerticalRange;

            foreach (Vector2Int p2d in range2D)
            {
                for (int yOffset = -heightDown; yOffset <= heightUp; yOffset++)
                {
                    int targetY = origin3D.y + yOffset;
                    Vector3Int pos3D = new Vector3Int(p2d.x, targetY, p2d.y);
                    
                    if (CanPlaceSkillOnTile(pos3D))
                    {
                        result3D.Add(pos3D);
                    }
                }
            }

            return result3D;
        }

        /// <summary>
        /// 箭雨（SkyDrop）技能的 AoE 范围计算
        /// 垂直下落逻辑：每个 (x,z) 格子只命中暴露在天空下的最顶层目标
        /// </summary>
        public static List<Vector3Int> GetSkyDropAoERange(Vector3Int targetPos, SkillPhase phase)
        {
            List<Vector3Int> result = new List<Vector3Int>();

            Vector2Int origin2D = new Vector2Int(targetPos.x, targetPos.z);
            Vector2Int caster2D = new Vector2Int(targetPos.x, targetPos.z);
            Vector2Int target2D = new Vector2Int(targetPos.x, targetPos.z);

            List<Vector2Int> aoe2D = GetAoEGrids(origin2D, caster2D, target2D, phase.AoEPattern, phase.AoERadius);

            foreach (Vector2Int pos2D in aoe2D)
            {
                Vector3Int topSolidPos = Vector3Int.zero;
                bool foundTop = false;

                for (int y = 255; y >= 0; y--)
                {
                    Vector3Int checkPos = new Vector3Int(pos2D.x, y, pos2D.y);
                    BlockType blockType = MapManager.Instance.logicalGrid.GetBlock(checkPos);

                    if (blockType != BlockType.Air)
                    {
                        topSolidPos = checkPos;
                        foundTop = true;
                        break;
                    }
                }

                if (foundTop)
                {
                    Vector3Int unitPos = topSolidPos;
                    if (UnitManager.Instance.GetUnitAt(unitPos) != null)
                    {
                        result.Add(unitPos);
                    }
                }
            }

            return result;
        }

        // ================= 施法范围形状算法 =================

        private static List<Vector2Int> GetCastGrids(Vector2Int center, CastPatternType type, int minRange, int maxRange)
        {
            List<Vector2Int> result = new List<Vector2Int>();

            switch (type)
            {
                case CastPatternType.Diamond:
                    result = GetDiamondShape(center, minRange, maxRange);
                    break;
                case CastPatternType.Square:
                    result = GetSquareShape(center, minRange, maxRange);
                    break;
                case CastPatternType.Line:
                    // 对于施法范围，Line模式需要特殊处理，显示所有可能的方向
                    result = GetLineCastShape(center, maxRange);
                    break;
                case CastPatternType.Global:
                    // 全局范围 - 返回所有可到达的格子
                    // 这里需要地图管理器提供所有可到达的格子
                    result = GetAllReachableTiles(center);
                    break;
            }

            return result;
        }

        // ================= AoE范围形状算法 =================

        private static List<Vector2Int> GetAoEGrids(Vector2Int origin, Vector2Int caster, Vector2Int target, AoEPatternType type, int radius)
        {
            List<Vector2Int> result = new List<Vector2Int>();

            switch (type)
            {
                case AoEPatternType.SingleTarget:
                    result = GetSingleTargetShape(origin);
                    break;
                case AoEPatternType.Cross:
                    result = GetCrossShape(origin, radius);
                    break;
                case AoEPatternType.Diamond:
                    result = GetDiamondShape(origin, 0, radius);
                    break;
                case AoEPatternType.Square:
                    result = GetSquareShape(origin, 0, radius);
                    break;
                case AoEPatternType.Cone:
                    result = GetConeShape(origin, caster, target, radius);
                    break;
                case AoEPatternType.LinePiercing:
                    result = GetLinePiercingShape(origin, caster, target, radius);
                    break;
                case AoEPatternType.Ring:
                    result = GetRingShape(origin, 1, radius);
                    break;
            }

            return result;
        }

        // ================= 具体形状算法实现 =================

        // 1. 菱形 (Manhattan Distance)
        private static List<Vector2Int> GetDiamondShape(Vector2Int center, int minR, int maxR)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            for (int x = -maxR; x <= maxR; x++)
            {
                for (int y = -maxR; y <= maxR; y++)
                {
                    int dist = Mathf.Abs(x) + Mathf.Abs(y);
                    if (dist >= minR && dist <= maxR)
                    {
                        tiles.Add(center + new Vector2Int(x, y));
                    }
                }
            }
            return tiles;
        }

        // 2. 方形 (Chebyshev Distance)
        private static List<Vector2Int> GetSquareShape(Vector2Int center, int minR, int maxR)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            for (int x = -maxR; x <= maxR; x++)
            {
                for (int y = -maxR; y <= maxR; y++)
                {
                    int dist = Mathf.Max(Mathf.Abs(x), Mathf.Abs(y));
                    if (dist >= minR && dist <= maxR)
                    {
                        tiles.Add(center + new Vector2Int(x, y));
                    }
                }
            }
            return tiles;
        }

        // 3. 直线施法范围（显示所有可能的方向）
        private static List<Vector2Int> GetLineCastShape(Vector2Int center, int length)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            
            Vector2Int[] directions = new Vector2Int[]
            {
                Vector2Int.up,
                Vector2Int.down,
                Vector2Int.left,
                Vector2Int.right
            };

            foreach (Vector2Int dir in directions)
            {
                for (int i = 1; i <= length; i++)
                {
                    tiles.Add(center + dir * i);
                }
            }
            return tiles;
        }

        // 4. 单体目标
        private static List<Vector2Int> GetSingleTargetShape(Vector2Int origin)
        {
            return new List<Vector2Int> { origin };
        }

        // 5. 十字形
        private static List<Vector2Int> GetCrossShape(Vector2Int center, int radius)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            
            for (int i = -radius; i <= radius; i++)
            {
                if (i == 0) continue;
                tiles.Add(new Vector2Int(center.x + i, center.y));
                tiles.Add(new Vector2Int(center.x, center.y + i));
            }
            tiles.Add(center);
            
            return tiles;
        }

        // 6. 扇形/锥形 (需要方向)
        private static List<Vector2Int> GetConeShape(Vector2Int start, Vector2Int caster, Vector2Int target, int length)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            Vector2Int dir = GetDirection(caster, target);
            if (dir == Vector2Int.zero) dir = Vector2Int.right;

            for (int i = 1; i <= length; i++)
            {
                Vector2Int forwardPos = start + dir * i;
                tiles.Add(forwardPos);

                int sideWidth = i - 1;
                Vector2Int perpDir = new Vector2Int(dir.y, dir.x);

                for (int w = 1; w <= sideWidth; w++)
                {
                    tiles.Add(forwardPos + perpDir * w);
                    tiles.Add(forwardPos - perpDir * w);
                }
            }
            return tiles;
        }

        // 7. 穿透直线 (会穿透多个目标)
        private static List<Vector2Int> GetLinePiercingShape(Vector2Int start, Vector2Int caster, Vector2Int target, int length)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            Vector2Int dir = GetDirection(caster, target);
            if (dir == Vector2Int.zero) dir = Vector2Int.right;

            for (int i = 1; i <= length; i++)
            {
                tiles.Add(start + dir * i);
            }
            return tiles;
        }

        // 8. 环形
        private static List<Vector2Int> GetRingShape(Vector2Int center, int minR, int maxR)
        {
            return GetDiamondShape(center, Mathf.Max(1, minR), maxR);
        }

        // 9. 全局范围（简化实现）
        private static List<Vector2Int> GetAllReachableTiles(Vector2Int center)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            int mapSize = 20;
            
            for (int x = -mapSize; x <= mapSize; x++)
            {
                for (int y = -mapSize; y <= mapSize; y++)
                {
                    tiles.Add(center + new Vector2Int(x, y));
                }
            }
            return tiles;
        }

        // --- 辅助工具：计算从 A 到 B 的 4 方向向量 ---
        private static Vector2Int GetDirection(Vector2Int a, Vector2Int b)
        {
            int dx = b.x - a.x;
            int dy = b.y - a.y;

            if (Mathf.Abs(dx) > Mathf.Abs(dy))
            {
                return dx > 0 ? Vector2Int.right : Vector2Int.left;
            }
            else
            {
                return dy > 0 ? Vector2Int.up : Vector2Int.down;
            }
        }

        // ================= 兼容性方法（逐步淘汰） =================

        /// <summary>
        /// 旧方法：计算技能范围（兼容性保留）
        /// </summary>
        public static List<Vector3Int> GetSkillRange3D(Vector3Int casterPos, Vector3Int? targetPos, SkillDataSO skill)
        {
            // 使用新的施法范围逻辑
            return GetCastRange3D(casterPos, skill);
        }

        /// <summary>
        /// 获取技能范围内的单位
        /// </summary>
        public static List<MapUnit> GetUnitsInSkillRange(Vector3Int casterPos, Vector3Int targetPos, SkillDataSO skill, FactionType? filterFaction = null)
        {
            List<MapUnit> units = new List<MapUnit>();

            // 这里需要根据技能阶段来计算AoE范围
            // 简化实现：使用第一个阶段
            if (skill.Phases.Count > 0)
            {
                SkillPhase firstPhase = skill.Phases[0];
                List<Vector3Int> aoeRange = GetAoERange3D(casterPos, targetPos, firstPhase);

                foreach (Vector3Int pos in aoeRange)
                {
                    MapUnit unit = UnitManager.Instance.GetUnitAt(pos);
                    if (unit != null)
                    {
                        if (filterFaction.HasValue)
                        {
                            if (unit.Faction == filterFaction.Value)
                            {
                                units.Add(unit);
                            }
                        }
                        else
                        {
                            units.Add(unit);
                        }
                    }
                }
            }

            return units;
        }

        /// <summary>
        /// 检查目标是否对技能有效
        /// </summary>
        private static bool IsTargetValidForSkill(MapUnit unit, SkillDataSO skill, FactionType casterFaction)
        {
            // 使用第一个阶段的TargetType
            if (skill.Phases.Count > 0)
            {
                SkillPhase firstPhase = skill.Phases[0];
                return IsTargetValidForPhase(unit, firstPhase, casterFaction);
            }
            return false;
        }

        /// <summary>
        /// 检查目标是否对技能阶段有效
        /// </summary>
        public static bool IsTargetValidForPhase(MapUnit unit, SkillPhase phase, FactionType casterFaction,MapUnit caster = null)
        {
            switch (phase.TargetType)
            {
                case TargetType.Enemy:
                    return unit.Faction == FactionType.Enemy;
                case TargetType.Ally:
                    return unit.Faction == casterFaction;
                case TargetType.Self:
                    if(caster != null)
                    {
                        return unit == caster;
                    }
                    return unit.Faction == casterFaction;//todo
                case TargetType.Position:
                    return true;
                case TargetType.AnyUnit:
                    return true;
                case TargetType.Player:
                    return unit.Faction == FactionType.Player;
                case TargetType.Teammates:
                    return unit.Faction == casterFaction;
                case TargetType.ExceptTeammates:
                    return unit.Faction != casterFaction;
                default:
                    return false;
            }
        }

        /// <summary>
        /// 检查格子是否可以放置技能
        /// </summary>
        public static bool CanPlaceSkillOnTile(Vector3Int pos)
        {
            return MapManager.Instance.logicalGrid.GetBlock(pos) != BlockType.Air &&
                MapManager.Instance.logicalGrid.GetBlock(pos + Vector3Int.up) == BlockType.Air;
        }

        /// <summary>
        /// 新的UI高亮方法（支持双层范围显示）
        /// </summary>
        public static (List<Vector3Int> castTiles, List<Vector3Int> aoeTiles) GetSkillRangesForUI(
            Vector3Int casterPos, 
            Vector3Int hoverPos, 
            SkillDataSO skill)
        {
            List<Vector3Int> castTiles = GetCastRange3D(casterPos, skill);
            List<Vector3Int> aoeTiles = new List<Vector3Int>();

            // 如果鼠标悬停在某个位置，计算该位置的AoE范围
            if (skill.Phases.Count > 0 && castTiles.Contains(hoverPos))
            {
                SkillPhase firstPhase = skill.Phases[0];
                aoeTiles = GetAoERange3D(casterPos, hoverPos, firstPhase);
            }

            return (castTiles, aoeTiles);
        }

        /// <summary>
        /// 施法前目标合法性校验（防止空放）
        /// 重要：在玩家点击格子准备释放技能时调用此方法
        /// </summary>
        public static bool IsValidTargetForCast(Vector3Int targetPos, SkillDataSO skill, FactionType casterFaction)
        {
            // 如果技能允许位置目标（如传送技能），直接返回true
            if (skill.TargetType == TargetType.Position)
            {
                return true;
            }

            // 获取目标位置上的单位
            MapUnit targetUnit = UnitManager.Instance.GetUnitAt(targetPos);

            // 如果点了空地，但技能要求实体目标，拒绝施法
            if (targetUnit == null)
            {
                if (skill.TargetType == TargetType.Enemy ||
                    skill.TargetType == TargetType.Ally ||
                    skill.TargetType == TargetType.Player ||
                    skill.TargetType == TargetType.Teammates ||
                    skill.TargetType == TargetType.ExceptTeammates)
                {
                    Debug.LogWarning($"施法被拒绝：技能 {skill.SkillName} 需要实体目标，但点击了空地 {targetPos}");
                    return false;
                }
            }

            // 如果有人，根据TargetType校验阵营关系
            if (targetUnit != null)
            {
                switch (skill.TargetType)
                {
                    case TargetType.Enemy:
                        if (targetUnit.Faction != FactionType.Enemy)
                        {
                            Debug.LogWarning($"施法被拒绝：技能 {skill.SkillName} 需要敌人目标，但点击了 {targetUnit.Faction} 阵营单位");
                            return false;
                        }
                        break;

                    case TargetType.Ally:
                    case TargetType.Teammates:
                        if (targetUnit.Faction != casterFaction)
                        {
                            Debug.LogWarning($"施法被拒绝：技能 {skill.SkillName} 需要队友目标，但点击了 {targetUnit.Faction} 阵营单位");
                            return false;
                        }
                        break;

                    case TargetType.Self:
                        if (targetUnit.Faction != casterFaction)
                        {
                            Debug.LogWarning($"施法被拒绝：技能 {skill.SkillName} 只能对自己施法，但点击了 {targetUnit.Faction} 阵营单位");
                            return false;
                        }
                        break;

                    case TargetType.AnyUnit:
                        // 可以对任何单位施法，无需校验阵营
                        break;

                    case TargetType.ExceptTeammates:
                        if (targetUnit.Faction == casterFaction)
                        {
                            Debug.LogWarning($"施法被拒绝：技能 {skill.SkillName} 不能攻击队友，但点击了队友");
                            return false;
                        }
                        break;

                    case TargetType.Player:
                        if (targetUnit.Faction != FactionType.Player)
                        {
                            Debug.LogWarning($"施法被拒绝：技能 {skill.SkillName} 需要玩家目标，但点击了 {targetUnit.Faction} 阵营单位");
                            return false;
                        }
                        break;
                }
            }

            return true;
        }

        // ================= 弹道轨迹类型判定算法 =================

        /// <summary>
        /// 直接生效弹道 - 无视任何地形阻挡
        /// 用于诅咒、传送等直接生效技能
        /// </summary>
        public static bool CheckDirect(Vector3 start, Vector3 end)
        {
            // Direct 类型无视任何地形阻挡，直接返回 true
            return true;
        }

        /// <summary>
        /// 直线视野弹道 - 需要从起点到终点的直线无遮挡
        /// 用于火枪、激光等直射技能
        /// 算法：采用 DDA 体素遍历 + AABB 精确检测（原 GetLinePath + Solid-only 方式已弃用）
        /// 支持：完整方块完全阻挡，半砖/楼梯进行精确射线相交检测
        /// </summary>
        // [旧实现 - 用 GetLinePath + 仅 Solid 判断，无法处理半砖/楼梯]
        // public static bool CheckLineOfSight(Vector3 start, Vector3 end)
        // {
        //     Vector3 eyeStart = new Vector3(start.x, start.y + 1, start.z);
        //     Vector3 eyeEnd = new Vector3(end.x, end.y + 1, end.z);
        //     Vector3Int gridStart = new Vector3Int(Mathf.RoundToInt(eyeStart.x), Mathf.RoundToInt(eyeStart.y), Mathf.RoundToInt(eyeStart.z));
        //     Vector3Int gridEnd = new Vector3Int(Mathf.RoundToInt(eyeEnd.x), Mathf.RoundToInt(eyeEnd.y), Mathf.RoundToInt(eyeEnd.z));
        //     List<Vector3Int> path = GetLinePath(gridStart, gridEnd);
        //     foreach (Vector3Int pos in path)
        //     {
        //         if (MapManager.Instance.logicalGrid.GetBlock(pos) == BlockType.Solid) return false;
        //     }
        //     return true;
        // }
        public static bool CheckLineOfSight(Vector3 start, Vector3 end)
        {
            Vector3 eyeStart = new Vector3(start.x + 0.5f, start.y + 1f, start.z + 0.5f);
            Vector3 eyeEnd = new Vector3(end.x + 0.5f, end.y + 1f, end.z + 0.5f);

            return GridOcclusionUtils.IsVisible3D(MapManager.Instance.logicalGrid, eyeStart, eyeEnd);
        }

        /// <summary>
        /// 从天而降弹道 - 需要目标点头顶无遮挡
        /// 用于天雷、陨石等从天而降的技能
        /// 算法：从目标点头顶开始向上检查，直到地图最高限
        /// </summary>
        public static bool CheckSkyDrop(Vector3 target)
        {
            // 转换为网格坐标
            Vector3Int gridTarget = new Vector3Int(Mathf.RoundToInt(target.x), Mathf.RoundToInt(target.y), Mathf.RoundToInt(target.z));
            
            // 从目标点的头顶开始检查（y+1）
            int startY = gridTarget.y + 1;
            
            // 假设地图最高高度为 255（可根据项目配置调整）
            int maxMapHeight = 255;
            
            // 从目标点头顶向上检查
            for (int y = startY; y <= maxMapHeight; y++)
            {
                Vector3Int checkPos = new Vector3Int(gridTarget.x, y, gridTarget.z);
                
                // 如果遇到固体方块，说明有屋顶遮挡
                if (MapManager.Instance.logicalGrid.GetBlock(checkPos) == BlockType.Solid)
                {
                    return false;
                }
            }

            return true;
        }

        /// <summary>
        /// 抛物线弹道 - 可以越过矮障碍，但会被高墙和天花板阻挡
        /// 用于弓箭、投石等曲射技能
        /// 算法：参数化抛物线采样，沿数学轨迹进行体素步进检测
        /// 数学原理：允许"越过矮墙"但"阻挡于高墙"，通过计算抛物线高度来判断
        /// </summary>
        public static bool CheckParabola(Vector3 start, Vector3 end, float arcHeightFactor = 0.5f)
        {
            // 计算起点和终点的"眼睛"高度（胸口位置）
            Vector3 eyeStart = new Vector3(start.x + 0.5f, start.y + 1f, start.z + 0.5f);
            Vector3 eyeEnd = new Vector3(end.x + 0.5f, end.y + 1f, end.z + 0.5f);

            // 计算水平距离（仅x和z的2D距离）
            float horizontalDist = Vector2.Distance(
                new Vector2(start.x, start.z),
                new Vector2(end.x, end.z)
            );

            // 计算抛物线顶点高度
            // 基础高度与水平距离成正比，加上起点和终点中较高的那个
            float baseArcHeight = horizontalDist * arcHeightFactor;
            float maxEyeHeight = Mathf.Max(eyeStart.y, eyeEnd.y);
            float h = Mathf.Max(baseArcHeight, maxEyeHeight - Mathf.Min(eyeStart.y, eyeEnd.y));

            // 计算采样步数 - 确保采样足够密集
            float totalDistance = Vector3.Distance(eyeStart, eyeEnd);
            int sampleSteps = Mathf.Max(10, Mathf.CeilToInt(totalDistance * 2));

            // 沿抛物线轨迹进行采样检测
            for (int i = 0; i <= sampleSteps; i++)
            {
                float t = (float)i / sampleSteps;
                
                // 线性插值基础点
                Vector3 lerpPos = Vector3.Lerp(eyeStart, eyeEnd, t);
                
                // 叠加抛物线高度：使用标准抛物线公式 y = -4h(x-0.5)² + h
                // 转换为：height = 4h * t * (1 - t)
                float heightOffset = 4f * h * t * (1f - t);
                
                // 得到当前轨迹点
                Vector3 curvePos = lerpPos + new Vector3(0, heightOffset, 0);
                
                // 将轨迹点转换为网格坐标
                Vector3Int gridPos = new Vector3Int(
                    Mathf.RoundToInt(curvePos.x),
                    Mathf.RoundToInt(curvePos.y),
                    Mathf.RoundToInt(curvePos.z)
                );

                // 检测该网格坐标是否存在固体方块
                // 注意：这里检查的是轨迹点经过的格子，不是脚底方块
                if (MapManager.Instance.logicalGrid.GetBlock(gridPos) == BlockType.Solid)
                {
                    // 遇到固体方块，抛物线被阻挡
                    return false;
                }
            }

            // 所有采样点都没有碰撞，抛物线可达
            return true;
        }

        /// <summary>
        /// 检查目标点是否根据技能弹道类型可达
        /// 统一调用四种弹道检查方法
        /// </summary>
        private static bool CheckTrajectoryReachable(Vector3 casterPos, Vector3 targetPos, SkillDataSO skill)
        {
            // 根据技能弹道类型调用相应的检查方法
            switch (skill.Trajectory)
            {
                case TrajectoryType.Direct:
                    // Direct 类型无视任何地形阻挡
                    return CheckDirect(casterPos, targetPos);

                case TrajectoryType.LineOfSight:
                    // LineOfSight 类型需要直线视野
                    return CheckLineOfSight(casterPos, targetPos);

                case TrajectoryType.Parabola:
                    // Parabola 类型使用抛物线轨迹
                    return CheckParabola(casterPos, targetPos);

                case TrajectoryType.SkyDrop:
                    // SkyDrop 类型需要目标点头顶无遮挡
                    return CheckSkyDrop(targetPos);

                default:
                    // 默认使用 LineOfSight 作为兼容性处理
                    Debug.LogWarning($"未知的弹道类型: {skill.Trajectory}，使用默认的 LineOfSight");
                    return CheckLineOfSight(casterPos, targetPos);
            }
        }

        /// <summary>
        /// 新增直线轨迹算法
        /// 返回从start到end之间（包含end，不含start）的步进格子列表
        /// </summary>
        public static List<Vector3Int> GetLinePath(Vector3Int start, Vector3Int end)
        {
            List<Vector3Int> path = new List<Vector3Int>();

            // 计算方向向量
            Vector3Int dir = end - start;
            int steps = Mathf.Max(Mathf.Abs(dir.x), Mathf.Abs(dir.y), Mathf.Abs(dir.z));

            if (steps == 0)
            {
                return path; // 起点和终点相同，返回空列表
            }

            // 归一化方向向量
            Vector3Int step = new Vector3Int(
                Mathf.Clamp(dir.x, -1, 1),
                Mathf.Clamp(dir.y, -1, 1),
                Mathf.Clamp(dir.z, -1, 1)
            );

            // 生成路径
            Vector3Int current = start;
            for (int i = 0; i < steps; i++)
            {
                current += step;
                path.Add(current);
            }

            return path;
        }

        /// <summary>
        /// 专门针对从天而降技能的范围计算：每个格子只取最顶层的目标
        /// </summary>
        // public static List<Vector3Int> GetSkyDropAoERange(Vector3Int targetPos, SkillPhase phase)
        // {
        //     List<Vector3Int> result3D = new List<Vector3Int>();
        //     Vector2Int center2D = new Vector2Int(targetPos.x, targetPos.z);

        //     // 1. 获取 2D 覆盖的所有格子
        //     List<Vector2Int> range2D = GetAoEGrids(center2D, center2D, center2D, phase.AoEPattern, phase.AoERadius);

        //     foreach (Vector2Int p2d in range2D)
        //     {
        //         // 2. 对每个格子，从地图最高处向下探测
        //         // 这里的探测应该找到该坐标轴上“暴露在天空下”的第一个有效脚底格子
        //         Vector3Int? topTile = GetTopVisibleTile(p2d.x, p2d.y);
                
        //         if (topTile.HasValue)
        //         {
        //             // 3. 垂直高度差校验：如果目标点比中心点高太多或低太多（比如隔着一座大山），可能不符合箭雨逻辑
        //             // 这一步可选，根据你的技能设计决定
        //             if (Mathf.Abs(topTile.Value.y - targetPos.y) <= phase.AoEVerticalRange)
        //             {
        //                 result3D.Add(topTile.Value);
        //             }
        //         }
        //     }
        //     return result3D;
        // }

        // 辅助方法：找到某个 (x,z) 坐标最顶层的“地面”格子
        private static Vector3Int? GetTopVisibleTile(int x, int z)
        {
            // 从地图上限向下扫描
            for (int y = 255; y >= 0; y--)
            {
                Vector3Int checkPos = new Vector3Int(x, y, z);
                // 如果这个位置是空气，且下方是固体，那么这就是“顶层地面”
                if (MapManager.Instance.logicalGrid.GetBlock(checkPos) == BlockType.Air)
                {
                    Vector3Int groundPos = checkPos + Vector3Int.down;
                    if (y > 0 && MapManager.Instance.logicalGrid.GetBlock(groundPos) != BlockType.Air)
                    {
                        return groundPos; // 返回脚底方块坐标
                    }
                }
            }
            return null;
        }
    }
}