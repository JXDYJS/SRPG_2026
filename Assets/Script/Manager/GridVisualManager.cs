//CREATE BY GEMINI
using UnityEngine;
using System.Collections.Generic;
using Managers;
using Global;

namespace GamePlay.Visual
{
    public class GridVisualManager : MonoBehaviour
    {
        public static GridVisualManager Instance;

        [Header("高亮预制体")]
        public GameObject selectHighlightPrefab; // 鼠标当前悬停的光圈
        public GameObject rangeHighlightPrefab;  // 范围光圈 (蓝/红)
        public GameObject lowlightPrefab; // 低亮光圈 (不可点击)

        // 运行时实例
        private GameObject _cursorHighlightObj;
        private List<GameObject> _highlightPool = new List<GameObject>();
        private List<GameObject> _lowlightPool = new List<GameObject>();
        private List<GameObject> _activeHighlights = new List<GameObject>();
        private List<GameObject> _activeLowlights = new List<GameObject>();

        void Awake()
        {
            Instance = this;
            
            // 初始化鼠标光圈
            if (selectHighlightPrefab != null)
            {
                _cursorHighlightObj = Instantiate(selectHighlightPrefab, transform);
                _cursorHighlightObj.SetActive(false);
            }
        }

        // ================= 光标高亮 =================

        public void ShowCursorAt(Vector3Int gridPos)
        {
            if (_cursorHighlightObj == null) return;

            // 悬停格上方是实体(如墙壁侧面)时不可站立，隐藏光圈避免残影停在上一格
            var upPos = gridPos + new Vector3Int(0, 1, 0);
            if (MapManager.Instance.logicalGrid.GetBlock(upPos) != BlockType.Air)
            {
                HideCursor();
                return;
            }

            _cursorHighlightObj.SetActive(true);
            _cursorHighlightObj.transform.position = MapManager.Instance.GetWorldPosition(gridPos) + Vector3.up * 0.02f;
        }

        public void HideCursor()
        {
            if (_cursorHighlightObj != null && _cursorHighlightObj.activeSelf)
            {
                Debug.Log("[Cursor] HideCursor");
                _cursorHighlightObj.SetActive(false);
            }
        }

        // ================= 范围高亮 (使用对象池) =================

        public void ShowTilesHighlight(IEnumerable<Vector3Int> tiles, Color color)
        {
            ClearHighlights(); // 先清理旧的

            foreach (var pos in tiles)
            {
                if(!CanPutOnGrid(pos)) continue;
                GameObject quad = GetHighlightFromPool();
                quad.transform.position = MapManager.Instance.GetWorldPosition(pos) + Vector3.up * 0.02f;
                _activeHighlights.Add(quad);
            }
        }

        public void ClearHighlights()
        {
            foreach (var obj in _activeHighlights)
            {
                obj.SetActive(false); // 放回池子
            }
            _activeHighlights.Clear();

            foreach (var obj in _activeLowlights)
            {
                obj.SetActive(false);
            }
            _activeLowlights.Clear();
        }

        public void ShowTilesHighlightWithFilter(IEnumerable<Vector3Int> highlightTiles, IEnumerable<Vector3Int> lowlightTiles, Color highlightColor)
        {
            ClearHighlights();

            foreach (var pos in highlightTiles)
            {
                if (!CanPutOnGrid(pos)) continue;
                GameObject quad = GetHighlightFromPool();
                quad.transform.position = MapManager.Instance.GetWorldPosition(pos) + Vector3.up * 0.02f;
                _activeHighlights.Add(quad);
            }

            foreach (var pos in lowlightTiles)
            {
                if (!CanPutOnGrid(pos)) continue;
                GameObject quad = GetLowlightFromPool();
                quad.transform.position = MapManager.Instance.GetWorldPosition(pos) + Vector3.up * 0.02f;
                _activeLowlights.Add(quad);
            }
        }

        private GameObject GetLowlightFromPool()
        {
            foreach (var obj in _lowlightPool)
            {
                if (!obj.activeSelf)
                {
                    obj.SetActive(true);
                    return obj;
                }
            }
            GameObject newObj = Instantiate(lowlightPrefab, transform);
            _lowlightPool.Add(newObj);
            return newObj;
        }

        private GameObject GetHighlightFromPool()
        {
            foreach (var obj in _highlightPool)
            {
                if (!obj.activeSelf)
                {
                    obj.SetActive(true);
                    return obj;
                }
            }
            // 没找到空闲的，就新建一个并归自己管
            GameObject newObj = Instantiate(rangeHighlightPrefab, transform);
            _highlightPool.Add(newObj);
            return newObj;
        }

        public static List<Vector3Int> FilterValidPositions(
        IEnumerable<Vector3Int> positions)
        {
            List<Vector3Int> valid = new List<Vector3Int>();
            foreach (var pos in positions)
            {
                // 下方是实体方块，当前格是空气
                if (MapManager.Instance.logicalGrid.GetBlock(pos) == BlockType.Air &&
                    MapManager.Instance.logicalGrid.GetBlock(pos + Vector3Int.down) != BlockType.Air)
                {
                    valid.Add(pos);
                }
            }
            return valid;
        }

        public static bool CanPutOnGrid(Vector3Int pos)
        {
            return MapManager.Instance.logicalGrid.GetBlock(pos) != BlockType.Air &&
                MapManager.Instance.logicalGrid.GetBlock(pos + Vector3Int.up) == BlockType.Air;
        }
    }
}