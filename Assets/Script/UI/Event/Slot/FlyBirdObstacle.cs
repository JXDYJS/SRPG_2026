using System;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Slot
{
    public class FlyBirdObstacle : MonoBehaviour
    {
        public GameObject TopObs;
        public GameObject Gap;
        public GameObject BlowObs;

        private RectTransform _rect;
        private RectTransform _topRect;
        private RectTransform _gapRect;
        private RectTransform _blowRect;
        private float _totalHeight;
        private bool _scored;
        private Action _onHitObs;
        private Action _onThroughGap;

        private void OnEnable()
        {
            _rect = transform as RectTransform;
            _topRect = TopObs.GetComponent<RectTransform>();
            _gapRect = Gap.GetComponent<RectTransform>();
            _blowRect = BlowObs.GetComponent<RectTransform>();
        }

        /// <summary>
        /// 配置管柱。gap/下管道高度用百分比（相对管柱总高），二者之和 ≤ 1 即可正常分配，
        /// 超出 1 时自动按比例归一；TopObs 填满剩余空间（编辑器里配 flexibleHeight）。
        /// </summary>
        public void Init(float width, float gapHeightPercent, float blowObsHeightPercent,
            Action onHitObs, Action onThroughGap)
        {
            _onHitObs = onHitObs;
            _onThroughGap = onThroughGap;
            _scored = false;

            if (_rect == null) _rect = transform as RectTransform;
            _totalHeight = _rect.rect.height;
            _rect.sizeDelta = new Vector2(width, _rect.sizeDelta.y);

            gapHeightPercent = Mathf.Clamp01(gapHeightPercent);
            blowObsHeightPercent = Mathf.Clamp01(blowObsHeightPercent);
            float sum = gapHeightPercent + blowObsHeightPercent;
            if (sum > 1f)
            {
                gapHeightPercent /= sum;
                blowObsHeightPercent /= sum;
            }

            SetPreferredHeight(Gap, gapHeightPercent * _totalHeight);
            SetPreferredHeight(BlowObs, blowObsHeightPercent * _totalHeight);
            LayoutRebuilder.ForceRebuildLayoutImmediate(_rect);
        }

        private static void SetPreferredHeight(GameObject go, float height)
        {
            LayoutElement le = go.GetComponent<LayoutElement>();
            if (le == null) le = go.AddComponent<LayoutElement>();
            le.preferredHeight = height;
        }

        /// <summary>鸟与上/下管道任一相交即判定撞击</summary>
        public bool IsHit(RectTransform bird)
        {
            return Overlap(bird, _topRect) || Overlap(bird, _blowRect);
        }

        /// <summary>鸟完全越过洞口后计分，每根只计一次</summary>
        public bool TryScore(RectTransform bird)
        {
            if (_scored) return false;
            Vector3[] birdC = new Vector3[4], gapC = new Vector3[4];
            bird.GetWorldCorners(birdC);
            _gapRect.GetWorldCorners(gapC);
            if (birdC[0].x > gapC[2].x)
            {
                _scored = true;
                _onThroughGap?.Invoke();
                return true;
            }
            return false;
        }

        /// <summary>管柱完全移出 Mask 左侧（右上角 x &lt; maskLeftWorldX）</summary>
        public bool IsFullyOffScreenLeft(float maskLeftWorldX)
        {
            Vector3[] corners = new Vector3[4];
            _rect.GetWorldCorners(corners);
            return corners[2].x < maskLeftWorldX;
        }

        private static bool Overlap(RectTransform a, RectTransform b)
        {
            Vector3[] ca = new Vector3[4], cb = new Vector3[4];
            a.GetWorldCorners(ca);
            b.GetWorldCorners(cb);
            return ca[0].x < cb[2].x && ca[2].x > cb[0].x &&
                   ca[0].y < cb[2].y && ca[2].y > cb[0].y;
        }
    }
}
