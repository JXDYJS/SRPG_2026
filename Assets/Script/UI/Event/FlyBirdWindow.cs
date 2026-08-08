using System.Collections.Generic;
using Core.Data;
using Map;
using UI.Panel;
using UI.Slot;
using UnityEngine;
using UnityEngine.UI;
namespace UI.Panel
{
    [UIPanelResource("UI/Event/MiniGame/FlyBirdWindow")]
    public class FlyBirdWindow : BaseUIPanel, IEventPanel
    {
        public Transform BGContent;
        public RectMask2D Mask;
        public GameObject Obstacle;
        public RectTransform birdRect;      // 鸟碰撞/位移节点(永不旋转)
        public RectTransform birdSprite;    // 鸟视觉节点(只旋转朝向)
        private HorizontalLayoutGroup BGLayout;
        private RectTransform _bgContentRect;
        private List<FlyBirdObstacle> flyBirdObstacles;

        private float _period;
        private float _scrollX;
        private float speed;
        private float _vy;
        private float _lastFlapTime = -10f;

        public void Init(EventNode node)
        {
        }
        protected override void Awake()
        {
            BGLayout = BGContent.GetComponent<HorizontalLayoutGroup>();
            _bgContentRect = BGContent as RectTransform;
            MeasurePeriod();
            speed = Data.Config.eventConfig.flyBirdData.speed;
        }
        public void Update()
        {
            MoveBG();
            UpdateBird();
        }
        public void SpeedUp()
        {
            speed += Time.deltaTime * Data.Config.eventConfig.flyBirdData.speedUpRate;
        }
        public void MoveBG()
        {
            if (_bgContentRect == null || _period <= 0f) return;
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

        // ==================== 鸟物理(半隐式欧拉) ====================

        /// <summary>
        /// 每帧：先速度后位置。点击(鼠标/空格)累加上升速度，带连点间隔与上限，
        /// 重力每帧累加，终端下落限速。birdSprite 按 vy 平滑旋转，birdRect 永不旋转。
        /// </summary>
        private void UpdateBird()
        {
            if (birdRect == null) return;
            EventConfigData.FlyBirdData cfg = Data.Config.eventConfig.flyBirdData;

            TryFlap(cfg);
            IntegrateBird(cfg);
            RotateBird(cfg);
        }

        private void TryFlap(EventConfigData.FlyBirdData cfg)
        {
            bool pressed = Input.GetMouseButtonDown(0) || Input.GetKeyDown(KeyCode.Space);
            if (!pressed) return;
            if (Time.time - _lastFlapTime < cfg.clickInterval) return;
            _lastFlapTime = Time.time;
            _vy = Mathf.Min(_vy + cfg.flapVel, cfg.maxClimbSpeed);
        }

        private void IntegrateBird(EventConfigData.FlyBirdData cfg)
        {
            _vy -= cfg.gravity * Time.deltaTime;
            _vy = Mathf.Max(_vy, cfg.maxFallSpeed);

            Vector2 pos = birdRect.anchoredPosition;
            pos.y += _vy * Time.deltaTime;
            birdRect.anchoredPosition = pos;
        }

        private void RotateBird(EventConfigData.FlyBirdData cfg)
        {
            if (birdSprite == null) return;
            float target = Mathf.Clamp(_vy * cfg.angleScale, cfg.minAngle, cfg.maxAngle);
            float cur = birdSprite.eulerAngles.z;
            float next = Mathf.LerpAngle(cur, target, cfg.rotSpeed * Time.deltaTime);
            birdSprite.localRotation = Quaternion.Euler(0f, 0f, next);
        }
    }
}