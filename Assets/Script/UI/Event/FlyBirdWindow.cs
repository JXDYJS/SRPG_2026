using System.Collections.Generic;
using Core.Data;
using Map;
using UI.Panel;
using UI.Slot;
using UnityEngine;
using UnityEngine.UI;
using Utils;
namespace UI.Panel
{
    [UIPanelResource("UI/Event/MiniGame/FlyBirdWindow")]
    public class FlyBirdWindow : BaseUIPanel, IEventPanel
    {
        public Transform BGContent;
        public RectMask2D Mask;
        public GameObject Obstacle;
        public RectTransform OBSContent;    // 障碍物父容器(与BG平级的Content子节点)
        public RectTransform birdRect;      // 鸟碰撞/位移节点(永不旋转)
        public RectTransform birdSprite;    // 鸟视觉节点(只旋转朝向)
        private HorizontalLayoutGroup BGLayout;
        private RectTransform _bgContentRect;
        private readonly List<FlyBirdObstacle> flyBirdObstacles = new();
        private GameObjectPool _obstaclePool;
        private float _lastGapCenter;

        private float _period;
        private float _scrollX;
        private float speed;
        private float _vy;
        private float _lastFlapTime = -10f;
        private bool _started;

        public void Init(EventNode node)
        {
        }
        protected override void Awake()
        {
            BGLayout = BGContent.GetComponent<HorizontalLayoutGroup>();
            _bgContentRect = BGContent as RectTransform;
            MeasurePeriod();
            speed = Data.Config.eventConfig.flyBirdData.speed;
            if (Obstacle != null && OBSContent != null)
            {
                _obstaclePool = new GameObjectPool(Obstacle, OBSContent, 4, 2);
            }
        }
        public void Update()
        {
            if (!_started) return;
            MoveBG();
            UpdateBird();
            UpdateObs();
            DeleteMaskObs();
            CreateObs();
        }

        /// <summary>全屏按钮点击：第一次点击开始游戏并起跳，之后点击=扇翅</summary>
        public void OnGameButtonClick()
        {
            if (!_started)
            {
                _started = true;
            }
            TryFlap();
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
        public void UpdateObs()
        {
            foreach(var obs in flyBirdObstacles)
            {
                var rect = obs.GetComponent<RectTransform>();
                rect.anchoredPosition = new Vector2(rect.anchoredPosition.x - Time.deltaTime * speed,rect.anchoredPosition.y);
            }
        }
        public void DeleteMaskObs()
        {
            //因为保证新出现的在队列的尾端 所以从0开始遍历到第一个在mask内的就可以退出
            for (int i = 0; i < flyBirdObstacles.Count; i++)
            {
                if (!flyBirdObstacles[i].IsFullyOffScreenLeft(GetMaskLeftWorldX()))
                    break;
                _obstaclePool.Return(flyBirdObstacles[i].gameObject);
                flyBirdObstacles.RemoveAt(i);
                i--;
            }
        }
        public void CreateObs()
        {
            if (_obstaclePool == null) return;
            //检查最后一个obs是否有边界 距离 屏幕边缘大于 设定距离
            if (flyBirdObstacles.Count > 0)
            {
                var last = flyBirdObstacles[flyBirdObstacles.Count - 1];
                float distanceToRight = GetMaskRightWorldX() - GetObsLeftWorldX(last);
                if (distanceToRight < Data.Config.eventConfig.flyBirdData.spacing) return;
            }

            //新生成的要设置锚点在content的屏幕外 也就是xmin = 1 xmax = 1 锚点x = 0 这样正好在外面
            GameObject go = _obstaclePool.Get();
            RectTransform rect = go.GetComponent<RectTransform>();
            rect.anchorMin = new Vector2(1f, 0f);
            rect.anchorMax = new Vector2(1f, 1f);
            rect.pivot = new Vector2(0f, 0.5f);   // 左边缘对齐右边界 → 完全在屏幕外
            rect.anchoredPosition = new Vector2(0f, 0f);

            EventConfigData.FlyBirdData cfg = Data.Config.eventConfig.flyBirdData;
            float gapCenter = NextGapCenter(cfg);
            float totalHeight = OBSContent.rect.height;
            float gapPercent = cfg.gapSize / totalHeight;
            float blowPercent = (gapCenter - cfg.gapSize * 0.5f) / totalHeight;

            FlyBirdObstacle obs = go.GetComponent<FlyBirdObstacle>();
            obs.Init(rect.rect.width, gapPercent, blowPercent, OnHitObs, OnThroughGap);
            flyBirdObstacles.Add(obs);
        }

        /// <summary>计算下一根管柱的洞中心Y（受 maxGapDelta 限制防必死局）</summary>
        private float NextGapCenter(EventConfigData.FlyBirdData cfg)
        {
            if (flyBirdObstacles.Count == 0)
            {
                _lastGapCenter = UnityEngine.Random.Range(cfg.gapCenterMin, cfg.gapCenterMax);
                return _lastGapCenter;
            }
            _lastGapCenter = Mathf.Clamp(
                _lastGapCenter + UnityEngine.Random.Range(-cfg.maxGapDelta, cfg.maxGapDelta),
                cfg.gapCenterMin, cfg.gapCenterMax);
            return _lastGapCenter;
        }

        private float GetMaskLeftWorldX()
        {
            Vector3[] corners = new Vector3[4];
            OBSContent.GetWorldCorners(corners);
            return corners[0].x;
        }
        private float GetMaskRightWorldX()
        {
            Vector3[] corners = new Vector3[4];
            OBSContent.GetWorldCorners(corners);
            return corners[2].x;
        }
        private float GetObsLeftWorldX(FlyBirdObstacle obs)
        {
            Vector3[] corners = new Vector3[4];
            obs.GetComponent<RectTransform>().GetWorldCorners(corners);
            return corners[0].x;
        }

        private void OnHitObs()
        {
            // TODO: 撞管结算
        }
        private void OnThroughGap()
        {
            // TODO: 计分
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

            IntegrateBird(cfg);
            RotateBird(cfg);
        }

        /// <summary>点击(按钮)累加上升速度，带连点间隔与上限</summary>
        private void TryFlap()
        {
            EventConfigData.FlyBirdData cfg = Data.Config.eventConfig.flyBirdData;
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