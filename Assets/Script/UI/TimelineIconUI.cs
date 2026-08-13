using UnityEngine;
using UnityEngine.UI;
using GamePlay.Units;
using DG.Tweening;

namespace UI
{
    public class TimelineIconUI : MonoBehaviour
    {
        [Header("UI引用")]
        [SerializeField] private Image iconImage;
        
        [Header("单位引用")]
        private MapUnit _targetUnit;
        private RectTransform _rectTransform;
        
        private void Awake()
        {
            _rectTransform = GetComponent<RectTransform>();
            if (iconImage == null)
            {
                iconImage = GetComponent<Image>();
            }
        }
        
        public void Initialize(MapUnit unit)
        {
            _targetUnit = unit;
            
            if (_rectTransform == null)
            {
                _rectTransform = GetComponent<RectTransform>();
                if (_rectTransform == null)
                {
                    Debug.LogError("TimelineIconUI: Initialize failed - no RectTransform found");
                    return;
                }
            }
            
            if (iconImage == null)
            {
                iconImage = GetComponent<Image>();
            }
            
            if (_targetUnit != null && 
                _targetUnit.Character != null && 
                _targetUnit.Character.characterData != null && 
                _targetUnit.Character.characterData.Icon != null)
            {
                iconImage.sprite = _targetUnit.Character.characterData.Icon;
            }
            else
            {
                Debug.LogWarning($"TimelineIconUI: 单位 {unit?.name} 缺少Icon数据");
            }
            
            if (_rectTransform != null)
                _rectTransform.sizeDelta = new Vector2(20f, 20f);
        }
        
        public void UpdatePosition(float trackWidth, float duration = 0.3f)
        {
            if (_targetUnit == null) return;
            
            // Normalize by max AV in the queue to support any Speed range.
            float divisor = 100f;
            var tm = TurnManager.Instance;
            if (tm != null && tm.ActionQueue != null && tm.ActionQueue.Count > 0)
            {
                float maxAV = 1f;
                for (int i = 0; i < tm.ActionQueue.Count; i++)
                    if (tm.ActionQueue[i].CurrentActionValue > maxAV) maxAV = tm.ActionQueue[i].CurrentActionValue;
                divisor = maxAV;
            }
            float progress = Mathf.Clamp01(_targetUnit.CurrentActionValue / divisor);
            
            // Right edge (X = trackWidth) maps to max AV; left edge (X = 0) to zero.
            float targetX = progress * trackWidth;
            
            MoveToTargetX(targetX, duration);
        }
        
        public void MoveToTargetX(float targetX, float duration = 0.3f)
        {
            _rectTransform.DOKill();
            _rectTransform.DOAnchorPosX(targetX, duration)
                .SetEase(Ease.OutCubic);
        }
        
        public MapUnit GetTargetUnit()
        {
            return _targetUnit;
        }
        
        public void FadeOutAndDestroy(float duration = 0.3f)
        {
            _rectTransform.DOKill();
            iconImage.DOKill();
            
            iconImage.DOFade(0f, duration)
                .OnComplete(() => Destroy(gameObject));
        }
        
        private void OnDestroy()
        {
            _rectTransform.DOKill();
            iconImage.DOKill();
        }
    }
}