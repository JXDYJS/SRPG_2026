using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using GamePlay.Units;

namespace UI
{
    public class TimelineUIManager : MonoBehaviour
    {
        public static TimelineUIManager Instance { get; private set; }
        
        [Header("UI引用")]
        [SerializeField] private RectTransform trackRect;
        
        [Header("运行时数据")]
        private Dictionary<MapUnit, TimelineIconUI> _activeIcons = new Dictionary<MapUnit, TimelineIconUI>();
        private float _trackWidth;
        
        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
            }
            else
            {
                Debug.LogError("TimelineUIManager 已存在实例，重复创建！");
                Destroy(gameObject);
            }
            
            if (trackRect != null)
            {
                _trackWidth = trackRect.rect.width;
            }
        }
        
        /// <summary>
        /// 初始化时间条
        /// </summary>
        public void InitTimeline(List<MapUnit> units)
        {
            ClearAllIcons();
            
            if (trackRect == null)
            {
                Debug.LogError("TimelineUIManager: 缺少trackRect引用");
                return;
            }
            
            foreach (var unit in units)
            {
                if (unit != null)
                {
                    AddUnit(unit);
                }
            }
            
            // 立即更新所有头像到初始位置

            UpdateAllIconsPosition(0f);
        }
        
        /// <summary>
        /// 添加单位到时间条
        /// </summary>
        public void AddUnit(MapUnit unit)
        {
            if (unit == null || _activeIcons.ContainsKey(unit)) return;
            
            // 检查单位是否有CharacterData和Icon
            if (unit.Character == null || unit.Character.characterData == null || unit.Character.characterData.Icon == null)
            {
                Debug.LogWarning($"TimelineUIManager: 单位 {unit.name} 缺少CharacterData或Icon");
                return;
            }
            
            // 创建头像GameObject
            GameObject iconObj = new GameObject($"TimelineIcon_{unit.name}");
            iconObj.transform.SetParent(trackRect, false);
            
            // 添加Image组件
            Image iconImage = iconObj.AddComponent<Image>();
            iconImage.sprite = unit.Character.characterData.Icon;
            iconImage.preserveAspect = true;
            
            // 获取RectTransform并设置属性
            RectTransform iconRect = iconObj.GetComponent<RectTransform>();
            
            // 设置锚点为左中
            iconRect.anchorMin = new Vector2(0, 0.5f);
            iconRect.anchorMax = new Vector2(0, 0.5f);
            
            // 设置轴心点为左侧
            iconRect.pivot = new Vector2(0, 0.5f);
            
            // 强制设置固定大小
            iconRect.sizeDelta = new Vector2(20f, 20f);
            
            // 初始化位置为0
            iconRect.anchoredPosition = new Vector2(0, 0);
            
            // 添加TimelineIconUI组件
            TimelineIconUI iconUI = iconObj.AddComponent<TimelineIconUI>();
            iconUI.Initialize(unit);
            
            _activeIcons[unit] = iconUI;
        }
        
        /// <summary>
        /// 从时间条移除单位
        /// </summary>
        public void RemoveUnit(MapUnit unit)
        {
            if (unit == null || !_activeIcons.ContainsKey(unit)) return;
            
            TimelineIconUI iconUI = _activeIcons[unit];
            if (iconUI != null)
            {
                iconUI.FadeOutAndDestroy(0.5f);
            }
            
            _activeIcons.Remove(unit);
        }
        
        /// <summary>
        /// 更新所有头像位置（使用双向扫荡算法，完美解决重叠与撞墙问题）
        /// </summary>
        public void UpdateAllIconsPosition(float duration = 0.3f)
        {
            if (trackRect == null) return;
            
            // 重新计算跑道宽度（可能UI大小发生变化）
            _trackWidth = trackRect.rect.width;
            
            // 获取TurnManager的行动队列（必须按此严格顺序遍历）
            if (TurnManager.Instance == null) return;
            var actionQueue = TurnManager.Instance.ActionQueue;
            
            // 如果队列为空，直接返回
            if (actionQueue == null || actionQueue.Count == 0) return;
            
            // 设定常量
            const float iconWidth = 20f;
            
            // 计算可用跑道宽度（防止停在最右侧的头像飞出背景条）
            float usableWidth = _trackWidth - iconWidth;
            
            // 创建浮点数组用于暂存计算结果
            float[] targetX = new float[actionQueue.Count];
            
            // ================== 第一遍扫荡（正向）：保右墙，向左推挤 ==================
            
            // 维护变量：上一个排好位置的头像的X坐标（从极右侧开始）
                       float lastPlacedX = usableWidth + iconWidth;
            
            for (int i = 0; i < actionQueue.Count; i++)
            {
                var unit = actionQueue[i];
                if (unit == null) continue;
                
                // 计算理论位置（反转进度）
                // 左侧 (X=0) 代表起跑线(AV=100)，右侧 (X=usableWidth) 代表终点(AV=0)
                float rawX = (1f - Mathf.Clamp01(unit.CurrentActionValue / 100f)) * usableWidth;
                
                // 特殊判断：如果是当前正在行动的单位，强制rawX = usableWidth（最右侧终点）
                if (TurnManager.Instance.ActiveUnit == unit)
                {
                    rawX = usableWidth;
                }
                
                // 向左推挤：当前头像不能超越前一个人的左侧（即必须向左退让）
                targetX[i] = Mathf.Min(rawX, lastPlacedX - iconWidth);
                
                // 更新记录
                lastPlacedX = targetX[i];
            }
            
            // ================== 第二遍扫荡（反向）：保左墙起跑线，向右推挤 ==================
            
            // 维护变量：下一个排好位置的头像的X坐标（从极左侧开始）
            float nextPlacedX = -iconWidth;
            
            for (int i = actionQueue.Count - 1; i >= 0; i--)
            {
                // 步骤A（保左墙）：不能突破起跑线
                targetX[i] = Mathf.Max(targetX[i], 0f);
                
                // 步骤B（向右顶）：如果因为保左墙导致了重叠，把前一个人往右顶
                targetX[i] = Mathf.Max(targetX[i], nextPlacedX + iconWidth);
                
                // 步骤C（终极右墙保护）：哪怕被顶，也不能突破最右侧终点
                targetX[i] = Mathf.Min(targetX[i], usableWidth);
                
                // 更新记录
                nextPlacedX = targetX[i];
            }
            
            // ================== 执行移动 ==================
            
            // 再次正向遍历actionQueue
            for (int i = 0; i < actionQueue.Count; i++)
            {
                var unit = actionQueue[i];
                if (unit == null || !_activeIcons.ContainsKey(unit)) continue;
                
                // 从_activeIcons字典中获取对应的TimelineIconUI
                TimelineIconUI icon = _activeIcons[unit];
                if (icon == null) continue;
                
                // 调用MoveToTargetX应用最终计算出的完美坐标
                icon.MoveToTargetX(targetX[i], duration);
            }
        }
        
        /// <summary>
        /// 清理所有头像
        /// </summary>
        public void ClearAllIcons()
        {
            foreach (var kvp in _activeIcons)
            {
                if (kvp.Value != null)
                {
                    kvp.Value.FadeOutAndDestroy(0.1f);
                }
            }
            
            _activeIcons.Clear();
        }
        
        /// <summary>
        /// 获取指定单位的头像
        /// </summary>
        public TimelineIconUI GetIconForUnit(MapUnit unit)
        {
            if (_activeIcons.TryGetValue(unit, out TimelineIconUI icon))
            {
                return icon;
            }
            return null;
        }
        
        /// <summary>
        /// 检查单位是否在时间条上
        /// </summary>
        public bool HasUnit(MapUnit unit)
        {
            return _activeIcons.ContainsKey(unit);
        }
        
        private void OnDestroy()
        {
            ClearAllIcons();
        }
    }
}