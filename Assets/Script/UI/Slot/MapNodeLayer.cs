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

        // 本层为节点订阅的 _onEnterNode 处理。
        // 节点对象是共享/持久化的（Data.Persistent），匿名闭包无法 -=，必须保存引用，
        // 在重新 Init（覆盖旧订阅）或销毁（OnDestroy）时统一取消，防止闭包在节点上累积。
        // 注意：不能在 OnDisable 取消 —— ClosePanel 会 SetActive(false) 整个面板，触发各层的
        // OnDisable，而 MapNodeSlot 是在关面板之后才 Invoke _onEnterNode，若此时取消订阅，
        // “进入节点锁定同层其他节点” 的闭包会全部失效。
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
            // 防御：同一层实例未经过 Disable 被再次 Init 时，先清掉旧的订阅
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