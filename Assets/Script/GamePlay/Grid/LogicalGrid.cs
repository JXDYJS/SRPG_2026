using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using Global;

namespace GamePlay{
// public class LogicalCell
// {
//     public int x, z;
    
//     // 最终行走属性
//     public bool canWalk;       // 普通人能走吗
//     public bool canSwim;       // 这一格是水吗
//     public float floorHeight;  // 脚底高度

//     // 楼梯属性
//     public bool isStairs;
//     public int stairDirection; // 0, 90, 180, 270 (对应 Transform 的 Rotation Y)

//     public LogicalCell(int x, int z, List<MapObject> stack)
//     {
//         this.x = x;
//         this.z = z;
//         RecalculateLogic(stack);
//     }

//     void RecalculateLogic(List<MapObject> stack)
//     {
//         // 初始化
//         canWalk = false;
//         canSwim = false;
//         isStairs = false;
//         floorHeight = -999f;

//         if (stack == null || stack.Count == 0) return;

//         // --- 1. 处理障碍物 ---
//         // 规则：只要有一个 "Obstacle" (墙)，哪怕水底有土，这里也是墙
//         if (stack.Any(b => b.type == BlockType.Obstacle))
//         {
//             return; // 也就是 canWalk = false
//         }

//         // --- 2. 处理液体 (水) ---
//         // 规则：查找最高的液体
//         var topLiquid = stack
//             .Where(b => b.type == BlockType.Liquid)
//             .OrderByDescending(b => b.transform.position.y)
//             .FirstOrDefault();

//         if (topLiquid != null)
//         {
//             canSwim = true; 
//             canWalk = false; // 普通人不能走
//             floorHeight = topLiquid.transform.position.y + 0.8f; // 水面高度
//             return; // 既然是水，逻辑处理完毕 (除非你要做浅水区)
//         }

//         // --- 3. 处理地面与楼梯 ---
//         // 规则：如果没有障碍和水，找最高的 "Ground" 或 "Stairs"
//         var topStandable = stack
//             .Where(b => b.type == BlockType.Ground || b.type == BlockType.Stairs)
//             .OrderByDescending(b => b.transform.position.y)
//             .FirstOrDefault();

//         if (topStandable != null)
//         {
//             canWalk = true;
            
//             // 基础高度 (方块中心Y + 0.5)
//             // 注意：这里假设方块 pivot 在中心，高 1米
//             var col = topStandable.GetComponent<Collider>();
//             if (col != null)
//             {
//                 floorHeight = col.bounds.max.y;
//             }
//             else
//             {
//                 // 如果忘了加碰撞体，就保底用中心点+0.5
//                 floorHeight = topStandable.transform.position.y + 0.5f; 
//             }

//             // 特殊处理：如果是楼梯
//             if (topStandable.type == BlockType.Stairs)
//             {
//                 isStairs = true;
//                 // 记录楼梯朝向 (0=North, 90=East...)
//                 stairDirection = Mathf.RoundToInt(topStandable.transform.eulerAngles.y);
                
//                 // 楼梯的高度逻辑可能需要微调，比如它是从 y 到 y+1 的过渡
//                 // 这里我们暂且记录它的底部高度，具体爬坡逻辑交给 Pathfinding
//             }
//         }
//     }
// }
}

namespace GamePlay
{
    public class LogicalGrid
    {
        // 存储所有的逻辑格子：Key是坐标(x,z)，Value是单个格子的数据
        public Dictionary<Vector3Int, BlockType> blockData = new Dictionary<Vector3Int, BlockType>();

        public BlockType GetBlock(int x, int y, int z)
        {
            if (blockData.TryGetValue(new Vector3Int(x, y, z), out BlockType type))
                return type;
            return BlockType.Air;
        }

        public BlockType GetBlock(Vector3Int pos)
        {
            if (blockData.TryGetValue(pos, out BlockType type))
                return type;
            return BlockType.Air;
        }

        public float GetBlockHeight(BlockType type)
        {
            if (type == BlockType.Slab) return 0.5f;
            if (type == BlockType.Solid) return 1.0f;
            return 0f;
        }

        public void Build(List<MapObject> allObjects)
        {
            blockData.Clear();
            foreach(var obj in allObjects)
            {
                Vector3Int pos = Vector3Int.RoundToInt(obj.transform.position);
                blockData[pos] = obj.type; 
            }
        }

        // /// <summary>
        // /// 根据场景里的物体列表，构建逻辑网格
        // /// </summary>
        // /// <param name="liveObjects">坐标 -> 该坐标下的物体堆叠列表</param>
        // public void Build(Dictionary<Vector2Int, List<MapObject>> liveObjects)
        // {
        //     cells.Clear();

        //     foreach (var kvp in liveObjects)
        //     {
        //         Vector2Int coord = kvp.Key;
        //         List<MapObject> stack = kvp.Value;

        //         // 创建单个逻辑格子，计算它能不能走
        //         LogicalCell cell = new LogicalCell(coord.x, coord.y, stack);
                
        //         cells.Add(coord, cell);
        //     }
        // }

        // // 辅助方法：获取某个格子的数据（防止空指针）
        // public LogicalCell GetCell(int x, int z)
        // {
        //     Vector2Int coord = new Vector2Int(x, z);
        //     if (cells.ContainsKey(coord))
        //     {
        //         return cells[coord];
        //     }
        //     return null;
        // }
    }
}