using System.Collections.Generic;
using System.Text;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using Core.System;
using UnityEngine.InputSystem;

namespace DebugSystem
{
    public class Test_CanvasClick : MonoBehaviour
    {
        [Header("核心引用")]
        public Canvas targetCanvas;

        [Header("调试开关")]
        public bool showClickInfo = true;
        public bool highlightTopmost = true;
        public Color highlightColor = Color.green;

        private GraphicRaycaster _raycaster;
        private PointerEventData _pointerEventData;
        private EventSystem _eventSystem;
        private List<RaycastResult> _results = new List<RaycastResult>();

        void Start()
        {
            if (targetCanvas == null)
            {
                targetCanvas = FindObjectOfType<Canvas>();
            }

            if (targetCanvas != null)
            {
                _raycaster = targetCanvas.GetComponent<GraphicRaycaster>();
                if (_raycaster == null)
                {
                    Debug.LogWarning("[CanvasClick] 目标 Canvas 上没有 GraphicRaycaster 组件");
                }
            }

            _eventSystem = EventSystem.current;
            if (_eventSystem == null)
            {
                Debug.LogWarning("[CanvasClick] 场景中没有 EventSystem");
            }
        }

        void OnEnable()
        {
            InputManager.Actions.Gameplay.Confirm.performed += OnConfirm;
        }

        void OnDisable()
        {
            if (InputManager.Actions == null) return;
            InputManager.Actions.Gameplay.Confirm.performed -= OnConfirm;
        }

        private void OnConfirm(InputAction.CallbackContext ctx)
        {
            HandleCanvasClick();
        }

        void HandleCanvasClick()
        {
            if (_raycaster == null || _eventSystem == null || targetCanvas == null)
            {
                Debug.LogWarning("[CanvasClick] 缺少必要组件，无法检测点击");
                return;
            }

            Vector2 mousePos = InputManager.Actions.Gameplay.Point.ReadValue<Vector2>();
            _pointerEventData = new PointerEventData(_eventSystem)
            {
                position = mousePos
            };

            _results.Clear();
            _raycaster.Raycast(_pointerEventData, _results);

            if (_results.Count == 0)
            {
                if (showClickInfo)
                {
                    Debug.Log("[CanvasClick] 点击位置没有命中任何 UI 元素");
                }
                return;
            }

            if (showClickInfo)
            {
                LogRaycastResults();
            }

            if (highlightTopmost)
            {
                HighlightTopmostResult();
            }
        }

        void LogRaycastResults()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine($"[CanvasClick] === 射线检测结果 (共 {_results.Count} 个) ===");
            Vector2 mousePos = InputManager.Actions.Gameplay.Point.ReadValue<Vector2>();
            sb.AppendLine($"[CanvasClick] 点击位置: {mousePos}");

            for (int i = 0; i < _results.Count; i++)
            {
                var result = _results[i];
                var go = result.gameObject;

                sb.Append($"  [{i}] ");
                sb.Append(GetHierarchyPath(go.transform));
                sb.Append($" | 深度={result.depth}");
                sb.Append($" | 排序层级={result.sortingLayer}");
                sb.Append($" | 排序值={result.sortingOrder}");

                var button = go.GetComponent<Button>();
                if (button != null)
                {
                    sb.Append($" | [Button: {(button.interactable ? "可交互" : "禁用")}]");
                }

                var toggle = go.GetComponent<Toggle>();
                if (toggle != null)
                {
                    sb.Append($" | [Toggle: {(toggle.interactable ? "可交互" : "禁用")}]");
                }

                var inputField = go.GetComponent<InputField>();
                if (inputField != null)
                {
                    sb.Append($" | [InputField: {(inputField.interactable ? "可交互" : "禁用")}]");
                }

                var scrollbar = go.GetComponent<Scrollbar>();
                if (scrollbar != null)
                {
                    sb.Append($" | [Scrollbar]");
                }

                var slider = go.GetComponent<Slider>();
                if (slider != null)
                {
                    sb.Append($" | [Slider: {(slider.interactable ? "可交互" : "禁用")}]");
                }

                var dropdown = go.GetComponent<Dropdown>();
                if (dropdown != null)
                {
                    sb.Append($" | [Dropdown: {(dropdown.interactable ? "可交互" : "禁用")}]");
                }

                var selectable = go.GetComponent<Selectable>();
                if (selectable != null && !(selectable is Button || selectable is Toggle || selectable is InputField || selectable is Scrollbar || selectable is Slider || selectable is Dropdown))
                {
                    sb.Append($" | [Selectable: {(selectable.interactable ? "可交互" : "禁用")}]");
                }

                sb.AppendLine();
            }

            Debug.Log(sb.ToString());
        }

        string GetHierarchyPath(Transform t)
        {
            var names = new List<string>();
            var current = t;

            while (current != null)
            {
                names.Add(current.name);
                if (current == targetCanvas.transform)
                {
                    break;
                }
                current = current.parent;
            }

            names.Reverse();
            return string.Join("/", names);
        }

        void HighlightTopmostResult()
        {
            if (_results.Count > 0)
            {
                var topmost = _results[0].gameObject;
                Debug.Log($"[CanvasClick] 最顶层元素: {GetHierarchyPath(topmost.transform)}");
            }
        }

        void OnDrawGizmos()
        {
            if (!showClickInfo || _results == null || _results.Count == 0) return;

            for (int i = 0; i < _results.Count; i++)
            {
                var go = _results[i].gameObject;
                var rectTransform = go.GetComponent<RectTransform>();
                if (rectTransform == null) continue;

                Gizmos.color = (i == 0) ? highlightColor : Color.yellow;

                Vector3[] corners = new Vector3[4];
                rectTransform.GetWorldCorners(corners);

                for (int j = 0; j < 4; j++)
                {
                    Gizmos.DrawLine(corners[j], corners[(j + 1) % 4]);
                }
            }
        }
    }
}
