using System;
using System.Collections.Generic;
using Map;
using UI.Slot;
using UnityEngine;
using Utils;

namespace UI.Panel
{
    [UIPanelResource("UI/Main/MapWindow.prefab")]
    public class MapPopWindow : BaseUIPanel
    {
        private RectTransform Content;
        private RectTransform ViewPort;
        public UnityEngine.UI.ScrollRect scroll;
        private List<(MapNodeLayer layer, RectTransform rect)> _activeLayers;
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

            var prefabRect = _layerPrefab.GetComponent<RectTransform>();
            _layerHeight = prefabRect.rect.height;
            Content.sizeDelta = new(Content.sizeDelta.x, _layerHeight * layerCount);

            int maxActive = Mathf.Min(layerCount,
                Mathf.CeilToInt(ViewPort.rect.height / _layerHeight) + bufferSize * 2);
            _pool = new(_layerPrefab, Content.transform, maxActive, bufferSize);
            _activeLayers = new List<(MapNodeLayer, RectTransform)>(maxActive);

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
            // 1. viewport 在 content-space 下的 y 区间
            Vector3[] corners = new Vector3[4];
            ViewPort.GetWorldCorners(corners);
            Vector3 min = Content.InverseTransformPoint(corners[0]);
            Vector3 max = Content.InverseTransformPoint(corners[2]);

            float bufMin = Mathf.Max(0f, min.y - bufferSize * _layerHeight);
            float bufMax = Mathf.Min(Content.rect.height, max.y + bufferSize * _layerHeight);

            // 2. 目标索引区间 [firstIdx, lastIdx]
            int firstIdx = Mathf.Max(0, Mathf.FloorToInt(bufMin / _layerHeight));
            int lastIdx = Mathf.Min(nodeMapData.layers.Count - 1,
                Mathf.CeilToInt(bufMax / _layerHeight) - 1);

            if (firstIdx > lastIdx) return;

            // 3. 当前活跃层索引集合
            HashSet<int> currentIndices = new();
            foreach (var (_, rect) in _activeLayers)
                currentIndices.Add(Mathf.RoundToInt(rect.anchoredPosition.y / _layerHeight));

            // 4. 回收不在目标区间的层
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

            // 5. 补入目标区间缺的层
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

            // 6. 排序
            _activeLayers.Sort(
                (a, b) => a.rect.anchoredPosition.y.CompareTo(b.rect.anchoredPosition.y));
        }

        public void OnScrollChanged(Vector2 _)
        {
            Refresh();
        }

        public void OnDisable()
        {
            scroll.onValueChanged.RemoveListener(OnScrollChanged);
        }

        public void OnDestroy()
        {
            scroll.onValueChanged.RemoveListener(OnScrollChanged);
        }
    }
}