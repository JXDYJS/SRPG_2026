using UnityEngine;
using Cysharp.Threading.Tasks;
using DG.Tweening;

namespace UI.Panel
{
    [RequireComponent(typeof(CanvasGroup))]
    public abstract class BaseUIPanel : MonoBehaviour, IUIPanel
    {
        [Header("动画配置")]
        [SerializeField] protected float _animationDuration = 0.25f;
        [SerializeField] protected float _slideDistance = 300f;
        [SerializeField] protected AnimationDirection _enterDirection = AnimationDirection.Left;
        [SerializeField] protected AnimationDirection _exitDirection = AnimationDirection.Right;

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
        }

        public virtual void OnClose()
        {
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
