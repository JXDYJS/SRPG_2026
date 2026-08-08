using Core.Data;
using Map;
using UI.Panel;
using UnityEngine;
using UnityEngine.UI;
namespace UI.Event
{
    public class FlyBirdWindow : MonoBehaviour, IEventPanel
    {
        public Transform BGContent;
        public RectMask2D Mask;
        private HorizontalLayoutGroup BGLayout;
        private RectTransform _bgContentRect;
        private float _period;
        private float _scrollX;

        public void Init(EventNode node)
        {
        }
        public void Awake()
        {
            BGLayout = BGContent.GetComponent<HorizontalLayoutGroup>();
            _bgContentRect = BGContent as RectTransform;
            MeasurePeriod();
        }
        public void Update()
        {
            MoveBG();
        }
        public void MoveBG()
        {
            if (_bgContentRect == null || _period <= 0f) return;
            float speed = Data.Config.eventConfig.flyBirdData.speed;
            _scrollX = Mathf.Repeat(_scrollX + speed * Time.deltaTime, _period);
            var pos = _bgContentRect.anchoredPosition;
            pos.x = -_scrollX;
            _bgContentRect.anchoredPosition = pos;
        }

        /// <summary>
        /// 实测单张BG的周期宽度（含spacing），需在布局排版完成后调用
        /// </summary>
        private void MeasurePeriod()
        {
            if (BGContent == null || BGContent.childCount == 0) return;
            LayoutRebuilder.ForceRebuildLayoutImmediate(_bgContentRect);
            var first = (RectTransform)BGContent.GetChild(0);
            float spacing = BGLayout != null ? BGLayout.spacing : 0f;
            _period = first.rect.width + spacing;
        }
    }
}