using System;
using UnityEngine;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using UI.Panel;
using UI.Item;

namespace UI.Tooltip
{
    /// <summary>
    /// TooltipWindow — 可变弹窗基架（壳，未填内容逻辑）
    ///
    /// 以 BaseUIPanel 接入 UIManager（UIPanelResource 约定，经 OpenPanel 挂到 Topmost 层）。
    /// 本壳已实现：
    ///   - 淡入效果：OnOpen 时 CanvasGroup 透明度 0→1（DOTween），OnClose 预留在 OnClose
    ///   - 定位：OnOpen 接收 TooltipData（含屏幕坐标），PositionAt/MoveTo 负责光标跟随 + 屏幕内 clamp
    ///   - 生命周期壳：OnOpen / OnClose 预留内容构建与退订点
    ///
    /// 后续迭代填充：
    ///   - TooltipContentBuilder.Build(desc)：按 BFS 引用深度分层产出多列
    ///   - TooltipCard：title + desc 卡渲染（desc 富文本高亮引用名）
    ///   - 卡片 Changed 订阅 / Unlink
    /// </summary>
    [UIPanelResource("UI/Tooltip/TooltipWindow")]
    public class TooltipWindow : BaseUIPanel
    {
        [Header("Tooltip 基架配置")]
        [SerializeField] private float _fadeDuration = 0.15f;
        [SerializeField] private Vector2 _cursorOffset = new Vector2(24f, -24f);

        /// <summary>
        /// 打开面板时传入的数据。
        /// desc 当前仅作为占位，供后续内容构建逻辑使用；位置必填。
        /// </summary>
        public class TooltipData
        {
            public IItemDescriptor desc;
            public Vector2 screenPosition;

            public TooltipData(IItemDescriptor desc, Vector2 screenPosition)
            {
                this.desc = desc;
                this.screenPosition = screenPosition;
            }
        }

        public override void OnInit()
        {
            base.OnInit();
            // 提示窗不拦截下方槽位的点击/悬停
            if (_canvasGroup != null)
            {
                _canvasGroup.blocksRaycasts = false;
            }
        }

        public override void OnOpen(object data = null)
        {
            base.OnOpen(data);

            // 每次打开都从透明淡入
            if (_canvasGroup != null)
            {
                _canvasGroup.alpha = 0f;
            }

            if (data is TooltipData td)
            {
                PositionAt(td.screenPosition);
            }

            FadeIn();

            // TODO: 内容构建入口 —— TooltipContentBuilder.Build(td.desc) 产出列结构后在此装配
        }

        public override void OnClose()
        {
            // TODO: 退订各卡片 desc.Changed + 调用 desc.Unlink()，并清空列/卡对象
            base.OnClose();
        }

        /// <summary>
        /// 定位到屏幕坐标（光标跟随）。
        /// 屏幕坐标 → 父层级 RectTransform 本地坐标，再 clamp 在父边界内，避免弹窗出屏。
        /// 锚点约定：prefab 上子锚点/pivot 取 (0.5,0.5)（默认），anchoredPosition 以父 pivot 为原点。
        /// </summary>
        public void PositionAt(Vector2 screenPosition, Vector2? offset = null)
        {
            RectTransform parent = _rectTransform.parent as RectTransform;
            if (parent == null) return;

            if (!RectTransformUtility.ScreenPointToLocalPointInRectangle(
                    parent, screenPosition, null, out Vector2 local))
            {
                return;
            }

            local += offset ?? _cursorOffset;

            // 强制刷新一次布局，确保 ContentSizeFitter 已算出实际尺寸（首次打开必需；高频移动可后续优化）
            Canvas.ForceUpdateCanvases();
            Vector2 size = _rectTransform.rect.size;
            Rect parentRect = parent.rect;

            local.x = Mathf.Clamp(local.x,
                -parentRect.width * 0.5f + size.x * 0.5f,
                parentRect.width * 0.5f - size.x * 0.5f);
            local.y = Mathf.Clamp(local.y,
                -parentRect.height * 0.5f + size.y * 0.5f,
                parentRect.height * 0.5f - size.y * 0.5f);

            _rectTransform.anchoredPosition = local;
        }

        /// <summary>供 OnPointerMove 等高频调用重定位的入口，语义与 PositionAt 一致</summary>
        public void MoveTo(Vector2 screenPosition)
        {
            PositionAt(screenPosition);
        }

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
