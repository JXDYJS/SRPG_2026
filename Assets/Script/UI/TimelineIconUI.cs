using UnityEngine;
using UnityEngine.UI;
using GamePlay.Unit;
using DG.Tweening;

namespace GamePlay.UI
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
        
        /// <summary>
        /// 初始化头像
        /// </summary>
        public void Initialize(MapUnit unit)
        {
            _targetUnit = unit;
            
            // 确保动态获取Image组件
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
            
            // 强制设置长宽为20x20
            _rectTransform.sizeDelta = new Vector2(20f, 20f);
        }
        
        /// <summary>
        /// 更新头像位置
        /// </summary>
        /// <param name="trackWidth">跑道总宽度</param>
        /// <param name="duration">移动持续时间</param>
        public void UpdatePosition(float trackWidth, float duration = 0.3f)
        {
            if (_targetUnit == null) return;
            
            // 计算进度：CurrentActionValue / 100，但限制在0-1之间
            float progress = Mathf.Clamp01(_targetUnit.CurrentActionValue / 100f);
            
            // 计算目标X坐标：从右向左移动
            // 最右端 (X = trackWidth) 代表 AV = 100
            // 最左端 (X = 0) 代表 AV = 0
            float targetX = progress * trackWidth;
            
            MoveToTargetX(targetX, duration);
        }
        
        /// <summary>
        /// 移动到目标X坐标
        /// </summary>
        /// <param name="targetX">目标X坐标</param>
        /// <param name="duration">移动持续时间</param>
        public void MoveToTargetX(float targetX, float duration = 0.3f)
        {
            // 使用DOTween平滑移动
            _rectTransform.DOKill();
            _rectTransform.DOAnchorPosX(targetX, duration)
                .SetEase(Ease.OutCubic);
        }
        
        /// <summary>
        /// 获取目标单位
        /// </summary>
        public MapUnit GetTargetUnit()
        {
            return _targetUnit;
        }
        
        /// <summary>
        /// 淡出并销毁
        /// </summary>
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