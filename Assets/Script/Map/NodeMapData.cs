using UnityEngine;
using System;
using System.Collections.Generic;
using System.Linq;
using Core.Data;
using Newtonsoft.Json;
using Random = UnityEngine.Random;
using RelicConfig = Core.Data.TableData.RelicConfig;
using Global;

namespace Map
{
    public enum MapType
    {
        Empty,
        Battle,
        Shop,
        Event,
        Boss,
    }

    public interface IMapNode
    {
        public string id { get; }
        public MapType type { get; }
        public int row { get; set; }
        public List<string> connections { get; }
        public bool isLock{get;set;}
    }

    [Serializable]
    public abstract class BaseNode : IMapNode
    {
        // [JsonProperty] is required to deserialize the private id setter; otherwise saved connections break.
        [JsonProperty]
        public string id { get; private set; }
        public MapType type { get; protected set; }
        public int col{get;set;}
        public int row { get; set; }
        public List<string> connections { get; private set; } = new();
        private bool _isLock;
        public bool isLock
        {
            get => _isLock;
            set
            {
                _isLock = value;
                _onLockChange?.Invoke(value);
            }
        }
        [JsonIgnore] public Action<bool> _onLockChange;
        [JsonIgnore] public Action _onEnterNode;
        protected BaseNode() : this(null)
        {
        }
        protected BaseNode(string id)
        {
            this.id = id ?? Guid.NewGuid().ToString("N");
            isLock = true;
            // NOTE: no self-lock on enter. The current node must stay unlocked so
            // a mid-level exit + continue can retry it; NextLevel() locks it on win.
        }
    }

    [Serializable]
    public class BattleNode : BaseNode
    {
        public string level;

        public BattleNode() : base()
        {
            type = MapType.Battle;
        }

        public BattleNode(string id) : base(id)
        {
            type = MapType.Battle;
        }
    }
    public struct ShopSlotData
    {
        public int price;
        public string itemId;
    }

    [Serializable]
    public class ShopNode : BaseNode
    {
        public ShopNode() : base()
        {
            type = MapType.Shop;
        }

        public ShopNode(string id) : base(id)
        {
            type = MapType.Shop;
        }
        public List<ShopSlotData> itemSlots;
        public static ShopNode genShopNode()
        {
            int shopItemCount = Random.Range(Data.Config.shopConfig.minShopItemCount, Data.Config.shopConfig.maxShopItemCount);
            Dictionary<Global.RarityType, List<RelicConfig>> relicMap = new();
            foreach (var relic in Core.Data.Data.Table.RelicConfigs.Values)
            {
                if (!relicMap.TryGetValue(relic.rarity, out var list))
                {
                    list = new List<RelicConfig>();
                    relicMap[relic.rarity] = list;
                }
                list.Add(relic);
            }
            foreach (var relicList in relicMap.Values)
            {
                Utils.Utils.Shuffle<RelicConfig>(relicList);
            }
            Dictionary<Global.RarityType, int> relicRarityCount = new();
            float sumRate = 0.0f;
            foreach (var key in relicMap.Keys)
            {
                sumRate += Data.Config.shopConfig.rarityProbability[key];
            }
            int sumCount = 0;
            foreach (var key in relicMap.Keys)
            {
                relicRarityCount[key] = UnityEngine.Mathf.FloorToInt(shopItemCount * (Data.Config.shopConfig.rarityProbability[key] / sumRate));
                sumCount += relicRarityCount[key];
            }
            if (sumCount < shopItemCount)
            {
                var types = new Global.RarityType[relicMap.Keys.Count];
                relicMap.Keys.CopyTo(types, 0);
                for (int i = 0; i < shopItemCount - sumCount; i++)
                {
                    int index = (i) % types.Length;
                    relicRarityCount[types[index]]++;
                }
            }
            int actualGetCount = 0;
            ShopNode node = new() { itemSlots = new List<ShopSlotData>() };
            foreach (var (rarity, count) in relicRarityCount)
            {
                var relicList = relicMap[rarity];
                for (int i = 0; i < relicMap[rarity].Count; i++)
                {
                    if (i >= count) break;
                    var relicConfig = relicList[i];
                    int price = Random.Range(relicConfig.minPrice, relicConfig.maxPrice);
                    ShopSlotData slotData = new();
                    slotData.itemId = relicConfig.id;
                    slotData.price = price;
                    node.itemSlots.Add(slotData);
                    actualGetCount++;
                }
            }
            if (actualGetCount < shopItemCount)
            {
                var relicConfig = Data.Table.RelicConfigs[Data.Config.shopConfig.repeatShopItemId];
                for (int i = 0; i < shopItemCount - actualGetCount; i++)
                {
                    int price = Random.Range(relicConfig.minPrice, relicConfig.maxPrice);
                    ShopSlotData slotData = new();
                    slotData.price = price;
                    slotData.itemId = relicConfig.id;
                    node.itemSlots.Add(slotData);
                }
            }
            Utils.Utils.Shuffle<ShopSlotData>(node.itemSlots);
            return node;
        }
    }

    [Serializable]
    public class EventNode : BaseNode
    {
        public string eventId;

        public EventNode() : base()
        {
            type = MapType.Event;
        }

        public EventNode(string id) : base(id)
        {
            type = MapType.Event;
        }
    }

    [Serializable]
    public class BossNode : BaseNode
    {
        public BossNode() : base()
        {
            type = MapType.Boss;
        }

        public BossNode(string id) : base(id)
        {
            type = MapType.Boss;
        }
    }

    [Serializable]
    public class NodeMapData
    {
        public List<List<BaseNode>> layers = new();

        public int layerCount => layers.Count;

        public NodeMapData() { }

        public NodeMapData(int layerCount)
        {
            for (int i = 0; i < layerCount; i++)
            {
                layers.Add(new List<BaseNode>());
            }
        }

        public static NodeMapData GenerateFakeData()
        {
            NodeMapData mapData = new(3);

            BattleNode node1 = new("n_001") { level = "lv_001", row = 0, col = 0 };
            BattleNode node2 = new("n_002") { level = "lv_002", row = 1, col = 1 };
            BattleNode node3 = new("n_003") { level = "lv_001", row = 0, col = 2 };

            ShopNode shop = ShopNode.genShopNode();
            shop.row = 1;
            shop.col = 0;

            EventNode eventNode = new("n_ev_flappy") { eventId = "ev_flappy", row = 2, col = 0 };

            node1.connections.Add(node2.id);
            shop.connections.Add(node2.id);
            eventNode.connections.Add(node2.id);
            node2.connections.Add(node3.id);

            mapData.layers[0].Add(node1);
            mapData.layers[0].Add(shop);
            mapData.layers[0].Add(eventNode);
            mapData.layers[1].Add(node2);
            mapData.layers[2].Add(node3);

            return mapData;
        }

        public static NodeMapData GenerateFakeDeepMap(int layerCount = 100)
        {
            int maxPerLayer = Data.Config.ViewConfig.mapNodeMaxPerLayer;
            NodeMapData mapData = new(layerCount);
            var allTypes = (MapType[])Enum.GetValues(typeof(MapType));
            bool hasEventConfig = Data.Table.EventConfigs.Count > 0;
            var mapTypes = Array.FindAll(allTypes, t => t != MapType.Empty && (t != MapType.Event || hasEventConfig));

            for (int i = 0; i < layerCount; i++)
            {
                int nodeCount = Random.Range(0, maxPerLayer + 1);
                for (int j = 0; j < nodeCount; j++)
                {
                    int slotIndex = Random.Range(0, maxPerLayer);
                    MapType type = mapTypes[Random.Range(0, mapTypes.Length)];

                    BaseNode node = type switch
                    {
                        MapType.Battle => new BattleNode { level = "test" },
                        MapType.Shop => new ShopNode(),
                        MapType.Event => new EventNode { eventId = GetRandomEventId() },
                        MapType.Boss => new BossNode(),
                        _ => new BattleNode { level = "test" },
                    };
                    node.row = slotIndex;
                    node.col = i;
                    mapData.layers[i].Add(node);
                }
            }

            for (int i = 0; i < layerCount - 1; i++)
            {
                foreach (var src in mapData.layers[i])
                {
                    if (Random.value > 0.3f && mapData.layers[i + 1].Count > 0)
                    {
                        var near = mapData.layers[i + 1]
                            .Where(t => Mathf.Abs(t.row - src.row) <= 1)
                            .ToList();
                        if (near.Count == 0)
                            near = mapData.layers[i + 1];
                        var tgt = near[Random.Range(0, near.Count)];
                        src.connections.Add(tgt.id);
                    }
                }
            }

            return mapData;
        }

        /// <summary>
        /// Real random map generation (config-driven). Guarantees:
        /// - layer count from MapGenConfig (default 8-10)
        /// - node types rolled by configured probabilities (Event/Battle/Shop)
        /// - centered slot layout within [0, mapNodeMaxPerLayer)
        /// - the last layer is always a single battle node (no boss levels yet)
        /// - every node connects forward to the next layer, so all paths are traversable
        /// - battle levels picked with replacement from BattleNodeConfigs (small pool)
        /// Fake generators (GenerateFakeData/GenerateFakeDeepMap) are kept for testing.
        /// </summary>
        public static NodeMapData GenerateMap()
        {
            MapGenConfigData cfg = Data.Config.mapGenConfig;
            int layerCount = Random.Range(cfg.minLayerCount, cfg.maxLayerCount + 1);
            int maxPerLayer = Data.Config.ViewConfig.mapNodeMaxPerLayer;

            NodeMapData mapData = new(layerCount);

            for (int i = 0; i < layerCount; i++)
            {
                bool isLast = i == layerCount - 1;
                int nodeCount = isLast ? 1 : Random.Range(cfg.minNodePerLayer, maxPerLayer + 1);
                int startSlot = Mathf.Max(0, (maxPerLayer - nodeCount) / 2);

                for (int j = 0; j < nodeCount; j++)
                {
                    MapType type = isLast ? MapType.Battle : RollMapType(cfg);
                    BaseNode node = CreateNode(type);
                    node.row = startSlot + j;
                    node.col = i;
                    mapData.layers[i].Add(node);
                }
            }

            ConnectLayers(mapData);
            RemoveUnreachableNodes(mapData);
            return mapData;
        }

        /// <summary>Rolls a node type by configured probabilities (normalized).</summary>
        private static MapType RollMapType(MapGenConfigData cfg)
        {
            float sum = cfg.battleProbability + cfg.shopProbability + cfg.eventProbability;
            float roll = Random.value * sum;
            if (roll < cfg.battleProbability) return MapType.Battle;
            if (roll < cfg.battleProbability + cfg.shopProbability) return MapType.Shop;
            return MapType.Event;
        }

        private static BaseNode CreateNode(MapType type)
        {
            return type switch
            {
                MapType.Shop => ShopNode.genShopNode(),
                MapType.Event => new EventNode { eventId = GetRandomEventId() },
                _ => new BattleNode { level = PickBattleLevel() },
            };
        }

        /// <summary>Random valid level id from BattleNodeConfigs (with replacement), falling back to LevelConfigs keys.</summary>
        private static string PickBattleLevel()
        {
            List<string> levels = new();
            foreach (var battleCfg in Data.Table.BattleNodeConfigs.Values)
            {
                if (!string.IsNullOrEmpty(battleCfg.levelId))
                {
                    levels.Add(battleCfg.levelId);
                }
            }
            if (levels.Count == 0)
            {
                levels.AddRange(Data.Table.LevelConfigs.Keys);
            }
            return levels.Count > 0 ? levels[Random.Range(0, levels.Count)] : null;
        }

        /// <summary>
        /// Connects layers so the map is fully traversable:
        /// 1) every next-layer node gets at least one incoming edge (incoming guarantee),
        /// 2) every node keeps at least one outgoing edge (outgoing guarantee).
        /// Adjacent slots are preferred so the map reads left-to-right; any slot is the fallback.
        /// </summary>
        private static void ConnectLayers(NodeMapData mapData)
        {
            for (int i = 0; i < mapData.layerCount - 1; i++)
            {
                List<BaseNode> layer = mapData.layers[i];
                List<BaseNode> next = mapData.layers[i + 1];
                if (layer.Count == 0 || next.Count == 0) continue;

                // Incoming guarantee: every node of the next layer is reachable from this layer.
                foreach (BaseNode tgt in next)
                {
                    List<BaseNode> candidates = layer.Where(s => Mathf.Abs(s.row - tgt.row) <= 1).ToList();
                    if (candidates.Count == 0) candidates = layer;
                    BaseNode src = candidates[Random.Range(0, candidates.Count)];
                    if (!src.connections.Contains(tgt.id)) src.connections.Add(tgt.id);
                }

                // Outgoing guarantee: every node can move forward at least once.
                foreach (BaseNode src in layer)
                {
                    if (src.connections.Count > 0) continue;
                    List<BaseNode> near = next.Where(t => Mathf.Abs(t.row - src.row) <= 1).ToList();
                    if (near.Count == 0) near = next;
                    BaseNode tgt = near[Random.Range(0, near.Count)];
                    if (!src.connections.Contains(tgt.id)) src.connections.Add(tgt.id);
                }
            }
        }

        /// <summary>
        /// Removes nodes that can never be entered (non-first-layer nodes with zero
        /// incoming edges) together with their outgoing connections, and drops
        /// dangling references to them. Loops until stable because a removal can
        /// starve the next layer. The first and last layers are never removed.
        /// </summary>
        private static void RemoveUnreachableNodes(NodeMapData mapData)
        {
            bool changed = true;
            while (changed)
            {
                changed = false;
                var inDegree = new Dictionary<string, int>();
                foreach (BaseNode node in mapData.layers.SelectMany(l => l))
                {
                    inDegree[node.id] = 0;
                }
                foreach (BaseNode src in mapData.layers.SelectMany(l => l))
                {
                    foreach (string conn in src.connections)
                    {
                        if (inDegree.ContainsKey(conn)) inDegree[conn]++;
                    }
                }

                var removed = new HashSet<string>();
                for (int i = 1; i < mapData.layerCount - 1; i++)
                {
                    List<BaseNode> layer = mapData.layers[i];
                    for (int j = layer.Count - 1; j >= 0; j--)
                    {
                        if (inDegree[layer[j].id] == 0)
                        {
                            removed.Add(layer[j].id);
                            layer.RemoveAt(j);
                            changed = true;
                        }
                    }
                }
                if (removed.Count == 0) break;

                foreach (BaseNode src in mapData.layers.SelectMany(l => l))
                {
                    src.connections.RemoveAll(removed.Contains);
                }
            }
        }

        private static string GetRandomEventId()
        {
            var keys = new string[Data.Table.EventConfigs.Count];
            Data.Table.EventConfigs.Keys.CopyTo(keys, 0);
            return keys[Random.Range(0, keys.Length)];
        }
    }
}