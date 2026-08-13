using System;
using System.Collections.Generic;
using Map;
using UnityEngine;

namespace UI.Slot
{
    public class MapNodeLayer : MonoBehaviour
    {
        public UnityEngine.UI.HorizontalLayoutGroup layout;
        public List<MapNodeSlot> nodeSlots = new();
        public GameObject[] _nodes;
        public int MaxNodeCount = 6;
        public List<BaseNode> ActivateNodes = new();

        public event Action<MapNodeLayer> OnRecycle;

        // Node handlers are persistent; keep references so closures can be unsubscribed on re-init or destroy.
        private readonly Dictionary<BaseNode, Action> _onEnterSubscriptions = new();

        private void OnDisable()
        {
            OnRecycle?.Invoke(this);
        }

        private void OnDestroy()
        {
            UnsubscribeOnEnter();
        }

        private void UnsubscribeOnEnter()
        {
            foreach (var kv in _onEnterSubscriptions)
            {
                kv.Key._onEnterNode -= kv.Value;
            }
            _onEnterSubscriptions.Clear();
        }

        public void Init(List<BaseNode> initNodes)
        {
            if(MaxNodeCount != _nodes.Length)
            {
                Debug.LogError("MaxNodeCount != nodes.Length!");
                return;
            }
            UnsubscribeOnEnter();
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
            foreach (var node in initNodes)
            {
                Action handler = () =>
                {
                    foreach (var otherNode in initNodes)
                    {
                        if (otherNode == node) continue;
                        otherNode.isLock = true;
                    }
                };
                node._onEnterNode += handler;
                _onEnterSubscriptions[node] = handler;
                nodeSlots[node.row].Init(node);
                ActivateNodes.Add(node);
            }
        }
    }
}