using UnityEngine;
using System;
using System.Collections.Generic;
using Core.Data;
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
    }

    public abstract class BaseNode : IMapNode
    {
        public string id { get; private set; }
        public MapType type { get; protected set; }
        public int col{get;set;}
        public int row { get; set; }
        public List<string> connections { get; private set; } = new();
        public bool visited = false;
        public Action<bool> _onVisited;
        protected BaseNode()
        {
            id = Guid.NewGuid().ToString("N");
        }
        public void setVisited(bool val)
        {
            visited = val;
            _onVisited.Invoke(val);
        }
    }

    public class BattleNode : BaseNode
    {
        public string level;

        public BattleNode()
        {
            type = MapType.Battle;
        }
    }

    public class ShopNode : BaseNode
    {
        public ShopNode()
        {
            type = MapType.Shop;
        }
    }

    public class EventNode : BaseNode
    {
        public EventNode()
        {
            type = MapType.Event;
        }
    }

    public class BossNode : BaseNode
    {
        public BossNode()
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

            BattleNode node1 = new() { level = "test1", row = 0,col = 0 };
            BattleNode node2 = new() { level = "test1", row = 1,col = 1 };
            BattleNode node3 = new() { level = "test1", row = 0 ,col = 2};

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

                    if (i < layerCount - 1 && Random.value > 0.3f)
                    {
                        int nextRow = Random.Range(0, maxPerLayer);
                        node.connections.Add($"{i + 1}_{nextRow}");
                    }

                    mapData.layers[i].Add(node);
                }
            }

            return mapData;
        }
    }
}