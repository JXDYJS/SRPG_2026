using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using GamePlay.Units;
using UI.Panel;

namespace UI
{
    [UIPanelResource("Assets/UI/Battle/Timeline.prefab")]
    public class TimelinePanel : BaseUIPanel
    {
        [Header("UI引用")]
        [SerializeField] private RectTransform trackRect;

        [Header("运行时数据")]
        private Dictionary<MapUnit, TimelineIconUI> _activeIcons = new Dictionary<MapUnit, TimelineIconUI>();
        private float _trackWidth;
        private bool _isDirty;
        private bool _isFirstUpdate = true;

        protected override void Awake()
        {
            base.Awake();
            if (trackRect == null)
                trackRect = GetComponent<RectTransform>();
        }

        public override void OnInit()
        {
            base.OnInit();
        }

        public override void OnClose()
        {
            ClearAllIcons();
            base.OnClose();
        }

        private void LateUpdate()
        {
            if (_isDirty)
            {
                float duration = 0.5f;
                UpdateAllIconsPosition(duration);
                _isFirstUpdate = false;
                _isDirty = false;
            }
        }

        public void InitTimeline(List<MapUnit> units)
        {
            if (trackRect == null)
            {
                Debug.LogError("TimelinePanel: 缺少trackRect引用");
                return;
            }

            _trackWidth = trackRect.rect.width;
            _isFirstUpdate = true;
            ClearAllIcons();

            foreach (var unit in units)
            {
                if (unit != null)
                    AddUnit(unit);
            }

            _isDirty = true;
        }

        public void AddUnit(MapUnit unit)
        {
            if (unit == null || _activeIcons.ContainsKey(unit)) return;

            if (unit.Character?.characterData?.Icon == null)
            {
                Debug.LogWarning($"TimelinePanel: 单位 {unit.name} 缺少CharacterData或Icon");
                return;
            }

            unit.OnActionValueChanged += OnUnitActionValueChanged;

            GameObject iconObj = new GameObject($"TimelineIcon_{unit.name}");
            iconObj.transform.SetParent(trackRect, false);

            Image iconImage = iconObj.AddComponent<Image>();
            iconImage.sprite = unit.Character.characterData.Icon;
            iconImage.preserveAspect = true;

            RectTransform iconRect = iconObj.GetComponent<RectTransform>();
            iconRect.anchorMin = new Vector2(0, 0.5f);
            iconRect.anchorMax = new Vector2(0, 0.5f);
            iconRect.pivot = new Vector2(0, 0.5f);
            iconRect.sizeDelta = new Vector2(20f, 20f);
            iconRect.anchoredPosition = new Vector2(0, 0);

            TimelineIconUI iconUI = iconObj.AddComponent<TimelineIconUI>();
            iconUI.Initialize(unit);

            _activeIcons[unit] = iconUI;
        }

        public void RemoveUnit(MapUnit unit)
        {
            if (unit == null || !_activeIcons.TryGetValue(unit, out TimelineIconUI iconUI)) return;

            unit.OnActionValueChanged -= OnUnitActionValueChanged;

            if (iconUI != null)
                iconUI.FadeOutAndDestroy(0.5f);

            _activeIcons.Remove(unit);
        }

        private void OnUnitActionValueChanged(MapUnit unit)
        {
            _isDirty = true;
        }

        private void UpdateAllIconsPosition(float duration = 0.3f)
        {
            if (trackRect == null) return;

            _trackWidth = trackRect.rect.width;

            if (TurnManager.Instance == null) return;
            var actionQueue = TurnManager.Instance.ActionQueue;
            if (actionQueue == null || actionQueue.Count == 0) return;

            const float iconWidth = 20f;
            float usableWidth = _trackWidth - iconWidth;

            float maxAV = 1f;
            for (int i = 0; i < actionQueue.Count; i++)
            {
                if (actionQueue[i].CurrentActionValue > maxAV)
                    maxAV = actionQueue[i].CurrentActionValue;
            }

            float[] targetX = new float[actionQueue.Count];

            float lastPlacedX = usableWidth + iconWidth;
            HashSet<MapUnit>iconAlive = new(_activeIcons.Keys);
            for (int i = 0; i < actionQueue.Count; i++)
            {
                var unit = actionQueue[i];
                if (unit == null || !_activeIcons.ContainsKey(unit))continue;
                iconAlive.Remove(unit);
                float rawX = (1f - Mathf.Clamp01(unit.CurrentActionValue / maxAV)) * usableWidth;

                if (TurnManager.Instance.ActiveUnit == unit)
                    rawX = usableWidth;

                targetX[i] = Mathf.Min(rawX, lastPlacedX - iconWidth);
                lastPlacedX = targetX[i];
            }
            foreach(var unit in iconAlive)
            {
                RemoveUnit(unit);
            }
            float nextPlacedX = -iconWidth;

            for (int i = actionQueue.Count - 1; i >= 0; i--)
            {
                targetX[i] = Mathf.Max(targetX[i], 0f);
                targetX[i] = Mathf.Max(targetX[i], nextPlacedX + iconWidth);
                targetX[i] = Mathf.Min(targetX[i], usableWidth);
                nextPlacedX = targetX[i];
            }

            for (int i = 0; i < actionQueue.Count; i++)
            {
                var unit = actionQueue[i];
                if (unit == null || !_activeIcons.TryGetValue(unit, out TimelineIconUI icon)) continue;

                icon.MoveToTargetX(targetX[i], duration);
            }
        }

        public void ClearAllIcons()
        {
            foreach (var kvp in _activeIcons)
            {
                kvp.Key.OnActionValueChanged -= OnUnitActionValueChanged;
                if (kvp.Value != null)
                    kvp.Value.FadeOutAndDestroy(0.1f);
            }
            _activeIcons.Clear();
        }

        private void OnDestroy()
        {
            ClearAllIcons();
        }
    }
}
