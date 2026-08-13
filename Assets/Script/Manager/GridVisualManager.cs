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
        public GameObject selectHighlightPrefab;
        public GameObject rangeHighlightPrefab;
        public GameObject lowlightPrefab;

        private GameObject _cursorHighlightObj;
        private List<GameObject> _highlightPool = new List<GameObject>();
        private List<GameObject> _lowlightPool = new List<GameObject>();
        private List<GameObject> _activeHighlights = new List<GameObject>();
        private List<GameObject> _activeLowlights = new List<GameObject>();

        void Awake()
        {
            Instance = this;
            
            if (selectHighlightPrefab != null)
            {
                _cursorHighlightObj = Instantiate(selectHighlightPrefab, transform);
                _cursorHighlightObj.SetActive(false);
            }
        }


        public void ShowCursorAt(Vector3Int gridPos)
        {
            if (_cursorHighlightObj == null) return;

            // Hide when the tile above is solid; prevents a ghost cursor on the previous tile.
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


        public void ShowTilesHighlight(IEnumerable<Vector3Int> tiles, Color color)
        {
            ClearHighlights();

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
                obj.SetActive(false);
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
                // Tile is air with a solid block below.
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
