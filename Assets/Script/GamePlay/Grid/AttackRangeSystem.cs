//CREATE BY GEMINI
using System.Collections.Generic;
using UnityEngine;
using Character.data;
using Global;

namespace GamePlay
{
    public static class AttackRangeSystem
    {
        // 这是一个“纯函数”，输入规则，输出格子
        public static List<Vector2Int> GetAttackRange(Vector2Int center, CharacterData data)
        {
            List<Vector2Int> tiles = new List<Vector2Int>();
            
            // 如果是自定义模式，直接读取配置表
            if (data.Pattern == AttackPatternType.Custom)
            {
                if (data.CustomPattern != null)
                {
                    foreach (var offset in data.CustomPattern)
                    {
                        tiles.Add(center + offset);
                    }
                }
                return tiles;
            }

            // 这里的 5 是一个优化值，防止遍历全图。
            // 实际上只要遍历 center ± MaxRange 即可
            int searchRadius = data.MaxRange;

            for (int x = -searchRadius; x <= searchRadius; x++)
            {
                for (int y = -searchRadius; y <= searchRadius; y++)
                {
                    // 排除中心点 (如果你允许打自己，把这行去掉)
                    if (x == 0 && y == 0) continue;

                    int dist = 0;
                    bool isInShape = false;

                    // 1. 计算距离/形状
                    switch (data.Pattern)
                    {
                        case AttackPatternType.Diamond:
                            // 曼哈顿距离 (|x| + |y|)
                            dist = Mathf.Abs(x) + Mathf.Abs(y);
                            isInShape = true;
                            break;

                        case AttackPatternType.Square:
                            // 切比雪夫距离 (max(|x|, |y|))
                            dist = Mathf.Max(Mathf.Abs(x), Mathf.Abs(y));
                            isInShape = true;
                            break;

                        case AttackPatternType.Line:
                            // 必须在轴线上
                            if (x == 0 || y == 0)
                            {
                                dist = Mathf.Abs(x) + Mathf.Abs(y);
                                isInShape = true;
                            }
                            break;
                    }

                    // 2. 判定射程区间
                    if (isInShape && dist >= data.MinRange && dist <= data.MaxRange)
                    {
                        tiles.Add(center + new Vector2Int(x, y));
                    }
                }
            }
            return tiles;
        }
    }
}