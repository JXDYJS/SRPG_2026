using System.Collections.Generic;
using Map;
using UnityEngine;

namespace UI.Slot
{
    public class MapNodeLayer : MonoBehaviour
    {
        public UnityEngine.UI.HorizontalLayoutGroup layout;
        public List<MapNodeSlot> nodeSlots;
        public GameObject[] _nodes;
        public int MaxNodeCount = 6;
        public List<BaseNode> ActivateNodes;
        public void Init(List<BaseNode> initNodes)
        {
            if(MaxNodeCount != _nodes.Length)
            {
                Debug.LogError("MaxNodeCount != nodes.Length!");
                return;
            }
            nodeSlots.Clear();
            for(int i = 0; i < MaxNodeCount; i++)
            {
                nodeSlots.Add(_nodes[i].GetComponent<MapNodeSlot>());
            }
            if(nodeSlots.Count != MaxNodeCount)
            {
                Debug.LogError("nodes.Count != MaxNodeCount");
                return;
            }
            foreach(var slot in nodeSlots)
            {
                slot.Reset();
            }
            ActivateNodes.Clear();
            foreach(var node in initNodes)
            {
                nodeSlots[node.row].Init(node);
                ActivateNodes.Add(node);
            }
        }
    }
}