using UnityEngine;
using System;
using System.Collections.Generic;
using System.Linq;
using Core.Data;
using Newtonsoft.Json;
using Random = UnityEngine.Random;

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
                if (_isLock == value) return;
                _isLock = value;
                _onLockChange?.Invoke(value);
            }
        }
        [JsonIgnore] public Action<bool> _onLockChange;
        [JsonIgnore] public Action _onEnterNode;
        protected BaseNode() : this(null)
        {
            isLock = true;
        }
        protected BaseNode(string id)
        {
            this.id = id ?? Guid.NewGuid().ToString("N");
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
    }

    [Serializable]
    public class EventNode : BaseNode
    {
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

            node1.connections.Add(node2.id);
            node2.connections.Add(node3.id);

            mapData.layers[0].Add(node1);
            mapData.layers[1].Add(node2);
            mapData.layers[2].Add(node3);

            return mapData;
        }

        public static NodeMapData GenerateFakeDeepMap(int layerCount = 100)
        {
            int maxPerLayer = Data.Config.ViewConfig.mapNodeMaxPerLayer;
            NodeMapData mapData = new(layerCount);
            var allTypes = (MapType[])Enum.GetValues(typeof(MapType));
            var mapTypes = Array.FindAll(allTypes, t => t != MapType.Empty);

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
                        MapType.Event => new EventNode(),
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
    }
}