using System;
using System.Collections.Generic;
using System.Linq;
using Map;
using UI.Component;
using UI.Slot;
using UnityEngine;
using Utils;

namespace UI.Panel
{
    [UIPanelResource("UI/Main/MapWindow")]
    public class MapPopWindow : BaseUIPanel
    {
        private RectTransform Content;
        private RectTransform ViewPort;
        public UnityEngine.UI.ScrollRect scroll;
        private List<(MapNodeLayer layer, RectTransform rect)> _activeLayers;
        private RectTransform _lineContainer;
        private GameObjectPool _linePool;
        private Dictionary<(int, int, int, int), BezierLine> _lineMap = new();
        private Dictionary<string, (int layer, int row)> _nodeIdLookup = new();
        private float[] _slotXCache;
        public NodeMapData nodeMapData;
        public GameObject _layerPrefab;
        private float _layerHeight;
        public int bufferSize = 2;
        private GameObjectPool _pool;

        public void Init(NodeMapData nodeMapData)
        {
            this.nodeMapData = nodeMapData;
            int layerCount = nodeMapData.layers.Count;

            Content = scroll.content;
            ViewPort = scroll.viewport;
            for(int i = Content.transform.childCount - 1; i >= 0; i--)
            {
                Destroy(Content.transform.GetChild(i).gameObject);
            }
            var prefabRect = _layerPrefab.GetComponent<RectTransform>();
            _layerHeight = prefabRect.rect.height;
            Content.sizeDelta = new(Content.sizeDelta.x, _layerHeight * layerCount);

            int maxActive = Mathf.Min(layerCount,
                Mathf.CeilToInt(ViewPort.rect.height / _layerHeight) + bufferSize * 2);
            _pool = new(_layerPrefab, Content.transform, maxActive, bufferSize);
            _activeLayers = new List<(MapNodeLayer, RectTransform)>(maxActive);

            SetupLineContainer(layerCount);
            BuildNodeLookup();

            scroll.onValueChanged.AddListener(OnScrollChanged);
            Refresh();
        }

        private void SetupRect(RectTransform rect, float posY)
        {
            rect.anchorMin = new(0, 0);
            rect.anchorMax = new(1, 0);
            rect.pivot = new(0.5f, 0);
            rect.sizeDelta = new(rect.sizeDelta.x, _layerHeight);
            rect.anchoredPosition = new Vector2(0, posY);
        }

        private void Refresh()
        {
            Vector3[] corners = new Vector3[4];
            ViewPort.GetWorldCorners(corners);
            Vector3 min = Content.InverseTransformPoint(corners[0]);
            Vector3 max = Content.InverseTransformPoint(corners[2]);

            float bufMin = Mathf.Max(0f, min.y - bufferSize * _layerHeight);
            float bufMax = Mathf.Min(Content.rect.height, max.y + bufferSize * _layerHeight);

            int firstIdx = Mathf.Max(0, Mathf.FloorToInt(bufMin / _layerHeight));
            int lastIdx = Mathf.Min(nodeMapData.layers.Count - 1,
                Mathf.CeilToInt(bufMax / _layerHeight) - 1);

            if (firstIdx > lastIdx) return;

            HashSet<int> currentIndices = new();
            foreach (var (_, rect) in _activeLayers)
                currentIndices.Add(Mathf.RoundToInt(rect.anchoredPosition.y / _layerHeight));

            for (int i = _activeLayers.Count - 1; i >= 0; i--)
            {
                int idx = Mathf.RoundToInt(
                    _activeLayers[i].rect.anchoredPosition.y / _layerHeight);
                if (idx < firstIdx || idx > lastIdx)
                {
                    _pool.Return(_activeLayers[i].layer.gameObject);
                    _activeLayers.RemoveAt(i);
                }
            }

            for (int i = firstIdx; i <= lastIdx; i++)
            {
                if (currentIndices.Contains(i)) continue;

                float y = i * _layerHeight;
                var go = _pool.Get();
                var layer = go.GetComponent<MapNodeLayer>();
                var rect = layer.GetComponent<RectTransform>();
                SetupRect(rect, y);
                layer.Init(nodeMapData.layers[i]);
                _activeLayers.Add((layer, rect));
            }

            _activeLayers.Sort(
                (a, b) => a.rect.anchoredPosition.y.CompareTo(b.rect.anchoredPosition.y));

            RefreshLines(firstIdx, lastIdx);
        }

        private void SetupLineContainer(int layerCount)
        {
            _lineContainer = new GameObject("_lineContainer", typeof(RectTransform))
                .GetComponent<RectTransform>();
            _lineContainer.SetParent(Content);
            _lineContainer.SetAsFirstSibling();
            _lineContainer.anchorMin = Vector2.zero;
            _lineContainer.anchorMax = Vector2.zero;
            _lineContainer.pivot = Vector2.zero;
            _lineContainer.anchoredPosition = Vector2.zero;
            _lineContainer.sizeDelta = Content.sizeDelta;

            var lineTemplate = new GameObject("BezierLine_Template", typeof(RectTransform));
            lineTemplate.SetActive(false);
            lineTemplate.AddComponent<BezierLine>();
            var lt = lineTemplate.GetComponent<RectTransform>();
            lt.anchorMin = Vector2.zero;
            lt.anchorMax = Vector2.zero;
            lt.pivot = Vector2.zero;
            lt.anchoredPosition = Vector2.zero;
            lt.sizeDelta = Vector2.zero;

            int maxLines = Mathf.Min(layerCount - 1,
                Mathf.CeilToInt(ViewPort.rect.height / _layerHeight) + bufferSize * 2 + 1) * 3;
            _linePool = new(lineTemplate, _lineContainer, Mathf.Max(maxLines, 8), bufferSize + 1);
            _lineMap.Clear();
        }

        private void BuildNodeLookup()
        {
            _nodeIdLookup.Clear();
            for (int i = 0; i < nodeMapData.layers.Count; i++)
            {
                foreach (var node in nodeMapData.layers[i])
                {
                    _nodeIdLookup[node.id] = (i, node.row);
                }
            }
        }

        private void CacheSlotXFromLayer(MapNodeLayer layer)
        {
            _slotXCache = new float[layer.MaxNodeCount];
            float canvasScale = Content.lossyScale.x;

            for (int i = 0; i < layer.MaxNodeCount; i++)
            {
                if (layer.nodeSlots[i] != null && layer.nodeSlots[i].Icon != null)
                {
                    Vector3 worldPos = layer.nodeSlots[i].Icon.transform.position;
                    Vector3 localPos = _lineContainer.InverseTransformPoint(worldPos);
                    _slotXCache[i] = localPos.x;
                }
                else
                {
                    _slotXCache[i] = _lineContainer.rect.width * (i + 0.5f) / layer.MaxNodeCount;
                }
            }
        }

        private Vector2 GetNodeContentPos(int layerIdx, int row)
        {
            for (int i = 0; i < _activeLayers.Count; i++)
            {
                int li = Mathf.RoundToInt(
                    _activeLayers[i].rect.anchoredPosition.y / _layerHeight);
                if (li == layerIdx)
                {
                    var slot = _activeLayers[i].layer.nodeSlots[row];
                    if (slot != null && slot.Icon != null)
                    {
                        return _lineContainer.InverseTransformPoint(
                            slot.Icon.transform.position);
                    }
                }
            }

            float x = _slotXCache != null && row < _slotXCache.Length
                ? _slotXCache[row] : row * 100f + 50f;
            return new Vector2(x, layerIdx * _layerHeight);
        }

        private void RefreshLines(int firstIdx, int lastIdx)
        {
            int rangeStart = Mathf.Max(0, firstIdx - bufferSize);
            int rangeEnd = Mathf.Min(nodeMapData.layers.Count - 1, lastIdx + bufferSize);

            var activeConns = new HashSet<(int, int, int, int)>();
            for (int i = rangeStart; i <= rangeEnd; i++)
            {
                foreach (var src in nodeMapData.layers[i])
                {
                    foreach (var connId in src.connections)
                    {
                        if (_nodeIdLookup.TryGetValue(connId, out var tgt))
                        {
                            if (tgt.layer >= rangeStart && tgt.layer <= rangeEnd)
                            {
                                activeConns.Add((i, src.row, tgt.layer, tgt.row));
                            }
                        }
                    }
                }
            }

            var toRemove = _lineMap.Keys.Where(k => !activeConns.Contains(k)).ToList();
            foreach (var key in toRemove)
            {
                _linePool.Return(_lineMap[key].gameObject);
                _lineMap.Remove(key);
            }

            foreach (var conn in activeConns)
            {
                if (_lineMap.ContainsKey(conn)) continue;

                var go = _linePool.Get();
                var bezier = go.GetComponent<BezierLine>();
                var srcPos = GetNodeContentPos(conn.Item1, conn.Item2);
                var tgtPos = GetNodeContentPos(conn.Item3, conn.Item4);
                bezier.SetEndpoints(srcPos, tgtPos);

                if (_slotXCache == null)
                {
                    var layer = _activeLayers.Find(l =>
                        Mathf.RoundToInt(l.rect.anchoredPosition.y / _layerHeight) == conn.Item1);
                    if (layer.layer != null)
                        CacheSlotXFromLayer(layer.layer);
                }

                _lineMap[conn] = bezier;
            }
        }

        public void OnScrollChanged(Vector2 _)
        {
            Refresh();
        }

        public void OnEnable()
        {
            Init(NodeMapData.GenerateFakeDeepMap());
        }

        private void ClearAllLines()
        {
            foreach (var kv in _lineMap)
                _linePool.Return(kv.Value.gameObject);
            _lineMap.Clear();
        }

        public void OnDisable()
        {
            ClearAllLines();
            scroll.onValueChanged.RemoveListener(OnScrollChanged);
        }

        public void OnDestroy()
        {
            _lineMap.Clear();
            scroll.onValueChanged.RemoveListener(OnScrollChanged);
        }
    }
}