using System.Collections.Generic;
using System.Linq;
using Core.Data;
using Map;
using UnityEngine;

namespace DebugSystem
{
    /// <summary>
    /// Map generation test harness. Run "testMapGen" in the debug console during
    /// play mode. Generates the map N times and asserts the configured
    /// constraints: layer count range, last layer is a single battle node,
    /// valid level ids, centered in-bounds slots, forward connectivity, and a
    /// loose type-distribution check against the configured probabilities.
    /// </summary>
    public static class Test_MapGen
    {
        private const int Iterations = 30;

        public static void RunAll()
        {
            MapGenConfigData cfg = Data.Config.mapGenConfig;
            int maxPerLayer = Data.Config.ViewConfig.mapNodeMaxPerLayer;
            int pass = 0, fail = 0;
            var failures = new List<string>();
            var typeCounts = new Dictionary<MapType, int>
            {
                { MapType.Battle, 0 }, { MapType.Shop, 0 }, { MapType.Event, 0 },
            };

            void Check(string name, bool ok, string detail = "")
            {
                if (ok) { pass++; return; }
                fail++;
                failures.Add($"{name}: {detail}");
            }

            for (int i = 0; i < Iterations; i++)
            {
                NodeMapData map = NodeMapData.GenerateMap();
                Check($"#{i} 层数范围", map.layerCount >= cfg.minLayerCount && map.layerCount <= cfg.maxLayerCount,
                    $"期望 [{cfg.minLayerCount}, {cfg.maxLayerCount}] 实际 {map.layerCount}");

                List<BaseNode> last = map.layers[map.layerCount - 1];
                Check($"#{i} 最后一层为单个战斗节点",
                    last.Count == 1 && last[0].type == MapType.Battle,
                    $"实际 count={last.Count} type={(last.Count > 0 ? last[0].type.ToString() : "空")}");

                for (int li = 0; li < map.layerCount; li++)
                {
                    List<BaseNode> layer = map.layers[li];
                    bool isLast = li == map.layerCount - 1;
                    int minNodes = isLast ? 1 : cfg.minNodePerLayer;
                    Check($"#{i} 层{li}节点数", layer.Count >= minNodes && layer.Count <= maxPerLayer,
                        $"期望 [{minNodes}, {maxPerLayer}] 实际 {layer.Count}");

                    var rows = new HashSet<int>();
                    foreach (BaseNode node in layer)
                    {
                        Check($"#{i} 层{li}槽位越界", node.row >= 0 && node.row < maxPerLayer,
                            $"row={node.row}");
                        Check($"#{i} 层{li}槽位重复", rows.Add(node.row), $"row={node.row}");

                        if (node is BattleNode bn)
                        {
                            Check($"#{i} 层{li}关卡有效 {bn.level}",
                                !string.IsNullOrEmpty(bn.level) && Data.Table.LevelConfigs.ContainsKey(bn.level),
                                $"level='{bn.level}'");
                        }

                        if (!isLast)
                        {
                            Check($"#{i} 层{li}出边存在", node.connections.Count >= 1, $"id={node.id}");
                            var nextIds = new HashSet<string>(map.layers[li + 1].Select(n => n.id));
                            Check($"#{i} 层{li}出边指向下一层",
                                node.connections.All(c => nextIds.Contains(c)), $"id={node.id}");
                        }
                        else
                        {
                            typeCounts[MapType.Battle]++;
                        }
                    }

                    if (!isLast)
                    {
                        foreach (BaseNode node in layer)
                        {
                            typeCounts[node.type]++;
                        }
                    }
                }
            }

            // Loose distribution check: type share should be near the configured probability.
            int total = typeCounts.Values.Sum();
            if (total > 0)
            {
                float tolerance = 0.15f;
                CheckTypeShare(typeCounts, MapType.Battle, cfg.battleProbability, total, tolerance, ref pass, ref fail, failures);
                CheckTypeShare(typeCounts, MapType.Shop, cfg.shopProbability, total, tolerance, ref pass, ref fail, failures);
                CheckTypeShare(typeCounts, MapType.Event, cfg.eventProbability, total, tolerance, ref pass, ref fail, failures);
            }

            if (fail == 0)
            {
                Debug.Log($"[TestMapGen] 全部通过: {pass} 项 | 类型分布 Battle={Share(typeCounts, MapType.Battle, total):P0} " +
                          $"Shop={Share(typeCounts, MapType.Shop, total):P0} Event={Share(typeCounts, MapType.Event, total):P0} " +
                          $"(配置 {cfg.battleProbability:P0}/{cfg.shopProbability:P0}/{cfg.eventProbability:P0})");
            }
            else
            {
                Debug.LogError($"[TestMapGen] 失败 {fail} 项 / 通过 {pass} 项 | 类型分布 Battle={Share(typeCounts, MapType.Battle, total):P0} " +
                               $"Shop={Share(typeCounts, MapType.Shop, total):P0} Event={Share(typeCounts, MapType.Event, total):P0}");
                foreach (string f in failures)
                {
                    Debug.LogError($"[TestMapGen] FAIL: {f}");
                }
            }
        }

        private static void CheckTypeShare(Dictionary<MapType, int> counts, MapType type, float expected,
            int total, float tolerance, ref int pass, ref int fail, List<string> failures)
        {
            float share = Share(counts, type, total);
            bool ok = Mathf.Abs(share - expected) <= tolerance;
            if (ok) { pass++; return; }
            fail++;
            failures.Add($"{type} 占比 {share:P0} 偏离配置 {expected:P0} (容差 {tolerance:P0})");
        }

        private static float Share(Dictionary<MapType, int> counts, MapType type, int total)
        {
            return total > 0 ? counts.TryGetValue(type, out int c) ? c / (float)total : 0f : 0f;
        }
    }
}
