using System.Collections.Generic;
using Core.Data;
using Managers;
using Map;
using TMPro;
using UI.Panel;
using UI.Slot;
using UnityEngine;
using UnityEngine.UI;
using Utils;
namespace UI.Panel
{
    [UIPanelResource("Assets/UI/Event/MiniGame/FlyBirdWindow.prefab")]
    public class FlyBirdWindow : BaseUIPanel, IEventPanel
    {
        public Transform BGContent;
        public RectMask2D Mask;
        public GameObject Obstacle;
        public RectTransform OBSContent;
        public RectTransform birdRect;
        public RectTransform birdSprite;
        public TextMeshProUGUI ResultText;
        public TextMeshProUGUI ScoreText;
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
        private bool _gameOver;
        private int _score;

        public void Init(EventNode node)
        {
            _started = false;
            _gameOver = false;
            _score = 0;
            _vy = 0f;
            _lastFlapTime = -10f;
            if (ResultText != null) ResultText.gameObject.SetActive(false);
            RefreshScoreText();
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
            if (!_started || _gameOver) return;
            MoveBG();
            UpdateBird();
            UpdateObs();
            DeleteMaskObs();
            CreateObs();
            CheckCollision();
            CheckOutOfBounds();
        }

        /// <summary>Fullscreen click: start+flap if not started, flap mid-game, finish when game over.</summary>
        public void OnGameButtonClick()
        {
            if (_gameOver)
            {
                FinishGame();
                return;
            }
            if (!_started)
            {
                _started = true;
            }
            TryFlap();
        }
        public void FinishGame()
        {
            Utils.Utils.FinishNode<FlyBirdWindow>();
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
            if (flyBirdObstacles.Count > 0)
            {
                var last = flyBirdObstacles[flyBirdObstacles.Count - 1];
                float distanceToRight = GetMaskRightWorldX() - GetObsLeftWorldX(last);
                if (distanceToRight < Data.Config.eventConfig.flyBirdData.spacing) return;
            }

            GameObject go = _obstaclePool.Get();
            RectTransform rect = go.GetComponent<RectTransform>();
            rect.anchorMin = new Vector2(1f, 0f);
            rect.anchorMax = new Vector2(1f, 1f);
            rect.pivot = new Vector2(0f, 0.5f);
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

        /// <summary>Next pipe gap center Y; random walk with reflecting bounds.</summary>
        private float NextGapCenter(EventConfigData.FlyBirdData cfg)
        {
            if (flyBirdObstacles.Count == 0)
            {
                _lastGapCenter = UnityEngine.Random.Range(cfg.gapCenterMin, cfg.gapCenterMax);
                return _lastGapCenter;
            }
            float next = _lastGapCenter + UnityEngine.Random.Range(-cfg.maxGapDelta, cfg.maxGapDelta);
            if (next < cfg.gapCenterMin)
                next = cfg.gapCenterMin + (cfg.gapCenterMin - next);
            else if (next > cfg.gapCenterMax)
                next = cfg.gapCenterMax - (next - cfg.gapCenterMax);
            _lastGapCenter = Mathf.Clamp(next, cfg.gapCenterMin, cfg.gapCenterMax);
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
            GameOver();
        }
        private void OnThroughGap()
        {
            _score++;
            RefreshScoreText();
        }


        private void CheckCollision()
        {
            foreach (var obs in flyBirdObstacles)
            {
                if (obs.IsHit(birdRect))
                {
                    OnHitObs();
                    return;
                }
                obs.TryScore(birdRect);
            }
        }

        private void CheckOutOfBounds()
        {
            Vector3[] birdC = new Vector3[4];
            birdRect.GetWorldCorners(birdC);
            Vector3[] maskC = new Vector3[4];
            OBSContent.GetWorldCorners(maskC);
            float birdTop = birdC[2].y;
            float birdBottom = birdC[0].y;
            float maskTop = maskC[2].y;
            float maskBottom = maskC[0].y;
            if (birdTop < maskBottom || birdBottom > maskTop)
            {
                GameOver();
            }
        }

        private void GameOver()
        {
            if (_gameOver) return;
            _gameOver = true;

            int gold = _score * 10;
            if (RunManager.Instance != null)
            {
                RunManager.Instance.AddGold(gold);
            }

            if (ResultText != null)
            {
                ResultText.gameObject.SetActive(true);
                ResultText.text = string.Format("You get {0,5} gold", gold);
            }
        }

        private void RefreshScoreText()
        {
            if (ScoreText != null)
            {
                ScoreText.text = string.Format("Score: {0,4}", _score);
            }
        }

        /// <summary>Measured period width of one BG tile (incl. spacing); call after layout rebuild.</summary>
        private void MeasurePeriod()
        {
            if (BGContent == null || BGContent.childCount == 0) return;
            LayoutRebuilder.ForceRebuildLayoutImmediate(_bgContentRect);
            var first = (RectTransform)BGContent.GetChild(0);
            float spacing = BGLayout != null ? BGLayout.spacing : 0f;
            _period = first.rect.width + spacing;
        }


        /// <summary>Per-frame bird update: integrate velocity, then rotate sprite.</summary>
        private void UpdateBird()
        {
            if (birdRect == null) return;
            EventConfigData.FlyBirdData cfg = Data.Config.eventConfig.flyBirdData;

            IntegrateBird(cfg);
            RotateBird(cfg);
        }

        /// <summary>Flap: sets upward velocity directly (classic Flappy feel, no stacking on rapid clicks).</summary>
        private void TryFlap()
        {
            EventConfigData.FlyBirdData cfg = Data.Config.eventConfig.flyBirdData;
            if (Time.time - _lastFlapTime < cfg.clickInterval) return;
            _lastFlapTime = Time.time;
            _vy = cfg.flapVel;
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
