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

        // Display slots per layer are fixed by MapNodeLayer.MaxNodeCount.
        private const int MIN_NODES_PER_LAYER = 2;
        private const int MAX_NODES_PER_LAYER = 6;

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
            BattleNode nodeCornell = new("n_cornell") { level = "lv_004", row = 3, col = 0 };

            ShopNode shop = ShopNode.genShopNode();
            shop.row = 1;
            shop.col = 0;

            EventNode eventNode = new("n_ev_flappy") { eventId = "ev_flappy", row = 2, col = 0 };

            node1.connections.Add(node2.id);
            shop.connections.Add(node2.id);
            eventNode.connections.Add(node2.id);
            nodeCornell.connections.Add(node2.id);
            node2.connections.Add(node3.id);

            mapData.layers[0].Add(node1);
            mapData.layers[0].Add(shop);
            mapData.layers[0].Add(eventNode);
            mapData.layers[0].Add(nodeCornell);
            mapData.layers[1].Add(node2);
            mapData.layers[2].Add(node3);

            return mapData;
        }

        /// <summary>
        /// Generates a deep "fake" node map (default 128 layers) used to exercise the
        /// virtually-scrolled map UI. Node types come from the real factories: Battle
        /// levels cycle through LevelConfigs, Shop uses genShopNode, Event uses a
        /// random EventConfig id. Connectivity guarantees every non-start node has at
        /// least one incoming edge (reachable) and every non-final node at least one
        /// outgoing edge (no dead-end soft-lock); PruneUnreachable runs as a safety net.
        /// </summary>
        public static NodeMapData GenerateFakeDeepMap(int layerCount = 128)
        {
            NodeMapData mapData = new NodeMapData(layerCount);
            if (layerCount <= 0) return mapData;
            if (Data.Table.LevelConfigs.Count == 0)
            {
                Debug.LogError("[NodeMap] GenerateFakeDeepMap: no LevelConfigs, cannot build map");
                return mapData;
            }
            _levelCursor = 0;

            int maxSlots = Mathf.Clamp(Data.Config.ViewConfig.mapNodeMaxPerLayer, 1, 6);
            int minCount = Mathf.Clamp(MIN_NODES_PER_LAYER, 1, maxSlots);
            int maxCount = Mathf.Clamp(MAX_NODES_PER_LAYER, minCount, maxSlots);

            for (int layer = 0; layer < layerCount; layer++)
            {
                int count;
                if (layer == layerCount - 1)
                {
                    // Single final battle = the run's last fight / win condition.
                    count = 1;
                }
                else if (layer == 0)
                {
                    // Entry layer: several options, all unlocked by the UI at start.
                    count = Random.Range(Mathf.Min(maxCount, 4), maxCount + 1);
                }
                else
                {
                    count = Random.Range(minCount, maxCount + 1);
                }

                mapData.layers[layer] = CreateLayerNodes(layer, count);
            }

            for (int layer = 0; layer < layerCount - 1; layer++)
            {
                ConnectAdjacentLayers(mapData.layers[layer], mapData.layers[layer + 1]);
            }

            PruneUnreachable(mapData);
            RelinkDanglingSources(mapData);

            Debug.Log($"[NodeMap] Generated deep fake map: {mapData.layerCount} layers, total nodes = {mapData.layers.Sum(l => l.Count)}");
            return mapData;
        }

        /// <summary>
        /// Builds one layer. A single-node layer is always a battle (the final fight);
        /// otherwise nodes sit on centered, contiguous rows so adjacent layers overlap
        /// and their links stay local (few / no crossings).
        /// </summary>
        private static List<BaseNode> CreateLayerNodes(int layer, int count)
        {
            List<BaseNode> list = new List<BaseNode>(count);
            int maxSlots = Mathf.Clamp(Data.Config.ViewConfig.mapNodeMaxPerLayer, 1, 6);

            if (count == 1)
            {
                BaseNode only = new BattleNode { level = PickBattleLevel() };
                only.col = layer;
                only.row = maxSlots / 2;
                list.Add(only);
                return list;
            }

            int startRow = (maxSlots - count) / 2;
            for (int i = 0; i < count; i++)
            {
                BaseNode node = CreateTypedNode();
                node.col = layer;
                node.row = startRow + i;
                list.Add(node);
            }
            return list;
        }

        private static int _levelCursor;

        private static string PickBattleLevel()
        {
            string[] keys = new string[Data.Table.LevelConfigs.Count];
            Data.Table.LevelConfigs.Keys.CopyTo(keys, 0);
            if (keys.Length == 0) return null;
            Array.Sort(keys, StringComparer.Ordinal);
            string levelId = keys[_levelCursor % keys.Length];
            _levelCursor++;
            return levelId;
        }

        // Battle is the workhorse of a run; shops / events appear as treats.
        private const int BATTLE_WEIGHT = 70;
        private const int EVENT_WEIGHT = 15;

        private static BaseNode CreateTypedNode()
        {
            int roll = Random.Range(0, 100);
            if (roll < BATTLE_WEIGHT)
            {
                return new BattleNode { level = PickBattleLevel() };
            }

            if (roll < BATTLE_WEIGHT + EVENT_WEIGHT)
            {
                string eventId = GetRandomEventId();
                if (!string.IsNullOrEmpty(eventId))
                {
                    return new EventNode { eventId = eventId };
                }
            }

            return ShopNode.genShopNode();
        }

        private static string GetRandomEventId()
        {
            string[] keys = new string[Data.Table.EventConfigs.Count];
            Data.Table.EventConfigs.Keys.CopyTo(keys, 0);
            if (keys.Length == 0) return null;
            return keys[Random.Range(0, keys.Length)];
        }

        /// <summary>
        /// Links two adjacent layers. Pass 1: every target picks a source within a
        /// small row window (all targets get an incoming edge). Pass 2: sources still
        /// without an edge get the nearest target (all sources can advance). Centered,
        /// contiguous rows keep the links nearly planar.
        /// </summary>
        private static void ConnectAdjacentLayers(List<BaseNode> sources, List<BaseNode> targets)
        {
            if (sources.Count == 0 || targets.Count == 0) return;

            foreach (BaseNode target in targets)
            {
                BaseNode parent = FindClosest(sources, target.row, 2);
                if (parent == null) parent = FindClosest(sources, target.row, -1);
                if (parent != null) AddUniqueEdge(parent, target);
            }

            foreach (BaseNode source in sources)
            {
                if (source.connections.Count > 0) continue;
                BaseNode child = FindClosest(targets, source.row, -1);
                if (child != null) AddUniqueEdge(source, child);
            }
        }

        private static void AddUniqueEdge(BaseNode from, BaseNode to)
        {
            if (!from.connections.Contains(to.id)) from.connections.Add(to.id);
        }

        /// <summary>Finds the node whose row is nearest to `row`; window &lt; 0 means unlimited.</summary>
        private static BaseNode FindClosest(List<BaseNode> nodes, int row, int window)
        {
            BaseNode best = null;
            int bestDist = int.MaxValue;
            foreach (BaseNode node in nodes)
            {
                int dist = Mathf.Abs(node.row - row);
                if (window >= 0 && dist > window) continue;
                if (dist < bestDist)
                {
                    bestDist = dist;
                    best = node;
                }
            }
            return best;
        }

        /// <summary>
        /// Removes orphaned non-start nodes (in-degree 0 = unreachable) together with
        /// every edge that referenced them; cascades until stable. The start layer
        /// (index 0) is the entry unlocked by the UI, so it is never pruned.
        /// </summary>
        private static void PruneUnreachable(NodeMapData mapData)
        {
            if (mapData == null || mapData.layers.Count < 2) return;

            Dictionary<string, int> incoming = new Dictionary<string, int>();
            foreach (List<BaseNode> layer in mapData.layers)
            {
                foreach (BaseNode node in layer)
                {
                    incoming[node.id] = 0;
                }
            }
            for (int layerIdx = 0; layerIdx < mapData.layers.Count - 1; layerIdx++)
            {
                foreach (BaseNode node in mapData.layers[layerIdx])
                {
                    foreach (string targetId in node.connections)
                    {
                        if (incoming.ContainsKey(targetId)) incoming[targetId]++;
                    }
                }
            }

            bool changed = true;
            while (changed)
            {
                changed = false;
                for (int layerIdx = 1; layerIdx < mapData.layers.Count; layerIdx++)
                {
                    List<BaseNode> layer = mapData.layers[layerIdx];
                    for (int i = layer.Count - 1; i >= 0; i--)
                    {
                        BaseNode node = layer[i];
                        if (incoming[node.id] != 0) continue;

                        // This node's outgoing edges vanish with it; decrement downstream counts.
                        foreach (string targetId in node.connections)
                        {
                            if (incoming.ContainsKey(targetId)) incoming[targetId]--;
                        }
                        // Drop back-references from every layer pointing to this orphan.
                        foreach (List<BaseNode> anyLayer in mapData.layers)
                        {
                            foreach (BaseNode other in anyLayer)
                            {
                                other.connections.Remove(node.id);
                            }
                        }
                        incoming[node.id] = -1;
                        layer.RemoveAt(i);
                        changed = true;
                    }
                }
            }
        }

        /// <summary>
        /// After pruning, a source whose only target was removed could be left with no
        /// outgoing edge (a dead-end soft-lock). Link every such non-final node to the
        /// nearest remaining node of the next layer so the map always stays traversable.
        /// </summary>
        private static void RelinkDanglingSources(NodeMapData mapData)
        {
            if (mapData == null || mapData.layers.Count < 2) return;

            for (int layerIdx = 0; layerIdx < mapData.layers.Count - 1; layerIdx++)
            {
                List<BaseNode> sources = mapData.layers[layerIdx];
                if (sources.Count == 0) continue;

                // Next non-empty layer below this one.
                List<BaseNode> nextLayer = null;
                for (int next = layerIdx + 1; next < mapData.layers.Count; next++)
                {
                    if (mapData.layers[next].Count > 0)
                    {
                        nextLayer = mapData.layers[next];
                        break;
                    }
                }
                if (nextLayer == null) continue;

                foreach (BaseNode source in sources)
                {
                    if (source.connections.Count > 0) continue;
                    BaseNode child = FindClosest(nextLayer, source.row, -1);
                    if (child != null) AddUniqueEdge(source, child);
                }
            }
        }
    }
}