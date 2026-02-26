//CREATE BY GEMINI
using UnityEngine;
using System.Collections.Generic;
using Managers;

namespace GamePlay.Visual
{
    public class GridVisualManager : MonoBehaviour
    {
        public static GridVisualManager Instance;

        [Header("高亮预制体")]
        public GameObject selectHighlightPrefab; // 鼠标当前悬停的光圈
        public GameObject rangeHighlightPrefab;  // 范围光圈 (蓝/红)

        // 运行时实例
        private GameObject _cursorHighlightObj;
        private List<GameObject> _highlightPool = new List<GameObject>();
        private List<GameObject> _activeHighlights = new List<GameObject>();//TODO这里可以不使用gameObj

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
            
            _cursorHighlightObj.SetActive(true);
            // 放置在物理表面正上方一点点，防止闪烁
            _cursorHighlightObj.transform.position = MapManager.Instance.GetWorldPosition(gridPos) + Vector3.up * 0.02f;
        }

        public void HideCursor()
        {
            if (_cursorHighlightObj != null)
            {
                _cursorHighlightObj.SetActive(false);
            }
        }

        // ================= 范围高亮 (使用对象池) =================

        public void ShowTilesHighlight(IEnumerable<Vector3Int> tiles, Color color)
        {
            ClearHighlights(); // 先清理旧的

            foreach (var pos in tiles)
            {
                GameObject quad = GetHighlightFromPool();
                quad.transform.position = MapManager.Instance.GetWorldPosition(pos) + Vector3.up * 0.02f;
                
                // 如果材质球支持改色（比如 _BaseColor），可以在这里修改
                // quad.GetComponent<Renderer>().material.SetColor("_BaseColor", color);
                
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
    }
}