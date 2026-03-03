//CREATE BY GEMINI

using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using Global;
using GamePlay.unit; // 确保引用了 UnitMoveStats

namespace GamePlay
{
    public class AStar
    {
        // 节点类升级为 3D 坐标
        class Node
        {
            public Vector3Int position; // 存储的是“脚底方块”的坐标
            public Node parent;
            public float gCost;
            public float hCost;
            public float FCost => gCost + hCost;

            public Node(Vector3Int pos) { this.position = pos; }
        }

        // 入口函数：现在接收 3D 坐标
        public static List<Vector3Int> FindPath(Vector3Int start, Vector3Int end, LogicalGrid grid, UnitMoveStats stats)
        {
            // 1. 基础检查
            
            List<Node> openSet = new List<Node>();
            HashSet<Vector3Int> closedSet = new HashSet<Vector3Int>();

            Node startNode = new Node(start);
            openSet.Add(startNode);

            while (openSet.Count > 0)
            {
                // 取出 FCost 最小的节点
                Node currentNode = openSet.OrderBy(n => n.FCost).ThenBy(n => n.hCost).First();
                openSet.Remove(currentNode);
                closedSet.Add(currentNode.position);

                // 到达终点判定
                if (currentNode.position == end)
                {
                    return RetracePath(startNode, currentNode);
                }

                // 获取 3D 邻居
                foreach (Vector3Int neighborPos in GetValidNeighbors(currentNode, grid, stats))
                {
                    if (closedSet.Contains(neighborPos)) continue;

                    // === Cost 计算逻辑 ===
                    // 1. 平面花费 (曼哈顿距离) = 1.0
                    float distCost = GetFlatDistance(currentNode.position, neighborPos);
                    
                    // 2. 垂直花费 (高度差绝对值)
                    // 注意：这里用的是“世界坐标高度”的差值，而不是 Grid Y 的差值
                    // 这样半砖 (0.5) 的代价就是 0.5，整砖 (1.0) 就是 1.0
                    float currentStandY = currentNode.position.y + grid.GetBlockYSize(currentNode.position);
                    float targetStandY = neighborPos.y + grid.GetBlockYSize(neighborPos);
                    float heightCost = Mathf.Abs(targetStandY - currentStandY);

                    // 总花费 = 平面 + 垂直
                    // 例如：登上前方半砖 = 1.0 (前移) + 0.5 (上升) = 1.5
                    float newCost = currentNode.gCost + distCost + heightCost;

                    Node neighborNode = openSet.Find(n => n.position == neighborPos);
                    if (neighborNode == null || newCost < neighborNode.gCost)
                    {
                        if (neighborNode == null)
                        {
                            neighborNode = new Node(neighborPos);
                            openSet.Add(neighborNode);
                        }
                        neighborNode.gCost = newCost;
                        neighborNode.hCost = Get3DDistance(neighborPos, end); // 启发式用 3D 距离
                        neighborNode.parent = currentNode;
                    }
                }
            }

            return null; // 没找到路径
        }

        public static HashSet<Vector3Int> GetReachableTiles(Vector3Int start, int moveRange, LogicalGrid grid, UnitMoveStats stats)
        {
            HashSet<Vector3Int> reachable = new HashSet<Vector3Int>();
            Dictionary<Vector3Int, float> costSoFar = new Dictionary<Vector3Int, float>();
            List<Node> openSet = new List<Node>();

            Node startNode = new Node(start) { gCost = 0 };
            openSet.Add(startNode);
            costSoFar[start] = 0;

            while (openSet.Count > 0)
            {
                Node currentNode = openSet.OrderBy(n => n.gCost).First();
                openSet.Remove(currentNode);

                reachable.Add(currentNode.position);

                foreach (Vector3Int neighborPos in GetValidNeighbors(currentNode, grid, stats))
                {
                    float distCost = 1.0f; 
                    
                    float currentStandY = currentNode.position.y + grid.GetBlockYSize(currentNode.position);
                    float targetStandY = neighborPos.y + grid.GetBlockYSize(neighborPos);
                    float heightCost = Mathf.Abs(targetStandY - currentStandY); 
                    
                    float newCost = currentNode.gCost + distCost + heightCost;

                    if (newCost > moveRange) continue;

                    if (!costSoFar.ContainsKey(neighborPos) || newCost < costSoFar[neighborPos])
                    {
                        costSoFar[neighborPos] = newCost;
                        openSet.Add(new Node(neighborPos) { gCost = newCost });
                    }
                }
            }

            return reachable;
        }

        // === 核心逻辑：垂直扫描寻找邻居 ===
        static List<Vector3Int> GetValidNeighbors(Node currentNode, LogicalGrid grid, UnitMoveStats stats)
        {
            List<Vector3Int> validNeighbors = new List<Vector3Int>();
            
            Vector2Int[] dirs = { Vector2Int.up, Vector2Int.down, Vector2Int.left, Vector2Int.right };
            Vector3Int currentPos = currentNode.position;

            foreach (var dir in dirs)
            {
                int nx = currentPos.x + dir.x;
                int nz = currentPos.z + dir.y;

                int scanMinY = currentPos.y - Mathf.CeilToInt(stats.dropHeight);
                int scanMaxY = currentPos.y + Mathf.CeilToInt(stats.jumpHeight);

                for (int ny = scanMaxY; ny >= scanMinY; ny--)
                {
                    Vector3Int targetBlockPos = new Vector3Int(nx, ny, nz);

                    if (CanStandAt(grid, targetBlockPos, currentPos, stats))
                    {
                        // 检查该位置是否有单位占用
                        MapUnit unitAtPos = Managers.UnitManager.Instance?.GetUnitAt(targetBlockPos);
                        if (unitAtPos != null)
                        {
                            // 有单位，不能走
                            break;
                        }
                        
                        validNeighbors.Add(targetBlockPos);
                        break;
                    }
                }
            }
            return validNeighbors;
        }

        // === 核心判定：能不能站在这个方块上 ===
        // targetBase: 目标脚下的方块坐标
        // currentBase: 当前脚下的方块坐标
        static public bool CanStandAt(LogicalGrid grid, Vector3Int targetBase, Vector3Int currentBase, UnitMoveStats stats)
        {
            // 1. 脚踏实地检查 (Footing)
            BlockType floor = grid.GetBlock(targetBase);
            
            // 必须是固体或半砖，空气和水不能站（除非两栖，这里暂不处理）
            if (floor == BlockType.Air || floor == BlockType.Liquid) 
                return false;

            // 获取真实高度 (Key Modification 1)
            float floorHeight = grid.GetBlockYSize(targetBase);

            // 2. 计算绝对站立高度 (World Y)
            float targetStandY = targetBase.y + floorHeight;
            
            // 计算当前站立高度
            float currentFloorHeight = grid.GetBlockYSize(currentBase);
            float currentStandY = currentBase.y + currentFloorHeight;

            // 3. 膝盖能迈检查 (Step Height)
            float diff = targetStandY - currentStandY;

            // 向上跳跃限制
            // 使用 0.01f 防止浮点数精度误差 (比如 1.0 vs 0.99999)
            if (diff > stats.jumpHeight + 0.01f) return false; 
            // 向下坠落限制
            if (diff < -stats.dropHeight - 0.01f) return false;

            // 4. 头顶净空检查 (Headroom) (Key Modification 2)
            // 检查区间：[方块顶面, 方块顶面 + 身高]
            // 即 [targetStandY, targetStandY + playerHeight]
            float playerHeight = 2.0f; // 建议后续从 stats 传入 TODO
            
            int checkStartGridY = targetBase.y; 
            // 检查到哪里？只要 GridY 的底部小于头顶高度，都有可能碰撞
            int checkEndGridY = Mathf.CeilToInt(targetStandY + playerHeight);

            for (int y = checkStartGridY; y <= checkEndGridY; y++)
            {
                // 跳过脚下这块砖本身 (targetBase)
                if (y == targetBase.y) continue;

                Vector3Int checkPos = new Vector3Int(targetBase.x, y, targetBase.z);
                BlockType b = grid.GetBlock(checkPos);
                
                if (b != BlockType.Air && b != BlockType.Liquid)
                {
                    // 发现了实体方块，检查是否真的碰撞 (AABB Intersection)
                    
                    // 方块的 Y 区间
                    float blockBot = y;
                    float blockTop = y + grid.GetBlockYSize(checkPos);
                    
                    // 人物的 Y 区间
                    float playerBot = targetStandY;
                    float playerTop = targetStandY + playerHeight;

                    // 如果 (Block区间) 与 (Player区间) 重叠 -> 撞头
                    // 经典的 1D AABB 碰撞公式: (Min1 < Max2) && (Min2 < Max1)
                    // 这里加一点点 epsilon 容错，允许头皮正好贴着天花板
                    if (blockBot < playerTop - 0.01f && blockTop > playerBot + 0.01f)
                    {
                        return false; // 撞到了
                    }
                }
            }

            return true;
        }

        static List<Vector3Int> RetracePath(Node startNode, Node endNode)
        {
            List<Vector3Int> path = new List<Vector3Int>();
            Node curr = endNode;
            while (curr != startNode) 
            { 
                path.Add(curr.position); 
                curr = curr.parent; 
            }
            // path.Add(startNode.position); // 可选：是否包含起点
            path.Reverse();
            return path;
        }

        // 平面距离 (用于 G Cost)
        static float GetFlatDistance(Vector3Int a, Vector3Int b)
        {
            return Mathf.Abs(a.x - b.x) + Mathf.Abs(a.z - b.z);
        }

        // 3D 曼哈顿距离 (用于启发式 H Cost)
        static float Get3DDistance(Vector3Int a, Vector3Int b)
        {
            return Mathf.Abs(a.x - b.x) + Mathf.Abs(a.y - b.y) + Mathf.Abs(a.z - b.z);
        }
    }
}