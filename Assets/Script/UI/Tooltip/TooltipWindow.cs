using System;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using UI.Panel;
using UI.Item;

namespace UI.Tooltip
{
    /// <summary>Tooltip window: columns of cards built via BFS reference expansion.</summary>
    [UIPanelResource("Assets/UI/Tooltip/TooltipWindow.prefab")]
    public class TooltipWindow : BaseUIPanel
    {
        [Header("Tooltip 基架配置")]
        [SerializeField] private float _fadeDuration = 0.15f;
        [SerializeField] private int _maxDepth = 4;

        [Header("Prefab 引用")]
        public GameObject TooltipColPrefab;
        public GameObject TooltipPrefab;
        public Transform Content;

        private readonly List<Action> _unsubscribers = new List<Action>();
        private Dictionary<string, string> _refNames;

        // Cached window size, reused on high-frequency mouse moves to avoid Canvas rebuilds.
        private Vector2 _cachedSize;

        /// <summary>Panel-open payload: either id or desc, plus a screen position.</summary>
        public class TooltipData
        {
            public string id;
            public IItemDescriptor desc;
            public Vector2 screenPosition;

            public TooltipData(IItemDescriptor desc, Vector2 screenPosition)
            {
                this.desc = desc;
                this.screenPosition = screenPosition;
            }

            public TooltipData(string id, Vector2 screenPosition)
            {
                this.id = id;
                this.screenPosition = screenPosition;
            }
        }

        public void OnEnable()
        {
            ClearContent();
        }

        public override void OnInit()
        {
            base.OnInit();
            // Don't block clicks/hovers on slots beneath the tooltip.
            if (_canvasGroup != null)
            {
                _canvasGroup.blocksRaycasts = false;
            }
            if (Content == null)
            {
                Content = transform;
            }
        }

        public override void OnOpen(object data = null)
        {
            base.OnOpen(data);

            if (_canvasGroup != null)
            {
                _canvasGroup.alpha = 0f;
            }

            if (data is TooltipData td)
            {
                IItemDescriptor desc = td.desc;
                if (!string.IsNullOrEmpty(td.id))
                {
                    desc = ItemView.ResolveByID(td.id);
                }
                _ = OpenAsync(desc, td.screenPosition);
            }
        }

        private async UniTask OpenAsync(IItemDescriptor desc, Vector2 screenPosition)
        {
            await BuildContent(desc);
            PositionAt(screenPosition);
            FadeIn();
        }

        public override void OnClose()
        {
            ClearContent();
            base.OnClose();
        }


        private async UniTask BuildContent(IItemDescriptor main)
        {
            ClearContent();
            if (main == null) return;
            if (TooltipColPrefab == null || TooltipPrefab == null)
            {
                Debug.LogError($"[TooltipWindow] 未配置 TooltipColPrefab / TooltipPrefab");
                return;
            }

            foreach (List<IItemDescriptor> column in BuildColumns(main))
            {
                CreateColumn(column);
            }
            // Wait a frame so TMP metrics are ready after a canvas update.
            await UniTask.NextFrame();
            RefreshLayout();
        }

        private List<List<IItemDescriptor>> BuildColumns(IItemDescriptor main)
        {
            var columns = new List<List<IItemDescriptor>>();
            var seen = new HashSet<string>();
            _refNames = new Dictionary<string, string>();

            var current = new List<IItemDescriptor> { main };
            int depth = 0;
            while (current.Count > 0 && depth < _maxDepth)
            {
                columns.Add(current);
                var next = new List<IItemDescriptor>();
                foreach (IItemDescriptor card in current)
                {
                    List<DescMarkup.Segment> segments = DescMarkup.Parse(card.Tooltip ?? string.Empty);
                    foreach (DescMarkup.Segment seg in segments)
                    {
                        if (seg.Kind != DescMarkup.SegmentKind.Reference) continue;
                        if (!seen.Add(seg.Text)) continue;

                        IItemDescriptor refDesc = ItemView.ResolveByID(seg.Text);
                        if (refDesc == null)
                        {
                            Debug.LogWarning($"[TooltipWindow] 无法解析引用 '{seg.Text}'");
                            continue;
                        }
                        _refNames[seg.Text] = refDesc.Name;
                        next.Add(refDesc);
                    }
                }
                current = next;
                depth++;
            }
            return columns;
        }

        private void CreateColumn(List<IItemDescriptor> cards)
        {
            GameObject colGo = Instantiate(TooltipColPrefab, Content);
            Transform colTransform = colGo.transform;
            for (int i = colTransform.childCount - 1; i >= 0; i--)
            {
                DestroyImmediate(colTransform.GetChild(i).gameObject);
            }

            foreach (IItemDescriptor desc in cards)
            {
                GameObject cardGo = Instantiate(TooltipPrefab, colTransform);
                SetCardText(cardGo, desc, _refNames);
                Action refresh = () =>
                {
                    SetCardText(cardGo, desc, _refNames);
                    RefreshLayout();
                };
                desc.Changed += refresh;
                _unsubscribers.Add(() => desc.Changed -= refresh);
            }
        }

        private static void SetCardText(GameObject cardGo, IItemDescriptor desc, IReadOnlyDictionary<string, string> refNames)
        {
            TextMeshProUGUI title = cardGo.transform.Find("TextContent/Title")?.GetComponent<TextMeshProUGUI>();
            TextMeshProUGUI descText = cardGo.transform.Find("TextContent/Desc")?.GetComponent<TextMeshProUGUI>();

            if (title != null)
            {
                title.text = desc?.Name ?? string.Empty;
            }
            if (descText != null)
            {
                string body = string.IsNullOrEmpty(desc?.Tooltip) ? desc?.Subtext : desc.Tooltip;
                descText.text = DescMarkup.RenderRichText(body ?? string.Empty, refNames);
            }
        }

        private void RefreshLayout()
        {
            foreach (TextMeshProUGUI tmp in GetComponentsInChildren<TextMeshProUGUI>(true))
            {
                tmp.ForceMeshUpdate();
            }
            UnityEngine.UI.LayoutRebuilder.ForceRebuildLayoutImmediate(transform as RectTransform);
            Canvas.ForceUpdateCanvases();

            _cachedSize = _rectTransform.rect.size;
        }


        private void ClearContent()
        {
            UnsubscribeAll();
            if (Content == null) return;
            for (int i = Content.childCount - 1; i >= 0; i--)
            {
                DestroyImmediate(Content.GetChild(i).gameObject);
            }
        }

        private void UnsubscribeAll()
        {
            foreach (Action action in _unsubscribers)
            {
                action?.Invoke();
            }
            _unsubscribers.Clear();
        }


        /// <summary>Follows the cursor while staying clamped inside the parent panel.</summary>
        public void PositionAt(Vector2 screenPosition)
        {
            RectTransform parent = _rectTransform.parent as RectTransform;
            if (parent == null) return;

            if (!RectTransformUtility.ScreenPointToLocalPointInRectangle(
                    parent, screenPosition, null, out Vector2 local))
            {
                return;
            }

            Vector2 size = _cachedSize;
            if (size.x <= 0f || size.y <= 0f)
            {
                Canvas.ForceUpdateCanvases();
                size = _rectTransform.rect.size;
                _cachedSize = size;
            }
            Rect parentRect = parent.rect;

            Vector2 anchored = new Vector2(
                local.x + parentRect.width * 0.5f,
                local.y - parentRect.height * 0.5f);

            anchored.x = Mathf.Clamp(anchored.x, 0f, Mathf.Max(0f, parentRect.width - size.x));
            anchored.y = Mathf.Clamp(anchored.y, Mathf.Min(0f, -(parentRect.height - size.y)), 0f);

            _rectTransform.anchoredPosition = anchored;
        }

        /// <summary>Repositioning entry for high-frequency calls; same as PositionAt.</summary>
        public void MoveTo(Vector2 screenPosition)
        {
            PositionAt(screenPosition);
        }


        public void FadeIn()
        {
            if (_canvasGroup == null) return;
            _canvasGroup.DOKill();
            _canvasGroup.DOFade(1f, _fadeDuration).SetEase(Ease.OutQuad);
        }

        public void FadeOut()
        {
            if (_canvasGroup == null) return;
            _canvasGroup.DOKill();
            _canvasGroup.DOFade(0f, _fadeDuration).SetEase(Ease.OutQuad);
        }


        public override async UniTask PlayEnterAnimation()
        {
            FadeIn();
            await UniTask.DelayFrame(1);
        }

        public override async UniTask PlayExitAnimation()
        {
            FadeOut();
            await UniTask.DelayFrame(1);
        }

        /// <summary>Keeps content auto-sized; no fullscreen stretch for tooltips.</summary>
        public override void ResetRectTransform()
        {
        }
    }
}
