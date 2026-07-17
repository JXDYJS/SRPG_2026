using UnityEngine;
using System;
using System.Collections.Generic;

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
    }
}