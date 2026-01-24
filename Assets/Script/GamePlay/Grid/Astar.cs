using System.Collections.Generic;
using UnityEngine;
using System.Linq;

namespace MapSystem
{
    public class AStar
    {
        class Node
        {
            public int x, z;
            public Node parent;
            public int gCost;
            public int hCost;
            public int FCost => gCost + hCost;
            public Node(int x, int z) { this.x = x; this.z = z; }
        }

        // 修改点 1：函数签名加入 UnitMoveStats，让算法知道是谁在走
        public static List<Vector2Int> FindPath(Vector2Int start, Vector2Int end, LogicalGrid grid, UnitMoveStats stats)
        {
            // 基础检查
            LogicalCell endCell = grid.GetCell(end.x, end.y);
            
            // 只要目标格子在数据上存在即可，具体能不能站上去由 IsTraversable 判断
            // 但如果目标完全是虚空(null)，或者是绝对障碍(Obstacle)，通常直接排除
            if (endCell == null) return null;

            List<Node> openSet = new List<Node>();
            HashSet<Vector2Int> closedSet = new HashSet<Vector2Int>();

            Node startNode = new Node(start.x, start.y);
            openSet.Add(startNode);

            while (openSet.Count > 0)
            {
                Node currentNode = openSet.OrderBy(n => n.FCost).ThenBy(n => n.hCost).First();
                openSet.Remove(currentNode);
                closedSet.Add(new Vector2Int(currentNode.x, currentNode.z));

                if (currentNode.x == end.x && currentNode.z == end.y)
                {
                    return RetracePath(startNode, currentNode);
                }

                // 修改点 2：传入 currentNode 和 stats，进行复杂的邻居判断
                foreach (Vector2Int neighborPos in GetValidNeighbors(currentNode, grid, stats))
                {
                    if (closedSet.Contains(neighborPos)) continue;

                    int newCost = currentNode.gCost + GetDistance(currentNode, neighborPos);
                    
                    Node neighborNode = openSet.Find(n => n.x == neighborPos.x && n.z == neighborPos.y);
                    if (neighborNode == null || newCost < neighborNode.gCost)
                    {
                        if (neighborNode == null)
                        {
                            neighborNode = new Node(neighborPos.x, neighborPos.y);
                            openSet.Add(neighborNode);
                        }
                        neighborNode.gCost = newCost;
                        neighborNode.hCost = GetDistance(neighborNode, end);
                        neighborNode.parent = currentNode;
                    }
                }
            }
            return null;
        }

        // === 核心修改：基于能力的邻居获取 ===
        static List<Vector2Int> GetValidNeighbors(Node currentNode, LogicalGrid grid, UnitMoveStats stats)
        {
            List<Vector2Int> validNeighbors = new List<Vector2Int>();
            Vector2Int[] dirs = { Vector2Int.up, Vector2Int.down, Vector2Int.left, Vector2Int.right };

            // 获取当前脚下的格子数据
            LogicalCell currentCell = grid.GetCell(currentNode.x, currentNode.z);
            if (currentCell == null) return validNeighbors; // 理论上不会发生

            foreach (var dir in dirs)
            {
                int nextX = currentNode.x + dir.x;
                int nextZ = currentNode.z + dir.y;
                LogicalCell nextCell = grid.GetCell(nextX, nextZ);

                // 调用通行判断逻辑
                if (IsTraversable(currentCell, nextCell, stats))
                {
                    // 扩展：这里还可以加入 "UnitManager.Instance.GetUnitAt(nextPos)" 
                    // 来判断是否有敌方单位阻挡 (ZOC控制区域)
                    validNeighbors.Add(new Vector2Int(nextX, nextZ));
                }
            }
            return validNeighbors;
        }

        // === 核心修改：通行判断逻辑 (可扩展性极强) ===
        static bool IsTraversable(LogicalCell from, LogicalCell to, UnitMoveStats stats)
        {
            // 1. 虚空检查
            if (to == null) return false;

            // 2. 障碍物类型检查 (绝对障碍)
            // 即使是飞行单位，也许也不能穿过高墙 (Obstacle)，除非你设定飞行单位无视 Obstacle
            // 这里假设 Obstacle 是天花板级别的阻挡，谁都过不去
            // 如果你的 LogicalGrid 里 Obstacle 仅仅代表"地面上有障碍"，那飞行单位可能可以过
            // 现在的逻辑假设：canWalk=false 代表该格子被塞满了（如墙壁），除非是水
            
            // 特殊：如果是飞行单位
            if (stats.moveType == MoveType.Flying)
            {
                // 飞行单位只怕绝对墙壁，不怕水，也不怕没有地面(canWalk=false)
                // 但要小心：如果 grid 设计上 null 代表空气，飞行单位是可以去 null 的吗？
                // 通常战棋地图不让去格子以外的地方，所以我们只看 to 是否存在
                return true; 
            }

            // 3. 地面单位检查
            if (stats.moveType == MoveType.Ground)
            {
                // A. 必须是可行走地面 (除非是两栖且是水)
                if (!to.canWalk)
                {
                    // 如果是两栖单位，且目标是水
                    if (stats.moveType == MoveType.Amphibious && to.canSwim) return true;
                    return false;
                }

                // B. 高度差检查 (核心！)
                // 计算高度差：目标高度 - 当前高度
                float heightDiff = to.floorHeight - from.floorHeight;

                // 向上跳：不能超过 jumpHeight
                if (heightDiff > stats.jumpHeight) return false;

                // 向下跳：不能超过 dropHeight (防止跳崖)
                if (heightDiff < -stats.dropHeight) return false;

                return true;
            }

            return false;
        }

        static List<Vector2Int> RetracePath(Node startNode, Node endNode)
        {
            List<Vector2Int> path = new List<Vector2Int>();
            Node curr = endNode;
            while (curr != startNode) { path.Add(new Vector2Int(curr.x, curr.z)); curr = curr.parent; }
            path.Reverse();
            return path;
        }

        static int GetDistance(Node a, Vector2Int b)
        {
            return Mathf.Abs(a.x - b.x) + Mathf.Abs(a.z - b.y);
        }
    }
}