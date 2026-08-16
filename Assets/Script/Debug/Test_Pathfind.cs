using System;
using System.Collections.Generic;
using UnityEngine;
using Global;
using GamePlay.Grid;
using GamePlay.Units;

namespace DebugSystem
{
    /// <summary>
    /// Differential pathfinding test: A* vs a reference Dijkstra over random voxel
    /// maps with stand-height differences (slabs/solids). Run "runAllTests" in the
    /// debug console during play mode. Uses no managers or scene objects: grids are
    /// built from plain data via LogicalGrid.BuildFromData.
    ///
    /// The reference shares AStar.GetValidNeighbors, so both algorithms expand the
    /// exact same move set; the test then verifies that A* returns a legal path whose
    /// cost matches the Dijkstra optimum (i.e. the heuristic stays admissible).
    /// </summary>
    public static class Test_Pathfind
    {
        private static int _pass;
        private static int _fail;
        private static int _skip;
        private static readonly List<string> _failures = new List<string>();

        public static int PassCount => _pass;
        public static int FailCount => _fail;
        public static int SkipCount => _skip;

        // Generous movement so 1.0 stand-height steps are walkable.
        private static readonly UnitMoveStats Stats = new UnitMoveStats { jumpHeight = 1.5f, dropHeight = 1.5f };

        private const int MapW = 10;
        private const int MapH = 8;
        private const int MapD = 10;
        private const int RandomMapCount = 100;
        private const float MoveRange = 6f;

        public static void RunAll()
        {
            _pass = _fail = _skip = 0;
            _failures.Clear();

            TestStartEqualsEnd();
            TestUnreachableTowerTop();
            TestSlabStaircase();
            TestHalfBrickStep();
            TestRandomMaps();
            TestReachableTilesAgainstDijkstra();

            if (_fail == 0)
            {
                Debug.Log($"[TestPathfind] 全部通过: {_pass} 项 (跳过 {_skip})");
            }
            else
            {
                Debug.LogError($"[TestPathfind] 失败 {_fail} 项 / 通过 {_pass} 项 (跳过 {_skip})");
                foreach (string f in _failures)
                {
                    Debug.LogError($"[TestPathfind] FAIL: {f}");
                }
            }
        }

        // ==================== helpers ====================

        private static void Check(string name, bool ok, string detail = "")
        {
            if (ok)
            {
                _pass++;
                return;
            }
            _fail++;
            _failures.Add($"{name}: {detail}");
        }

        private static bool NearlyEqual(float a, float b)
        {
            return Mathf.Abs(a - b) < 0.001f;
        }

        private static float Stand(Vector3Int pos, LogicalGrid grid)
        {
            return AStar.GetStandHeight(pos, grid);
        }

        /// <summary>Step cost shared by A* and the reference: 1 flat + stand-height delta.</summary>
        private static float StepCost(Vector3Int a, Vector3Int b, LogicalGrid grid)
        {
            return 1f + Mathf.Abs(Stand(b, grid) - Stand(a, grid));
        }

        /// <summary>
        /// Cost of a retraced path. RetracePath excludes the start tile, so the
        /// start -> path[0] step must be counted explicitly.
        /// </summary>
        private static float PathCost(List<Vector3Int> path, Vector3Int start, LogicalGrid grid)
        {
            float total = 0f;
            Vector3Int prev = start;
            for (int i = 0; i < path.Count; i++)
            {
                total += StepCost(prev, path[i], grid);
                prev = path[i];
            }
            return total;
        }

        /// <summary>Reference Dijkstra over the whole map using A*'s own neighbor rules.</summary>
        private static Dictionary<Vector3Int, float> DijkstraAll(Vector3Int start, LogicalGrid grid, UnitMoveStats stats)
        {
            Dictionary<Vector3Int, float> dist = new Dictionary<Vector3Int, float>();
            HashSet<Vector3Int> settled = new HashSet<Vector3Int>();
            dist[start] = 0f;

            while (true)
            {
                Vector3Int? current = null;
                float best = float.MaxValue;
                foreach (KeyValuePair<Vector3Int, float> kv in dist)
                {
                    if (!settled.Contains(kv.Key) && kv.Value < best)
                    {
                        best = kv.Value;
                        current = kv.Key;
                    }
                }
                if (current == null)
                {
                    return dist;
                }
                settled.Add(current.Value);
                foreach (Vector3Int nb in AStar.GetValidNeighbors(new Node(current.Value), grid, stats))
                {
                    float nd = best + StepCost(current.Value, nb, grid);
                    if (!dist.TryGetValue(nb, out float d) || nd < d)
                    {
                        dist[nb] = nd;
                    }
                }
            }
        }

        private static bool DijkstraMinCost(Vector3Int start, Vector3Int end, LogicalGrid grid, UnitMoveStats stats, out float minCost)
        {
            Dictionary<Vector3Int, float> dist = DijkstraAll(start, grid, stats);
            if (dist.TryGetValue(end, out minCost))
            {
                return true;
            }
            minCost = float.MaxValue;
            return false;
        }

        /// <summary>
        /// Verifies the path is legal under the movement rules and connects start to end.
        /// The path excludes start, so each step is validated from start onward.
        /// </summary>
        private static bool IsLegalPath(List<Vector3Int> path, Vector3Int start, Vector3Int end, LogicalGrid grid, UnitMoveStats stats)
        {
            if (path == null) return false;
            if (path.Count == 0) return start == end;
            if (path[path.Count - 1] != end) return false;

            Vector3Int prev = start;
            for (int i = 0; i < path.Count; i++)
            {
                List<Vector3Int> neighbors = AStar.GetValidNeighbors(new Node(prev), grid, stats);
                if (!neighbors.Contains(path[i])) return false;
                prev = path[i];
            }
            return true;
        }

        /// <summary>Grid with slab-topped terrain: solids y=[0,h), slab at y=h (stand h+0.5).</summary>
        private static LogicalGrid BuildHeightField(int[,] heights, Dictionary<Vector3Int, int> towers = null)
        {
            Dictionary<Vector3Int, (BlockType type, float ySize)> blocks = new Dictionary<Vector3Int, (BlockType, float)>();
            for (int x = 0; x < heights.GetLength(0); x++)
            {
                for (int z = 0; z < heights.GetLength(1); z++)
                {
                    int h = heights[x, z];
                    for (int y = 0; y < h; y++)
                    {
                        blocks[new Vector3Int(x, y, z)] = (BlockType.Solid, 1f);
                    }
                    blocks[new Vector3Int(x, h, z)] = (BlockType.Slab, 0.5f);
                }
            }
            if (towers != null)
            {
                foreach (KeyValuePair<Vector3Int, int> kv in towers)
                {
                    for (int y = 0; y < kv.Value; y++)
                    {
                        blocks[new Vector3Int(kv.Key.x, y, kv.Key.z)] = (BlockType.Solid, 1f);
                    }
                }
            }
            LogicalGrid grid = new LogicalGrid();
            grid.BuildFromData(blocks);
            return grid;
        }

        /// <summary>
        /// Core assertion: A* result must agree with Dijkstra — reachable iff reachable,
        /// legal path, and path cost equal to the optimum. FindPathToOccupied must agree
        /// on maps without units.
        /// </summary>
        private static void AssertDifferential(Vector3Int start, Vector3Int end, LogicalGrid grid, string label)
        {
            List<Vector3Int> path = AStar.FindPath(start, end, grid, Stats);
            bool refReachable = DijkstraMinCost(start, end, grid, Stats, out float refCost);

            if (!refReachable)
            {
                Check($"不可达 {label}", path == null,
                    path == null ? "期望 null 实际 null" : $"期望 null 实际有路径({path.Count} 步)");
                return;
            }

            Check($"可达 {label}", path != null, "期望有路径，实际 null");
            if (path == null) return;

            Check($"路径合法 {label}", IsLegalPath(path, start, end, grid, Stats), "路径违反移动规则");
            float pathCost = PathCost(path, start, grid);
            Check($"路径最优 {label}", NearlyEqual(pathCost, refCost),
                $"A*={pathCost:F3} Dijkstra={refCost:F3}");

            List<Vector3Int> path2 = AStar.FindPathToOccupied(start, end, grid, Stats);
            Check($"占用终点变体 {label}", path2 != null && NearlyEqual(PathCost(path2, start, grid), refCost),
                path2 == null ? "返回 null" : $"代价 {PathCost(path2, start, grid):F3} != {refCost:F3}");
        }

        private static Vector3Int PickStandableTile(System.Random rng, int[,] heights, Dictionary<Vector3Int, int> towers)
        {
            while (true)
            {
                int x = rng.Next(0, MapW);
                int z = rng.Next(0, MapD);
                if (towers.ContainsKey(new Vector3Int(x, 0, z))) continue;
                return new Vector3Int(x, heights[x, z], z);
            }
        }

        // ==================== fixed cases ====================

        private static void TestStartEqualsEnd()
        {
            int[,] h = new int[3, 3] { { 1, 1, 1 }, { 1, 1, 1 }, { 1, 1, 1 } };
            LogicalGrid grid = BuildHeightField(h);
            Vector3Int pos = new Vector3Int(1, 1, 1);

            List<Vector3Int> path = AStar.FindPath(pos, pos, grid, Stats);
            Check("起点=终点", path != null && path.Count == 0,
                path == null ? "返回 null" : $"路径长度 {path.Count}");
        }

        private static void TestUnreachableTowerTop()
        {
            int[,] h = new int[5, 5];
            for (int x = 0; x < 5; x++)
            {
                for (int z = 0; z < 5; z++)
                {
                    h[x, z] = 1;
                }
            }
            // 5-high tower in the middle: its top (stand 5.0) is far beyond jump/drop 1.5.
            Dictionary<Vector3Int, int> towers = new Dictionary<Vector3Int, int> { { new Vector3Int(2, 0, 2), 5 } };
            LogicalGrid grid = BuildHeightField(h, towers);
            Vector3Int start = new Vector3Int(0, 1, 0);
            Vector3Int end = new Vector3Int(2, 4, 2);

            AssertDifferential(start, end, grid, "塔顶不可达");
        }

        private static void TestSlabStaircase()
        {
            // Ramp up 0..3 then down 3..0; ends at stand 0.5, apex at 3.5.
            int[,] h = new int[7, 3];
            int[] ramp = { 0, 1, 2, 3, 2, 1, 0 };
            for (int x = 0; x < 7; x++)
            {
                for (int z = 0; z < 3; z++)
                {
                    h[x, z] = ramp[x];
                }
            }
            LogicalGrid grid = BuildHeightField(h);
            Vector3Int start = new Vector3Int(0, 0, 1);
            Vector3Int end = new Vector3Int(6, 0, 1);

            AssertDifferential(start, end, grid, "半砖阶梯");
        }

        private static void TestHalfBrickStep()
        {
            // The original inadmissible-heuristic trap: A stands on a slab at gridY 5
            // (stand 5.5), B stands on a solid at gridY 4 (stand 5.0). A->B step costs
            // 1.5, while a grid-Y-only heuristic would estimate 2 and may prune it.
            int[,] h = new int[3, 3];
            for (int x = 0; x < 3; x++)
            {
                for (int z = 0; z < 3; z++)
                {
                    h[x, z] = 5;
                }
            }
            Dictionary<Vector3Int, int> towers = new Dictionary<Vector3Int, int>
            {
                { new Vector3Int(0, 0, 1), 5 }, // solid at y=4, stand 5.0
            };
            LogicalGrid grid = BuildHeightField(h, towers);
            Vector3Int a = new Vector3Int(1, 5, 1); // slab at y=5, stand 5.5
            Vector3Int b = new Vector3Int(0, 4, 1); // solid at y=4, stand 5.0

            AssertDifferential(a, b, grid, "半砖落差 A→B");
            AssertDifferential(b, a, grid, "半砖落差 B→A");
        }

        // ==================== random maps ====================

        private static void TestRandomMaps()
        {
            System.Random rng = new System.Random(20260815);
            for (int m = 0; m < RandomMapCount; m++)
            {
                int[,] heights = new int[MapW, MapD];
                Dictionary<Vector3Int, int> towers = new Dictionary<Vector3Int, int>();
                for (int x = 0; x < MapW; x++)
                {
                    for (int z = 0; z < MapD; z++)
                    {
                        heights[x, z] = rng.Next(0, 4);
                        if (rng.NextDouble() < 0.12)
                        {
                            towers[new Vector3Int(x, 0, z)] = MapH;
                        }
                    }
                }
                LogicalGrid grid = BuildHeightField(heights, towers);

                Vector3Int start = PickStandableTile(rng, heights, towers);
                Vector3Int end = PickStandableTile(rng, heights, towers);
                if (start == end) continue;

                AssertDifferential(start, end, grid, $"随机图#{m}");
            }
        }

        private static void TestReachableTilesAgainstDijkstra()
        {
            System.Random rng = new System.Random(20260816);
            int[,] heights = new int[MapW, MapD];
            Dictionary<Vector3Int, int> towers = new Dictionary<Vector3Int, int>();
            for (int x = 0; x < MapW; x++)
            {
                for (int z = 0; z < MapD; z++)
                {
                    heights[x, z] = rng.Next(0, 4);
                    if (rng.NextDouble() < 0.12)
                    {
                        towers[new Vector3Int(x, 0, z)] = MapH;
                    }
                }
            }
            LogicalGrid grid = BuildHeightField(heights, towers);
            Vector3Int start = PickStandableTile(rng, heights, towers);

            HashSet<Vector3Int> reachable = AStar.GetReachableTiles(start, (int)MoveRange, grid, Stats);
            Dictionary<Vector3Int, float> dist = DijkstraAll(start, grid, Stats);

            foreach (KeyValuePair<Vector3Int, float> kv in dist)
            {
                bool expectInRange = kv.Value <= MoveRange + 0.001f;
                bool isInReachable = reachable.Contains(kv.Key);
                Check($"可达集一致 {kv.Key}", expectInRange == isInReachable,
                    $"Dijkstra={kv.Value:F2} 移动范围={MoveRange} reachable={isInReachable}");
            }

            // Every reachable tile must also exist in the Dijkstra map with cost <= range.
            foreach (Vector3Int pos in reachable)
            {
                Check($"可达集在参考图内 {pos}",
                    dist.TryGetValue(pos, out float cost) && cost <= MoveRange + 0.001f,
                    dist.TryGetValue(pos, out float c2) ? $"代价 {c2:F2}" : "参考图缺失");
            }
        }
    }
}
