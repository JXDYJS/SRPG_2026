//CREATE BY GEMINI


using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using Global;

namespace GamePlay
{
    using unit;

    public class AStar
    {
        // 节点类升级为 3D 坐标
        class Node
        {
            public Vector3Int position; // 存储的是“脚底方块”的坐标
            public Node parent;
            public float gCost; // 浮点数以支持半砖等微小的高度代价
            public float hCost;
            public float FCost => gCost + hCost;

            public Node(Vector3Int pos) { this.position = pos; }
        }

        // 入口函数：现在接收 3D 坐标
        public static List<Vector3Int> FindPath(Vector3Int start, Vector3Int end, LogicalGrid grid, UnitMoveStats stats)
        {
            // 1. 基础检查：目标必须在数据范围内（或者是空气/方块）
            // 注意：我们允许点选一个空气格作为目标（意味着走到它下面的地面上），
            // 或者点选一个地面方块（意味着走到它上面）。
            // 这里做一个简单的归一化：AStar 的目标 End 通常是指“脚下的方块”。
            
            // 为了安全，我们检查一下终点是否合法（比如不能跳进虚空）
            
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

                    // 计算代价：平面距离 + 高度差代价
                    // 高度差代价可以设大一点，让角色倾向于走平路
                    float dist = GetDistance(currentNode.position, neighborPos);
                    float heightDiff = Mathf.Abs(currentNode.position.y - neighborPos.y);
                    float newCost = currentNode.gCost + dist + (heightDiff * 1.5f); // 爬坡稍累

                    Node neighborNode = openSet.Find(n => n.position == neighborPos);
                    if (neighborNode == null || newCost < neighborNode.gCost)
                    {
                        if (neighborNode == null)
                        {
                            neighborNode = new Node(neighborPos);
                            openSet.Add(neighborNode);
                        }
                        neighborNode.gCost = newCost;
                        neighborNode.hCost = GetDistance(neighborPos, end);
                        neighborNode.parent = currentNode;
                    }
                }
            }

            return null; // 没找到路径
        }

        // === 核心逻辑：垂直扫描寻找邻居 ===
        static List<Vector3Int> GetValidNeighbors(Node currentNode, LogicalGrid grid, UnitMoveStats stats)
        {
            List<Vector3Int> validNeighbors = new List<Vector3Int>();
            
            // 四个平面方向
            Vector2Int[] dirs = { Vector2Int.up, Vector2Int.down, Vector2Int.left, Vector2Int.right };

            Vector3Int currentPos = currentNode.position;

            foreach (var dir in dirs)
            {
                int nx = currentPos.x + dir.x;
                int nz = currentPos.z + dir.y;

                // --- 垂直扫描 (Vertical Scan) ---
                // 目标不仅仅是 (nx, current.y, nz)，还要看上下
                // 扫描范围：从脚下 dropHeight 到 头顶 jumpHeight
                // 假设 dropHeight=3, jumpHeight=1，则扫描 [y-3, y+1]
                
                int scanMinY = currentPos.y - Mathf.CeilToInt(stats.dropHeight);
                int scanMaxY = currentPos.y + Mathf.CeilToInt(stats.jumpHeight);

                // 优化：从高往低找，或者从当前高度向两边找。
                // 这里简单地从上往下扫，找到合法的落脚点
                for (int ny = scanMaxY; ny >= scanMinY; ny--)
                {
                    Vector3Int targetBlockPos = new Vector3Int(nx, ny, nz);

                    // 判定是否能站立
                    if (CanStandAt(grid, targetBlockPos, currentPos, stats))
                    {
                        validNeighbors.Add(targetBlockPos);
                        
                        // 找到一个落脚点后，通常不需要再找这一列更下面的点了（除非做立交桥逻辑）
                        // 为了防止“穿过桥面跳到桥下”，我们找到最高的可行点就 Break
                        break; 
                    }
                }
            }
            return validNeighbors;
        }

        // === 核心判定：能不能站在这个方块上 ===
        // targetBase: 目标脚下的方块坐标
        // currentBase: 当前脚下的方块坐标
        static bool CanStandAt(LogicalGrid grid, Vector3Int targetBase, Vector3Int currentBase, UnitMoveStats stats)
        {
            // 1. 脚踏实地检查 (Footing)
            BlockType floor = grid.GetBlock(targetBase.x, targetBase.y, targetBase.z);
            
            // 必须是固体或半砖，空气和水不能站（除非两栖）
            if (floor == BlockType.Air || floor == BlockType.Liquid) 
                return false;

            // 2. 计算实际的世界坐标高度 (World Y)
            float targetStandY = targetBase.y + grid.GetBlockHeight(floor);
            
            BlockType currentBlock = grid.GetBlock(currentBase.x, currentBase.y, currentBase.z);
            float currentStandY = currentBase.y + grid.GetBlockHeight(currentBlock);

            // 3. 膝盖能迈检查 (Step Height)
            float diff = targetStandY - currentStandY;

            // 向上跳跃限制
            if (diff > stats.jumpHeight + 0.01f) return false; // +0.01 防止浮点误差
            // 向下坠落限制
            if (diff < -stats.dropHeight - 0.01f) return false;

            // 4. 头顶净空检查 (Headroom)
            // 必须保证从脚底往上 UnitHeight 的空间是空的
            // 假设单位高度是 2 格
            float unitHeight = 2.0f;
            
            // 我们需要检查哪些方块？
            // 从 targetBase.y + 1 开始，直到覆盖 unitHeight
            // 比如站在 y=0 (Solid, standY=1)，需要检查 y=1, y=2 是否阻挡
            // 比如站在 y=0 (Slab, standY=0.5)，需要检查 y=1, y=2
            
            // 简化逻辑：检查站立面之上的所有整数格
            int startCheckY = targetBase.y + 1; 
            // 检查到哪里？脚底高度 + 身高
            float headTopY = targetStandY + unitHeight;
            int endCheckY = Mathf.CeilToInt(headTopY - 0.1f); // -0.1 防止正好蹭到天花板算碰撞

            for (int y = startCheckY; y < endCheckY; y++)
            {
                BlockType b = grid.GetBlock(targetBase.x, y, targetBase.z);
                if (b != BlockType.Air && b != BlockType.Liquid)
                {
                    return false; // 撞头了
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

        // 3D 曼哈顿距离作为启发式
        static float GetDistance(Vector3Int a, Vector3Int b)
        {
            return Mathf.Abs(a.x - b.x) + Mathf.Abs(a.y - b.y) + Mathf.Abs(a.z - b.z);
        }
    }
}