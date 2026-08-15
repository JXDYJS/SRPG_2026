using System.Collections.Generic;
using UnityEngine;
using Global;
using GamePlay.Units;

namespace GamePlay.Grid
{
    public class Node
    {
        public Vector3Int position; // Foot-base block coordinate
        public Node parent;
        public float gCost;
        public float hCost;
        public float FCost => gCost + hCost;

        public Node(Vector3Int pos) { this.position = pos; }
    }
    public class AStar
    {
        /// <summary>Stand height of the block a unit stands on (grid Y + block thickness).</summary>
        public static float GetStandHeight(Vector3Int pos, LogicalGrid grid)
        {
            return pos.y + grid.GetBlockYSize(pos);
        }

        /// <summary>
        /// Heuristic for the stand-height cost model: Manhattan flat distance plus
        /// stand-height difference. Each step costs flat 1 plus the stand-height delta,
        /// so the true remaining cost is always >= flat Manhattan distance (sum of step
        /// flat costs) and >= the total stand-height difference (triangle inequality).
        /// Hence h never overestimates: admissible and consistent, A* stays optimal
        /// and the first pop of a tile is final.
        /// </summary>
        public static float GetStandHeightDistance(Vector3Int a, Vector3Int b, LogicalGrid grid)
        {
            return Mathf.Abs(a.x - b.x)
                 + Mathf.Abs(a.z - b.z)
                 + Mathf.Abs(GetStandHeight(a, grid) - GetStandHeight(b, grid));
        }

        public static List<Vector3Int> FindPath(Vector3Int start, Vector3Int end, LogicalGrid grid, UnitMoveStats stats)
        {
            return FindPathCore(start, end, grid, stats, allowOccupiedEnd: false);
        }

        /// <summary>Allows the end tile to be occupied (used for AI pathing to enemies).</summary>
        public static List<Vector3Int> FindPathToOccupied(Vector3Int start, Vector3Int end, LogicalGrid grid, UnitMoveStats stats)
        {
            return FindPathCore(start, end, grid, stats, allowOccupiedEnd: true);
        }

        /// <summary>
        /// A* over the stand-height cost model with a min-heap open set. The heap has no
        /// decrease-key, so a tile improved after insertion leaves stale entries behind;
        /// they are skipped on pop via the costSoFar table. h is admissible and
        /// consistent (see GetStandHeightDistance), so the closed set never reopens.
        /// </summary>
        private static List<Vector3Int> FindPathCore(Vector3Int start, Vector3Int end, LogicalGrid grid, UnitMoveStats stats, bool allowOccupiedEnd)
        {
            float pathStartTime = Time.realtimeSinceStartup;

            AStarMinHeap openSet = new AStarMinHeap();
            Dictionary<Vector3Int, float> costSoFar = new Dictionary<Vector3Int, float>();
            HashSet<Vector3Int> closedSet = new HashSet<Vector3Int>();

            Node startNode = new Node(start) { gCost = 0, hCost = GetStandHeightDistance(start, end, grid) };
            openSet.Insert(startNode);
            costSoFar[start] = 0;

            while (openSet.Count > 0)
            {
                if (Time.realtimeSinceStartup - pathStartTime > 1.0f)
                {
                    Debug.LogError($"[AStar] FindPath 从 {start} 到 {end} 耗时过长(>{Time.realtimeSinceStartup - pathStartTime:F1}s)，可能死循环！openSet={openSet.Count}");
                    return null;
                }

                Node currentNode = openSet.ExtractMin();

                // Skip stale heap entries: the tile was re-inserted with a better cost later.
                if (currentNode.gCost > costSoFar[currentNode.position]) continue;
                if (!closedSet.Add(currentNode.position)) continue;

                if (currentNode.position == end)
                {
                    return RetracePath(startNode, currentNode);
                }

                foreach (Vector3Int neighborPos in GetValidNeighbors(currentNode, grid, stats, allowOccupiedEnd ? (Vector3Int?)end : null))
                {
                    if (closedSet.Contains(neighborPos)) continue;

                    float distCost = GetFlatDistance(currentNode.position, neighborPos);

                    // Uses world stand height (not Grid Y), so half-bricks cost 0.5
                    float currentStandY = GetStandHeight(currentNode.position, grid);
                    float targetStandY = GetStandHeight(neighborPos, grid);
                    float heightCost = Mathf.Abs(targetStandY - currentStandY);

                    float newCost = currentNode.gCost + distCost + heightCost;

                    if (costSoFar.TryGetValue(neighborPos, out float existingCost) && newCost >= existingCost)
                    {
                        continue;
                    }

                    costSoFar[neighborPos] = newCost;
                    openSet.Insert(new Node(neighborPos)
                    {
                        gCost = newCost,
                        hCost = GetStandHeightDistance(neighborPos, end, grid),
                        parent = currentNode
                    });
                }
            }

            return null;
        }

        public static HashSet<Vector3Int> GetReachableTiles(Vector3Int start, int moveRange, LogicalGrid grid, UnitMoveStats stats)
        {
            HashSet<Vector3Int> reachable = new HashSet<Vector3Int>();
            Dictionary<Vector3Int, float> costSoFar = new Dictionary<Vector3Int, float>();
            AStarMinHeap openSet = new AStarMinHeap();

            Node startNode = new Node(start) { gCost = 0 };
            openSet.Insert(startNode);
            costSoFar[start] = 0;

            while (openSet.Count > 0)
            {
                Node currentNode = openSet.ExtractMin();

                // Skip stale heap entries: the tile was re-inserted with a better cost later.
                if (currentNode.gCost > costSoFar[currentNode.position]) continue;

                reachable.Add(currentNode.position);

                foreach (Vector3Int neighborPos in GetValidNeighbors(currentNode, grid, stats))
                {
                    float distCost = 1.0f;

                    float currentStandY = GetStandHeight(currentNode.position, grid);
                    float targetStandY = GetStandHeight(neighborPos, grid);
                    float heightCost = Mathf.Abs(targetStandY - currentStandY);

                    float newCost = currentNode.gCost + distCost + heightCost;

                    if (newCost > moveRange) continue;

                    if (!costSoFar.TryGetValue(neighborPos, out float existingCost) || newCost < existingCost)
                    {
                        costSoFar[neighborPos] = newCost;
                        openSet.Insert(new Node(neighborPos) { gCost = newCost });
                    }
                }
            }

            return reachable;
        }

        /// <summary>Reachable tiles mapped to their movement cost.</summary>
        public static Dictionary<Vector3Int, float> GetReachableTilesWithDistance(Vector3Int start, int moveRange, LogicalGrid grid, UnitMoveStats stats)
        {
            Dictionary<Vector3Int, float> reachableMap = new Dictionary<Vector3Int, float>();
            Dictionary<Vector3Int, float> costSoFar = new Dictionary<Vector3Int, float>();
            AStarMinHeap openSet = new AStarMinHeap();

            Node startNode = new Node(start) { gCost = 0 };
            openSet.Insert(startNode);
            costSoFar[start] = 0;

            while (openSet.Count > 0)
            {
                Node currentNode = openSet.ExtractMin();

                // Skip stale heap entries: the tile was re-inserted with a better cost later.
                if (currentNode.gCost > costSoFar[currentNode.position]) continue;

                reachableMap[currentNode.position] = currentNode.gCost;

                foreach (Vector3Int neighborPos in GetValidNeighbors(currentNode, grid, stats))
                {
                    float distCost = 1.0f;

                    float currentStandY = GetStandHeight(currentNode.position, grid);
                    float targetStandY = GetStandHeight(neighborPos, grid);
                    float heightCost = Mathf.Abs(targetStandY - currentStandY);

                    float newCost = currentNode.gCost + distCost + heightCost;

                    if (newCost > moveRange) continue;
                    if (!costSoFar.TryGetValue(neighborPos, out float existingCost) || newCost < existingCost)
                    {
                        costSoFar[neighborPos] = newCost;
                        openSet.Insert(new Node(neighborPos) { gCost = newCost });
                    }
                }
            }
            return reachableMap;
        }

        public static List<Vector3Int> GetValidNeighbors(Node currentNode, LogicalGrid grid, UnitMoveStats stats, Vector3Int? endPosition = null)
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
                        if (!(endPosition.HasValue && targetBlockPos == endPosition.Value))
                        {
                            MapUnit unitAtPos = Managers.UnitManager.Instance?.GetUnitAt(targetBlockPos);
                            if (unitAtPos != null)
                            {
                                break;
                            }
                        }
                        
                        validNeighbors.Add(targetBlockPos);
                        break;
                    }
                }
            }
            return validNeighbors;
        }

        static public bool CanStandAt(LogicalGrid grid, Vector3Int targetBase, Vector3Int currentBase, UnitMoveStats stats)
        {
            BlockType floor = grid.GetBlock(targetBase);
            
            if (floor == BlockType.Air || floor == BlockType.Liquid) 
                return false;

            float floorHeight = grid.GetBlockYSize(targetBase);

            float targetStandY = targetBase.y + floorHeight;
            
            float currentFloorHeight = grid.GetBlockYSize(currentBase);
            float currentStandY = currentBase.y + currentFloorHeight;

            float diff = targetStandY - currentStandY;

            // 0.01f epsilon guards against float precision error (e.g. 1.0 vs 0.99999)
            if (diff > stats.jumpHeight + 0.01f) return false; 
            if (diff < -stats.dropHeight - 0.01f) return false;

            float playerHeight = 2.0f;
            
            int checkStartGridY = targetBase.y; 
            int checkEndGridY = Mathf.CeilToInt(targetStandY + playerHeight);

            for (int y = checkStartGridY; y <= checkEndGridY; y++)
            {
                if (y == targetBase.y) continue;

                Vector3Int checkPos = new Vector3Int(targetBase.x, y, targetBase.z);
                BlockType b = grid.GetBlock(checkPos);
                
                if (b != BlockType.Air && b != BlockType.Liquid)
                {
                    float blockBot = y;
                    float blockTop = y + grid.GetBlockYSize(checkPos);

                    float playerBot = targetStandY;
                    float playerTop = targetStandY + playerHeight;

                    // 1D AABB overlap check with small epsilon tolerance
                    if (blockBot < playerTop - 0.01f && blockTop > playerBot + 0.01f)
                    {
                        return false;
                    }
                }
            }

            return true;
        }
        /// <summary>Units within move+attack range, ignoring obstacles (rough AI estimate).</summary>
        public static List<MapUnit> GetUnitInRangeFuzzy(MapUnit unit)
        {
            float moveRange = unit.Character.statSystem.moveRange.getValue();
            int maxAttackRange = unit.Character.characterData.MaxRange;
            int minAttackRange = unit.Character.characterData.MinRange;
            List<MapUnit>ans = new List<MapUnit>();
            foreach(var _unit in Managers.UnitManager.Instance.GetAllAliveUnit())
            {
                var Hitpoint = _unit.GetHitPoint();
                float dis = GameMath.abs(Hitpoint,unit.GetProjectileOrigin());
                if(dis >= minAttackRange && dis <= moveRange + maxAttackRange)
                {
                    ans.Add(_unit);
                }
                
            }
            return ans;
        }

        public static List<Vector3Int> RetracePath(Node startNode, Node endNode)
        {
            List<Vector3Int> path = new List<Vector3Int>();
            Node curr = endNode;
            while (curr != startNode) 
            { 
                path.Add(curr.position); 
                curr = curr.parent; 
            }
            path.Reverse();
            return path;
        }

        public static float GetFlatDistance(Vector3Int a, Vector3Int b)
        {
            return Mathf.Abs(a.x - b.x) + Mathf.Abs(a.z - b.z);
        }

        public static float Get3DDistance(Vector3Int a, Vector3Int b)
        {
            return Mathf.Abs(a.x - b.x) + Mathf.Abs(a.y - b.y) + Mathf.Abs(a.z - b.z);
        }
    }
}
