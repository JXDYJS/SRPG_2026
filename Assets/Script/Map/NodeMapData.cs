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
            _onEnterNode += () =>
            {
                this.isLock = true;
            };
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
        public string itemId;//一般情况下 就是 价格->一个商品 暂时不考虑特殊情况
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
                // 差值不超过实际存在的稀有度数量，这里只对配表中已出现的稀有度分配
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

            // 第一层并入商店节点（自动生成商品槽位）
            ShopNode shop = ShopNode.genShopNode();
            shop.row = 1;
            shop.col = 0;

            // 第一层并入事件节点（FlyBird小游戏）
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

        private static string GetRandomEventId()
        {
            var keys = new string[Data.Table.EventConfigs.Count];
            Data.Table.EventConfigs.Keys.CopyTo(keys, 0);
            return keys[Random.Range(0, keys.Length)];
        }
    }
}