using UnityEngine;
using Global;
namespace Utils
{
    public static class Utils
    {
        public static byte getBlockTypeVal(BlockType type)
        {
            if(type == BlockType.Air || type == BlockType.Liquid)
            {
                return 0;
            }
            if(type == BlockType.Solid)
            {
                return 1;
            }
            if(type == BlockType.Stairs || type == BlockType.Slab)
            {
                return 2;
            }
            return 255;
        }        
    }

    public static class GridOcclusionUtils
    {
        // --- 为了极致性能，缓存射线的倒数方向 ---
        private struct RayData
        {
            public Vector3 Origin;
            public Vector3 DirInv; // 方向的倒数，避免在循环里做除法
        }

        public static bool IsVisible3D(Grid.VoxelGrid grid, Vector3 start, Vector3 end)
        {
            Vector3 direction = end - start;
            float maxDistance = direction.magnitude;
            if (maxDistance <= 0.0001f) return true;
            direction /= maxDistance;

            // 缓存射线倒数数据供 AABB 检测使用
            RayData ray = new RayData {
                Origin = start,
                DirInv = new Vector3(1f / direction.x, 1f / direction.y, 1f / direction.z)
            };

            // --- 1. DDA 基础初始化 (保持不变) ---
            int currentX = Mathf.FloorToInt(start.x);
            int currentY = Mathf.FloorToInt(start.y);
            int currentZ = Mathf.FloorToInt(start.z);

            int endX = Mathf.FloorToInt(end.x);
            int endY = Mathf.FloorToInt(end.y);
            int endZ = Mathf.FloorToInt(end.z);

            int stepX = (direction.x > 0f) ? 1 : ((direction.x < 0f) ? -1 : 0);
            int stepY = (direction.y > 0f) ? 1 : ((direction.y < 0f) ? -1 : 0);
            int stepZ = (direction.z > 0f) ? 1 : ((direction.z < 0f) ? -1 : 0);

            float tDeltaX = (stepX != 0) ? Mathf.Abs(1f / direction.x) : float.MaxValue;
            float tDeltaY = (stepY != 0) ? Mathf.Abs(1f / direction.y) : float.MaxValue;
            float tDeltaZ = (stepZ != 0) ? Mathf.Abs(1f / direction.z) : float.MaxValue;

            float tMaxX = (stepX > 0) ? (Mathf.Floor(start.x) + 1f - start.x) * tDeltaX : ((stepX < 0) ? (start.x - Mathf.Floor(start.x)) * tDeltaX : float.MaxValue);
            float tMaxY = (stepY > 0) ? (Mathf.Floor(start.y) + 1f - start.y) * tDeltaY : ((stepY < 0) ? (start.y - Mathf.Floor(start.y)) * tDeltaY : float.MaxValue);
            float tMaxZ = (stepZ > 0) ? (Mathf.Floor(start.z) + 1f - start.z) * tDeltaZ : ((stepZ < 0) ? (start.z - Mathf.Floor(start.z)) * tDeltaZ : float.MaxValue);

            float currentDistance = 0f;
            int maxIterations = 200; 

            // --- 2. 核心步进循环 ---
            for (int i = 0; i < maxIterations; i++)
            {
                byte blockType = grid.GetBlock(currentX, currentY, currentZ);

                if (blockType != 0) // 0 是空气
                {
                    // 情况A：如果是完整的全尺寸方块 (比如 blockType 1)
                    if (blockType == 1) 
                    {
                        return false; // 无脑阻挡
                    }
                    
                    // 情况B：如果是半砖、自定义高度方块 (比如 blockType 2)
                    if (blockType == 2)
                    {
                        // 假设你需要去某处查这个方块的真实高度
                        float blockHeight = 0.5f; // 可以替换成 grid.GetBlockYSize(currentX, currentY, currentZ);

                        // 构建这个格子的真实 AABB 边界 (基于你的 0.5, 0, 0.5 锚点设计)
                        // X 和 Z 是完整的 1，Y 只有 blockHeight 这么高
                        Vector3 min = new Vector3(currentX, currentY, currentZ);
                        Vector3 max = new Vector3(currentX + 1f, currentY + blockHeight, currentZ + 1f);

                        // 精确计算射线是否擦到了这个边界框
                        if (RayIntersectsAABB(ray, min, max))
                        {
                            return false; // 确实打在半砖上了，阻挡！
                        }
                        // 如果没碰到（比如从上方飞过），不做任何事，继续循环！
                    }
                }

                if (currentX == endX && currentY == endY && currentZ == endZ) return true;

                // DDA 步进逻辑...
                if (tMaxX < tMaxY)
                {
                    if (tMaxX < tMaxZ) { currentDistance = tMaxX; currentX += stepX; tMaxX += tDeltaX; }
                    else { currentDistance = tMaxZ; currentZ += stepZ; tMaxZ += tDeltaZ; }
                }
                else
                {
                    if (tMaxY < tMaxZ) { currentDistance = tMaxY; currentY += stepY; tMaxY += tDeltaY; }
                    else { currentDistance = tMaxZ; currentZ += stepZ; tMaxZ += tDeltaZ; }
                }

                if (currentDistance > maxDistance) return true;
            }
            return true; 
        }

        /// <summary>
        /// 极速射线与边界框(AABB)相交检测算法 (Slab Method)
        /// 完全使用乘法和 Min/Max，无任何 GC
        /// </summary>
        private static bool RayIntersectsAABB(RayData ray, Vector3 min, Vector3 max)
        {
            float t1 = (min.x - ray.Origin.x) * ray.DirInv.x;
            float t2 = (max.x - ray.Origin.x) * ray.DirInv.x;
            float tmin = Mathf.Min(t1, t2);
            float tmax = Mathf.Max(t1, t2);

            t1 = (min.y - ray.Origin.y) * ray.DirInv.y;
            t2 = (max.y - ray.Origin.y) * ray.DirInv.y;
            tmin = Mathf.Max(tmin, Mathf.Min(t1, t2));
            tmax = Mathf.Min(tmax, Mathf.Max(t1, t2));

            t1 = (min.z - ray.Origin.z) * ray.DirInv.z;
            t2 = (max.z - ray.Origin.z) * ray.DirInv.z;
            tmin = Mathf.Max(tmin, Mathf.Min(t1, t2));
            tmax = Mathf.Min(tmax, Mathf.Max(t1, t2));

            // tmax >= 0 保证了方块在射线的正前方，而不是在后方
            return tmax >= tmin && tmax >= 0f;
        }
    }
}