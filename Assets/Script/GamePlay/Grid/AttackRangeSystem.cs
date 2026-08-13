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
    /// Pure math helpers for computing cast range and AoE coverage.
    /// </summary>
    public static class AttackRangeSystem
    {
        
        /// <summary>Computes castable tiles; all outputs are valid footblock coords.</summary>
        public static List<Vector3Int> GetCastRange3D(Vector3Int casterPos, SkillDataSO skill)
        {
            List<Vector3Int> result3D = new List<Vector3Int>();

            Vector2Int start2D = new Vector2Int(casterPos.x, casterPos.z);
            
            List<Vector2Int> range2D = GetCastGrids(start2D, skill.CastPattern, skill.CastMinRange, skill.CastMaxRange);

            // Self-cast tiles are excluded by min-range shapes, so add the caster's tile explicitly.
            if (skill.CanTargetSelf() && !range2D.Contains(start2D))
            {
                range2D.Add(start2D);
            }

            int heightUp = skill.CastVerticalRange;
            int heightDown = skill.CastVerticalRange;

            Vector3 casterWorldPos = MapManager.Instance.GetWorldPosition(casterPos);

            foreach (Vector2Int p2d in range2D)
            {
                for (int yOffset = -heightDown; yOffset <= heightUp; yOffset++)
                {
                    int targetY = casterPos.y + yOffset;
                    Vector3Int targetPos3D = new Vector3Int(p2d.x, targetY, p2d.y);
                    
                    if (!CanPlaceSkillOnTile(targetPos3D))
                    {
                        continue;
                    }

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

        /// <summary>Fast distance pre-filter for skipping unreachable tiles.</summary>
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

        /// <summary>Checks whether casterPos can cast skill onto targetPos (no allocation).</summary>
        public static bool CanCastTo(Vector3Int casterPos, Vector3Int targetPos, SkillDataSO skill)
        {
            if (casterPos == targetPos && skill.TargetType == TargetType.Self)
            {
                return CanPlaceSkillOnTile(targetPos);
            }

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

            int dy = targetPos.y - casterPos.y;
            if (Mathf.Abs(dy) > skill.CastVerticalRange)
            {
                return false;
            }

            if (!CanPlaceSkillOnTile(targetPos))
            {
                return false;
            }

            Vector3 casterWorld = MapManager.Instance.GetWorldPosition(casterPos);
            Vector3 targetWorld = MapManager.Instance.GetWorldPosition(targetPos);
            return CheckTrajectoryReachable(casterWorld, targetWorld, skill);
        }

        /// <summary>Computes AoE-affectable tiles; outputs are valid footblock coords.</summary>
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

        /// <summary>SkyDrop AoE: hits only the topmost sky-exposed target per tile.</summary>
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
                    result = GetLineCastShape(center, maxRange);
                    break;
                case CastPatternType.Global:
                    result = GetAllReachableTiles(center);
                    break;
            }

            return result;
        }


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

        private static List<Vector2Int> GetSingleTargetShape(Vector2Int origin)
        {
            return new List<Vector2Int> { origin };
        }

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

        private static List<Vector2Int> GetRingShape(Vector2Int center, int minR, int maxR)
        {
            return GetDiamondShape(center, Mathf.Max(1, minR), maxR);
        }

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


        public static List<Vector3Int> GetSkillRange3D(Vector3Int casterPos, Vector3Int? targetPos, SkillDataSO skill)
        {
            return GetCastRange3D(casterPos, skill);
        }

        /// <summary>Returns units within the skill's AoE range.</summary>
        public static List<MapUnit> GetUnitsInSkillRange(Vector3Int casterPos, Vector3Int targetPos, SkillDataSO skill, FactionType? filterFaction = null)
        {
            List<MapUnit> units = new List<MapUnit>();

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

        private static bool IsTargetValidForSkill(MapUnit unit, SkillDataSO skill, FactionType casterFaction)
        {
            if (skill.Phases.Count > 0)
            {
                SkillPhase firstPhase = skill.Phases[0];
                return IsTargetValidForPhase(unit, firstPhase, casterFaction);
            }
            return false;
        }

        /// <summary>Checks whether a unit is a valid target for the phase.</summary>
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
                    return unit.Faction == casterFaction;
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

        /// <summary>True if the tile is solid with open air above.</summary>
        public static bool CanPlaceSkillOnTile(Vector3Int pos)
        {
            return MapManager.Instance.logicalGrid.GetBlock(pos) != BlockType.Air &&
                MapManager.Instance.logicalGrid.GetBlock(pos + Vector3Int.up) == BlockType.Air;
        }

        /// <summary>Computes cast and AoE tile sets for UI highlight.</summary>
        public static (List<Vector3Int> castTiles, List<Vector3Int> aoeTiles) GetSkillRangesForUI(
            Vector3Int casterPos, 
            Vector3Int hoverPos, 
            SkillDataSO skill)
        {
            List<Vector3Int> castTiles = GetCastRange3D(casterPos, skill);
            List<Vector3Int> aoeTiles = new List<Vector3Int>();

            if (skill.Phases.Count > 0 && castTiles.Contains(hoverPos))
            {
                SkillPhase firstPhase = skill.Phases[0];
                aoeTiles = GetAoERange3D(casterPos, hoverPos, firstPhase);
            }

            return (castTiles, aoeTiles);
        }

        /// <summary>Validates a cast target before casting to prevent wasted casts.</summary>
        public static bool IsValidTargetForCast(Vector3Int targetPos, SkillDataSO skill, FactionType casterFaction)
        {
            if (skill.TargetType == TargetType.Position)
            {
                return !UnitManager.Instance.GetUnitAt(targetPos);
            }

            MapUnit targetUnit = UnitManager.Instance.GetUnitAt(targetPos);

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


        /// <summary>Direct trajectory - ignores all terrain blocking.</summary>
        public static bool CheckDirect(Vector3 start, Vector3 end)
        {
            return true;
        }

        /// <summary>Line-of-sight trajectory - requires a clear straight path (DDA + AABB checks).</summary>
        public static bool CheckLineOfSight(Vector3 start, Vector3 end)
        {
            Vector3 eyeStart = new Vector3(start.x + 0.5f, start.y + 1f, start.z + 0.5f);
            Vector3 eyeEnd = new Vector3(end.x + 0.5f, end.y + 1f, end.z + 0.5f);

            return GridOcclusionUtils.IsVisible3D(MapManager.Instance.logicalGrid, eyeStart, eyeEnd);
        }

        /// <summary>Sky-drop trajectory - requires clear space above the target.</summary>
        public static bool CheckSkyDrop(Vector3 target)
        {
            Vector3Int gridTarget = new Vector3Int(Mathf.RoundToInt(target.x), Mathf.RoundToInt(target.y), Mathf.RoundToInt(target.z));
            
            int startY = gridTarget.y + 1;
            
            int maxMapHeight = 255;
            
            for (int y = startY; y <= maxMapHeight; y++)
            {
                Vector3Int checkPos = new Vector3Int(gridTarget.x, y, gridTarget.z);
                
                if (MapManager.Instance.logicalGrid.GetBlock(checkPos) == BlockType.Solid)
                {
                    return false;
                }
            }

            return true;
        }

        /// <summary>Parabola trajectory - clears low obstacles but blocked by high walls/ceilings.</summary>
        public static bool CheckParabola(Vector3 start, Vector3 end, float arcHeightFactor = 0.5f)
        {
            Vector3 eyeStart = new Vector3(start.x + 0.5f, start.y + 1f, start.z + 0.5f);
            Vector3 eyeEnd = new Vector3(end.x + 0.5f, end.y + 1f, end.z + 0.5f);

            float horizontalDist = Vector2.Distance(
                new Vector2(start.x, start.z),
                new Vector2(end.x, end.z)
            );

            // Parabola height: 4h * t * (1 - t).
            float baseArcHeight = horizontalDist * arcHeightFactor;
            float maxEyeHeight = Mathf.Max(eyeStart.y, eyeEnd.y);
            float h = Mathf.Max(baseArcHeight, maxEyeHeight - Mathf.Min(eyeStart.y, eyeEnd.y));

            float totalDistance = Vector3.Distance(eyeStart, eyeEnd);
            int sampleSteps = Mathf.Max(10, Mathf.CeilToInt(totalDistance * 2));

            for (int i = 0; i <= sampleSteps; i++)
            {
                float t = (float)i / sampleSteps;
                
                Vector3 lerpPos = Vector3.Lerp(eyeStart, eyeEnd, t);
                
                float heightOffset = 4f * h * t * (1f - t);
                
                Vector3 curvePos = lerpPos + new Vector3(0, heightOffset, 0);
                
                Vector3Int gridPos = new Vector3Int(
                    Mathf.RoundToInt(curvePos.x),
                    Mathf.RoundToInt(curvePos.y),
                    Mathf.RoundToInt(curvePos.z)
                );

                if (MapManager.Instance.logicalGrid.GetBlock(gridPos) == BlockType.Solid)
                {
                    return false;
                }
            }

            return true;
        }

        private static bool CheckTrajectoryReachable(Vector3 casterPos, Vector3 targetPos, SkillDataSO skill)
        {
            switch (skill.Trajectory)
            {
                case TrajectoryType.Direct:
                    return CheckDirect(casterPos, targetPos);

                case TrajectoryType.LineOfSight:
                    return CheckLineOfSight(casterPos, targetPos);

                case TrajectoryType.Parabola:
                    return CheckParabola(casterPos, targetPos);

                case TrajectoryType.SkyDrop:
                    return CheckSkyDrop(targetPos);

                default:
                    Debug.LogWarning($"未知的弹道类型: {skill.Trajectory}，使用默认的 LineOfSight");
                    return CheckLineOfSight(casterPos, targetPos);
            }
        }

        /// <summary>Returns stepped tiles from start to end (end inclusive, start exclusive).</summary>
        public static List<Vector3Int> GetLinePath(Vector3Int start, Vector3Int end)
        {
            List<Vector3Int> path = new List<Vector3Int>();

            Vector3Int dir = end - start;
            int steps = Mathf.Max(Mathf.Abs(dir.x), Mathf.Abs(dir.y), Mathf.Abs(dir.z));

            if (steps == 0)
            {
                return path;
            }

            Vector3Int step = new Vector3Int(
                Mathf.Clamp(dir.x, -1, 1),
                Mathf.Clamp(dir.y, -1, 1),
                Mathf.Clamp(dir.z, -1, 1)
            );

            Vector3Int current = start;
            for (int i = 0; i < steps; i++)
            {
                current += step;
                path.Add(current);
            }

            return path;
        }

        private static Vector3Int? GetTopVisibleTile(int x, int z)
        {
            for (int y = 255; y >= 0; y--)
            {
                Vector3Int checkPos = new Vector3Int(x, y, z);
                if (MapManager.Instance.logicalGrid.GetBlock(checkPos) == BlockType.Air)
                {
                    Vector3Int groundPos = checkPos + Vector3Int.down;
                    if (y > 0 && MapManager.Instance.logicalGrid.GetBlock(groundPos) != BlockType.Air)
                    {
                        return groundPos;
                    }
                }
            }
            return null;
        }
    }
}
