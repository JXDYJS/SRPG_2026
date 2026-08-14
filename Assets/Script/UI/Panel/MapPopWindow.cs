using System;
using System.Collections.Generic;
using System.Linq;
using Core.Data;
using Map;
using UI.Component;
using UI.Slot;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using Utils;
using Managers;
using System.Threading.Tasks;
using Cysharp.Threading.Tasks;

namespace UI.Panel
{
    [UIPanelResource("Assets/UI/Main/MapWindow.prefab")]
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
        public NodeMapData nodeMapData;
        public GameObject _layerPrefab;
        public Button ExitBtn;
        private float _layerHeight;
        public int bufferSize = 2;
        private GameObjectPool _pool;
        public int playerLayer = 0;
        public int playerRow = 0;

        protected override void Awake()
        {
            base.Awake();
            AnimateOnOpenClose = true;
        }

        public void Init(NodeMapData nodeMapData)
        {
            this.nodeMapData = nodeMapData;
            int layerCount = nodeMapData.layers.Count;

            Content = scroll.content;
            ViewPort = scroll.viewport;
            LayoutRebuilder.ForceRebuildLayoutImmediate(ViewPort);
            for(int i = Content.transform.childCount - 1; i >= 0; i--)
            {
                Destroy(Content.transform.GetChild(i).gameObject);
            }
            var prefabRect = _layerPrefab.GetComponent<RectTransform>();
            _layerHeight = prefabRect.rect.height;
            if (_layerHeight <= 0) _layerHeight = 100;
            Content.sizeDelta = new(Content.sizeDelta.x, _layerHeight * layerCount);
            LayoutRebuilder.ForceRebuildLayoutImmediate(Content);

            int maxActive = Mathf.Min(layerCount,
                Mathf.CeilToInt(ViewPort.rect.height / _layerHeight) + bufferSize * 2);
            if (maxActive <= 0) maxActive = 1;
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
                LayoutRebuilder.ForceRebuildLayoutImmediate(rect);
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
            _lineContainer.SetParent(Content, false);
            _lineContainer.SetAsFirstSibling();
            // Mirror Content anchors so line-local coords equal Content-local; sizeDelta.y must stay > 0 or RectMask2D culls the curves.
            _lineContainer.anchorMin = new Vector2(0, 0);
            _lineContainer.anchorMax = new Vector2(1, 0);
            _lineContainer.pivot = new Vector2(0.5f, 0f);
            _lineContainer.anchoredPosition = Vector2.zero;
            _lineContainer.sizeDelta = new Vector2(0, Content.sizeDelta.y);

            var lineTemplate = new GameObject("BezierLine_Template", typeof(RectTransform));
            lineTemplate.SetActive(false);
            lineTemplate.AddComponent<CanvasRenderer>();
            lineTemplate.AddComponent<BezierLine>();
            var lt = lineTemplate.GetComponent<RectTransform>();
            lt.SetParent(_lineContainer, false);
            lt.anchorMin = Vector2.zero;
            lt.anchorMax = Vector2.one;
            lt.pivot = new Vector2(0.5f, 0f);
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

        private Transform GetNodeIconTransform(int layerIdx, int row)
        {
            for (int i = 0; i < _activeLayers.Count; i++)
            {
                int li = Mathf.RoundToInt(
                    _activeLayers[i].rect.anchoredPosition.y / _layerHeight);
                if (li == layerIdx)
                {
                    var slots = _activeLayers[i].layer.nodeSlots;
                    if (row < slots.Count && slots[row] != null && slots[row].Icon != null)
                        return slots[row].Icon.transform;
                    return null;
                }
            }
            return null;
        }

        private void RefreshLines(int firstIdx, int lastIdx)
        {
            int rangeStart = firstIdx;
            int rangeEnd = lastIdx;

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

                Transform srcIcon = GetNodeIconTransform(conn.Item1, conn.Item2);
                Transform tgtIcon = GetNodeIconTransform(conn.Item3, conn.Item4);
                // Skip until both icons are active; lines are established lazily on scroll.
                if (srcIcon == null || tgtIcon == null) continue;

                var go = _linePool.Get();
                var bezier = go.GetComponent<BezierLine>();
                bezier.SetEndpoints(srcIcon, tgtIcon, _lineContainer);

                _lineMap[conn] = bezier;
            }
        }

        public void OnScrollChanged(Vector2 _)
        {
            Refresh();
        }

        public void OnEnable()
        {
            if (IsInitialized)
            {
                Init(nodeMapData);
            }
            ExitBtn.onClick.AddListener(OnExitBtnClick);
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
            ExitBtn.onClick.RemoveListener(OnExitBtnClick);
        }

        public void OnDestroy()
        {
            _lineMap.Clear();
            scroll.onValueChanged.RemoveListener(OnScrollChanged);
        }
        public void NextLevel()
        {
            if (nodeMapData == null || playerLayer >= nodeMapData.layers.Count) return;
            var nodes = nodeMapData.layers[playerLayer];
            var node = nodes.Find(n => n.col == playerLayer && n.row == playerRow);
            if (node == null) return;

            node.isLock = true;
            foreach (var conn in node.connections)
            {
                if (!_nodeIdLookup.TryGetValue(conn, out var nextNodeLayerRow)) continue;
                var nextLayer = nodeMapData.layers[nextNodeLayerRow.layer];
                var nextNode = nextLayer.Find(n => n.id == conn);
                if (nextNode == null) continue;
                nextNode.isLock = false;
            }
            Refresh();

            // Persist immediately so a reloaded save reflects the latest unlock state.
            SaveCurrentProgress();
        }
        public void unLockFirstLayer()
        {
            if (_activeLayers.Count == 0) return;
            foreach(var node in _activeLayers[0].layer.ActivateNodes)
            {
                node.isLock = false;
            }
        }

        /// <summary>Restores player position (called by Bootstrap after Init on load).</summary>
        public void SetPlayerPosition(int layer, int row)
        {
            playerLayer = layer;
            playerRow = row;
        }

        public void SaveCurrentProgress()
        {
            MapPersistence.SaveMap(nodeMapData, playerLayer, playerRow);
        }

        /// <summary>Saves and returns to the main menu (map screen only).</summary>
        public void QuitToMainMenu()
        {
            SaveCurrentProgress();
            if (UIManager.Instance != null)
            {
                UIManager.Instance.DestroyAllPanels();
            }
            SceneManager.LoadScene("LaunchScene");
        }
        private void OnExitBtnClick()
        {
            BackToLaunchWindow();
        }
        public async UniTask BackToLaunchWindow()
        {
            // Panels live on a DontDestroyOnLoad UIRoot, so destroy them before switching scenes.
            SaveCurrentProgress();
            if (UIManager.Instance != null)
            {
                UIManager.Instance.DestroyAllPanels();
            }

            await SceneManager.LoadSceneAsync("LaunchScene", LoadSceneMode.Single).ToUniTask();
        }
    }
}