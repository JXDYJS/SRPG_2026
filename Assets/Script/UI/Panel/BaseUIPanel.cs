using UnityEngine;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using GamePlay.InputSystem;
using Utils;

namespace UI.Panel
{
    [RequireComponent(typeof(CanvasGroup))]
    public abstract class BaseUIPanel : MonoBehaviour, IUIPanel
    {
        [Header("动画配置")]
        [SerializeField] protected float _animationDuration = 0.25f;
        [SerializeField] protected float _slideDistance = 300f;
        [Tooltip("下拉动画距离；<=0 时自动取父级(画布)高度，保证从屏幕上方完整滑入")]
        [SerializeField] protected float _dropDistance = 0f;
        [SerializeField] protected AnimationDirection _enterDirection = AnimationDirection.Left;
        [SerializeField] protected AnimationDirection _exitDirection = AnimationDirection.Right;

        [Header("输入路由")]
        [Tooltip("Modal:打开时禁用 Gameplay map;NonModal:保持 Gameplay 启用(背景层 / 小型 tooltip 用)")]
        [SerializeField] private ActionMapRouter.UIInputMode _inputMode = ActionMapRouter.UIInputMode.NonModal;

        /// <summary>Stable id for ActionMapRouter; defaults to the concrete type name.</summary>
        protected virtual string PanelId => GetType().Name;

        public enum AnimationDirection
        {
            Left,
            Right,
            Up,
            Down
        }

        protected RectTransform _rectTransform;
        protected CanvasGroup _canvasGroup;
        protected Vector2 _originalPosition;

        public GameObject PanelObject => gameObject;
        public bool IsInitialized { get; protected set; }

        /// <summary>Whether the panel is open (maintained by UIManager to avoid reopening mid-close).</summary>
        public bool IsOpen { get; set; }

        /// <summary>Whether to play the drop-down animation on open/close (popups auto-enabled by UIManager).</summary>
        public bool AnimateOnOpenClose { get; set; }

        protected virtual void Awake()
        {
            _rectTransform = GetComponent<RectTransform>();
            _canvasGroup = GetComponent<CanvasGroup>();
            _originalPosition = _rectTransform.anchoredPosition;
        }

        public virtual void OnInit()
        {
            if (IsInitialized) return;
            IsInitialized = true;
        }

        public virtual void OnOpen(object data = null)
        {
            if (!IsInitialized) OnInit();
            ActionMapRouter.Push(PanelId, _inputMode);
        }

        public virtual void OnClose()
        {
            ActionMapRouter.Pop(PanelId);
        }

        public virtual void OnHide()
        {
            OnClose();
        }

        public virtual void ResetRectTransform()
        {
            if (_rectTransform == null)
                _rectTransform = GetComponent<RectTransform>();
            if (_rectTransform == null) return;

            _rectTransform.anchorMin = Vector2.zero;
            _rectTransform.anchorMax = Vector2.one;
            _rectTransform.anchoredPosition = Vector2.zero;
            _rectTransform.sizeDelta = Vector2.zero;
            _rectTransform.localScale = Vector3.one;
            _originalPosition = Vector2.zero;

            _rectTransform.DOKill();
        }

        public virtual async UniTask PlayEnterAnimation()
        {
            Vector2 startPos = _originalPosition + GetDirectionVector(_enterDirection) * _slideDistance;
            _rectTransform.anchoredPosition = startPos;

            _rectTransform.DOKill();

            await _rectTransform.DOAnchorPos(_originalPosition, _animationDuration)
                                .SetEase(Ease.OutCubic)
                                .AsyncWaitForCompletion();
        }

        public virtual async UniTask PlayExitAnimation()
        {
            Vector2 endPos = _originalPosition + GetDirectionVector(_exitDirection) * _slideDistance;

            _rectTransform.DOKill();

            await _rectTransform.DOAnchorPos(endPos, _animationDuration)
                                .SetEase(Ease.OutCubic)
                                .AsyncWaitForCompletion();
        }


        /// <summary>Drop-in animation: falls from above to the original position (anchoredPosition-driven).</summary>
        public virtual async UniTask PlayDropInAnimation()
        {
            if (_rectTransform == null) return;
            _rectTransform.DOKill();
            _rectTransform.anchoredPosition = _originalPosition + Vector2.up * GetDropDistance();

            await DT.Append(_rectTransform.DOAnchorPos(_originalPosition, _animationDuration)
                                          .SetEase(Ease.OutCubic))
                    .AsyncWaitForCompletion();
        }

        /// <summary>Drop-out animation: falls below the screen, then hidden by UIManager.</summary>
        public virtual async UniTask PlayDropOutAnimation()
        {
            if (_rectTransform == null) return;
            _rectTransform.DOKill();

            await DT.Append(_rectTransform.DOAnchorPos(_originalPosition + Vector2.down * GetDropDistance(), _animationDuration)
                                          .SetEase(Ease.InCubic))
                    .AsyncWaitForCompletion();
        }

        /// <summary>Drop distance: custom _dropDistance, else parent (canvas) height, else _slideDistance.</summary>
        protected virtual float GetDropDistance()
        {
            if (_dropDistance > 0f) return _dropDistance;
            RectTransform parent = _rectTransform.parent as RectTransform;
            float parentHeight = parent != null ? parent.rect.height : 0f;
            return parentHeight > 0f ? parentHeight : _slideDistance;
        }

        private Vector2 GetDirectionVector(AnimationDirection direction)
        {
            switch (direction)
            {
                case AnimationDirection.Left:
                    return Vector2.left;
                case AnimationDirection.Right:
                    return Vector2.right;
                case AnimationDirection.Up:
                    return Vector2.up;
                case AnimationDirection.Down:
                    return Vector2.down;
                default:
                    return Vector2.right;
            }
        }

        public virtual void SetInteractable(bool interactable)
        {
            if (_canvasGroup != null)
            {
                _canvasGroup.interactable = interactable;
                _canvasGroup.blocksRaycasts = interactable;
            }
        }

        public virtual void ResetPosition()
        {
            _rectTransform.DOKill();
            _rectTransform.anchoredPosition = _originalPosition;
        }
    }
}
