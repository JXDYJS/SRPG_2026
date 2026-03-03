using UnityEngine;
using Cysharp.Threading.Tasks;

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

        protected virtual void Awake()
        {
            _rectTransform = GetComponent<RectTransform>();
            _canvasGroup = GetComponent<CanvasGroup>();
            _originalPosition = _rectTransform.anchoredPosition;
        }

        public virtual async UniTask PlayEnterAnimation()
        {
            Vector2 startPos = _originalPosition + GetDirectionVector(_enterDirection) * _slideDistance;
            _rectTransform.anchoredPosition = startPos;

            float elapsed = 0f;
            while (elapsed < _animationDuration)
            {
                elapsed += Time.deltaTime;
                float t = Mathf.Clamp01(elapsed / _animationDuration);
                float eased = 1f - Mathf.Pow(1f - t, 3);
                _rectTransform.anchoredPosition = Vector2.Lerp(startPos, _originalPosition, eased);
                await UniTask.Yield();
            }

            _rectTransform.anchoredPosition = _originalPosition;
        }

        public virtual async UniTask PlayExitAnimation()
        {
            Vector2 endPos = _originalPosition + GetDirectionVector(_exitDirection) * _slideDistance;
            Vector2 startPos = _rectTransform.anchoredPosition;

            float elapsed = 0f;
            while (elapsed < _animationDuration)
            {
                elapsed += Time.deltaTime;
                float t = Mathf.Clamp01(elapsed / _animationDuration);
                float eased = 1f - Mathf.Pow(1f - t, 3);
                _rectTransform.anchoredPosition = Vector2.Lerp(startPos, endPos, eased);
                await UniTask.Yield();
            }

            _rectTransform.anchoredPosition = endPos;
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
            _rectTransform.anchoredPosition = _originalPosition;
        }
    }
}
