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
    /// <summary>
    /// TooltipWindow — 可变弹窗（横向列，列内可变卡片，卡片 = title + desc）
    ///
    /// 以 BaseUIPanel 接入 UIManager（UIPanelResource 约定，经 OpenPanel 挂到 Topmost 层）。
    /// 打开方式：OpenPanel&lt;TooltipWindow&gt;(TooltipData)，TooltipData 支持
    ///   - 传 id：内部 ItemView.ResolveByID 解析出主描述
    ///   - 直接传 IItemDescriptor（SimpleSlot 悬停等已有描述的场景）
    ///
    /// 列构建规则（BFS 引用扩散）：
    ///   第 1 列 = 主卡；第 n+1 列 = 第 n 列卡片 desc 中出现的 {引用id}，
    ///   全局去重（每个 id 只在最早出现的列渲染一次），深度有上限 _maxDepth 兜底防环。
    /// 生命周期：OnOpen 重建内容 + 订阅各卡 Changed（层数等实时刷新），OnClose 退订 + 清空。
    /// </summary>
    [UIPanelResource("UI/Tooltip/TooltipWindow")]
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

        /// <summary>打开面板时传入的数据：id 与 desc 二选一，位置必填。</summary>
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
            // 提示窗不拦截下方槽位的点击/悬停
            if (_canvasGroup != null)
            {
                _canvasGroup.blocksRaycasts = false;
            }
            // 未显式指定 Content 时以自身（HorizontalLayoutGroup 容器）作为列容器
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
                BuildContent(desc);
                PositionAt(td.screenPosition);
            }

            FadeIn();
        }

        public override void OnClose()
        {
            ClearContent();
            base.OnClose();
        }

        // ==================== 内容构建 ====================

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
            await UniTask.NextFrame();
            //RefreshLayout();
            UnityEngine.UI.LayoutRebuilder.ForceRebuildLayoutImmediate(transform as RectTransform);
        }

        /// <summary>
        /// BFS 分层构建列：第 n 列的引用 id 全部去重后进入第 n+1 列。
        /// 同时收集 id→显示名 供 desc 富文本高亮。
        /// </summary>
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
                        if (!seen.Add(seg.Text)) continue; // 全局去重：一个 id 只在最早出现处渲染一次

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
            // 清掉列 prefab 自带的模板卡；运行时新实例用 DestroyImmediate 立即移除，避免空卡闪帧
            for (int i = colTransform.childCount - 1; i >= 0; i--)
            {
                DestroyImmediate(colTransform.GetChild(i).gameObject);
            }

            foreach (IItemDescriptor desc in cards)
            {
                GameObject cardGo = Instantiate(TooltipPrefab, colTransform);
                SetCardText(cardGo, desc, _refNames);
                // 订阅源变化（层数等）实时刷新卡片
                Action refresh = () =>
                {
                    SetCardText(cardGo, desc, _refNames);
                    RefreshLayout();
                };
                desc.Changed += refresh;
                _unsubscribers.Add(() => desc.Changed -= refresh);
            }
        }

        /// <summary>
        /// 设置单张卡片的 Title/Desc 文本（卡片结构约定：root → TextContent → Title/Desc）。
        /// 替代已移除的 Tooltip 组件，文本设置与实时刷新统一走这里。
        /// </summary>
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

        /// <summary>
        /// 同步收敛布局：TMP 文本生成默认延后到 canvas 更新周期，首帧同步读取会拿到旧 preferred 值。
        /// 这里强制立刻生成文本，再跑两轮布局——第 1 轮结算宽度链，第 2 轮用最终宽度算 TMP 换行高度。
        /// </summary>
        private void RefreshLayout()
        {
            foreach (TextMeshProUGUI tmp in GetComponentsInChildren<TextMeshProUGUI>(true))
            {
                tmp.ForceMeshUpdate();
            }
            UnityEngine.UI.LayoutRebuilder.ForceRebuildLayoutImmediate(transform as RectTransform);
            Canvas.ForceUpdateCanvases();
        }

        // ==================== 清理 ====================

        private void ClearContent()
        {
            UnsubscribeAll();
            if (Content == null) return;
            // 运行时动态生成的临时 UI，用 DestroyImmediate 立即移除，避免残留一帧影响布局
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

        // ==================== 定位 ====================

        /// <summary>
        /// 定位到屏幕坐标（光标跟随）。
        /// 屏幕坐标 → 父层级本地坐标（ScreenPointToLocalPointInRectangle 内部已除以 lossyScale，
        /// 自动处理 CanvasScaler 缩放），再转换到以父左上角为原点的 anchoredPosition 空间
        /// （prefab 锚点取父左上角 (0,1)）。
        /// 窗口 pivot 在左上角 (0,1)，即整窗从鼠标位置向右(+x)向下(-y)生长，clamp 保证不出父边界。
        /// </summary>
        public void PositionAt(Vector2 screenPosition)
        {
            RectTransform parent = _rectTransform.parent as RectTransform;
            if (parent == null) return;

            // 屏幕坐标 → 父层级本地坐标（以父 pivot 为中心，已含 Canvas 缩放）
            if (!RectTransformUtility.ScreenPointToLocalPointInRectangle(
                    parent, screenPosition, null, out Vector2 local))
            {
                return;
            }

            // 强制刷新一次布局，确保 ContentSizeFitter 已算出实际尺寸（首次打开必需；高频移动可后续优化）
            Canvas.ForceUpdateCanvases();
            Vector2 size = _rectTransform.rect.size;
            Rect parentRect = parent.rect;

            // 父左上角在本地坐标（父 pivot 居中）为 (-w/2, +h/2)。
            // 锚点参考点为父左上角，故 anchoredPosition = local - 父左上角。
            Vector2 anchored = new Vector2(
                local.x + parentRect.width * 0.5f,
                local.y - parentRect.height * 0.5f);

            // 窗口 pivot 在左上角 (0,1)：向右(+x)向下(-y)生长，
            // 保证整窗落在父边界内（pivot.x ∈ [0, w-size.x]，pivot.y ∈ [-(h-size.y), 0]）
            anchored.x = Mathf.Clamp(anchored.x, 0f, Mathf.Max(0f, parentRect.width - size.x));
            anchored.y = Mathf.Clamp(anchored.y, Mathf.Min(0f, -(parentRect.height - size.y)), 0f);

            _rectTransform.anchoredPosition = anchored;
        }

        /// <summary>供 OnPointerMove 等高频调用重定位的入口，语义与 PositionAt 一致</summary>
        public void MoveTo(Vector2 screenPosition)
        {
            PositionAt(screenPosition);
        }

        // ==================== 动画 ====================

        /// <summary>淡入：透明度 0→1</summary>
        public void FadeIn()
        {
            if (_canvasGroup == null) return;
            _canvasGroup.DOKill();
            _canvasGroup.DOFade(1f, _fadeDuration).SetEase(Ease.OutQuad);
        }

        /// <summary>淡出：透明度 1→0</summary>
        public void FadeOut()
        {
            if (_canvasGroup == null) return;
            _canvasGroup.DOKill();
            _canvasGroup.DOFade(0f, _fadeDuration).SetEase(Ease.OutQuad);
        }

        // ==================== 动画重写（备用：未来走 UIStack 时生效） ====================

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

        /// <summary>保持内容自适应尺寸，不做全屏拉伸（tooltip 不适用）</summary>
        public override void ResetRectTransform()
        {
            // 有意留空：不走基类的全屏拉伸逻辑
        }
    }
}
