//CREATE BY GEMINI
using System.Collections.Generic;
using UnityEngine;
using Character.data;
using Global;
using GamePlay.Skill;

namespace GamePlay.Grid
{
    /// <summary>
    /// 纯数学工具类：负责计算各种形状的格子覆盖范围
    /// </summary>
    public static class AttackRangeSystem
    {
        // 获取攻击范围的主入口
        // origin: 发起者位置
        // target: 目标位置 (用于确定直线或扇形的朝向)
        // data: 包含范围形状和距离的数据
        public static List<Vector2Int> GetAttackRange(Vector2Int origin, Vector2Int target, CharacterData data)
        {
            // 如果不需要方向（比如菱形），target 参数其实没用，但在统一接口里我们保留它
            return GetGrids(origin, target, data.Pattern, data.MinRange, data.MaxRange);
        }

        // 重载：手动指定参数的通用入口 (解耦：技能系统以后也可以直接调这个)
        public static List<Vector2Int> GetGrids(Vector2Int origin, Vector2Int target, AttackPatternType type, int minRange, int maxRange)
        {
            List<Vector2Int> result = new List<Vector2Int>();

            switch (type)
            {
                case AttackPatternType.Diamond:
                    result = GetDiamondShape(origin, minRange, maxRange);
                    break;
                case AttackPatternType.Square:
                    result = GetSquareShape(origin, minRange, maxRange);
                    break;
                case AttackPatternType.Line:
                    result = GetLineShape(origin, target, maxRange); // 直线通常忽略 minRange
                    break;
                case AttackPatternType.Cone:
                    result = GetConeShape(origin, target, maxRange);
                    break;
                case AttackPatternType.Ring:
                    result = GetRingShape(origin, minRange, maxRange); // 也就是空心菱形
                    break;
            }

            // 过滤掉原点 (通常攻击范围不包含自己，除非是自爆)
            // if (result.Contains(origin)) result.Remove(origin);

            return result;
        }

        // ================= 具体形状算法实现 =================

        // 1. 菱形 (Manhattan Distance)
        // 也就是 |dx| + |dy| <= r
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
        // 也就是 max(|dx|, |dy|) <= r
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

        // 3. 直线 (Directional Line)
        // 需要计算从 center 指向 target 的方向
        private static List<Vector2Int> GetLineShape(Vector2Int start, Vector2Int target, int length)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            
            // 计算方向向量 (归一化到 4 个正交方向)
            Vector2Int dir = GetDirection(start, target);
            
            // 如果重合，默认向右 (或者不返回任何格子)
            if (dir == Vector2Int.zero) dir = Vector2Int.right;

            for (int i = 1; i <= length; i++)
            {
                tiles.Add(start + dir * i);
            }
            return tiles;
        }

        // 4. 扇形/锥形 (Cone)
        // 这是一个简化的扇形：前方 1 格，再前方 3 格宽...
        // 这里的实现是：基于主方向，向两侧扩展
        private static List<Vector2Int> GetConeShape(Vector2Int start, Vector2Int target, int length)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            Vector2Int dir = GetDirection(start, target);
            if (dir == Vector2Int.zero) dir = Vector2Int.right;

            // 遍历长度
            for (int i = 1; i <= length; i++)
            {
                Vector2Int forwardPos = start + dir * i;
                tiles.Add(forwardPos);

                // 随着距离增加，向两侧扩展宽度
                // 比如距离 1 时宽 1，距离 2 时宽 3...
                // 计算垂直于主方向的向量
                Vector2Int perpDir = new Vector2Int(dir.y, dir.x); // 简单的垂直旋转 (0,1)->(1,0)

                // 向两侧延伸
                // 这里的逻辑可以根据策划需求改，比如 i/2 或者固定的锥角
                int sideWidth = i - 1; // 越远越宽
                for (int w = 1; w <= sideWidth; w++)
                {
                    tiles.Add(forwardPos + perpDir * w);
                    tiles.Add(forwardPos - perpDir * w);
                }
            }
            return tiles;
        }
        
        // 5. 环形 (Ring)
        // 其实就是 minRange > 0 的菱形，复用 Diamond 逻辑即可，为了语义清晰单独列出
        private static List<Vector2Int> GetRingShape(Vector2Int center, int minR, int maxR)
        {
            return GetDiamondShape(center, Mathf.Max(1, minR), maxR);
        }

        // --- 辅助工具：计算从 A 到 B 的 4 方向向量 ---
        private static Vector2Int GetDirection(Vector2Int a, Vector2Int b)
        {
            int dx = b.x - a.x;
            int dy = b.y - a.y;

            // 哪个轴的差值更大，就取哪个轴为主要方向
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
            List<Vector3Int> result3D = new List<Vector3Int>();

            // 1. 准备 2D 参数
            Vector2Int start2D = new Vector2Int(casterPos.x, casterPos.z);
            Vector2Int aim2D = targetPos.HasValue 
                ? new Vector2Int(targetPos.Value.x, targetPos.Value.z) 
                : start2D + Vector2Int.right; // 默认朝右

            // 2. 获取平面范围 (复用你现有的逻辑)
            List<Vector2Int> range2D = GetGrids(start2D, aim2D, skill.AttackPattern, skill.MinRange, skill.MaxRange);

            // 3. 垂直延伸 (3D Extrusion) - 核心逻辑移到这里
            // 从 skill 数据中读取高度限制
            int heightUp = skill.VerticalRange;
            int heightDown = skill.VerticalRange;

            foreach (Vector2Int p2d in range2D)
            {
                // 遍历该平面点对应的所有高度
                // 范围是 [CasterY - Down, CasterY + Up]
                for (int yOffset = -heightDown; yOffset <= heightUp; yOffset++)
                {
                    int targetY = casterPos.y + yOffset;
                    result3D.Add(new Vector3Int(p2d.x, targetY, p2d.y));
                }
            }

            return result3D;
        }
    }
}