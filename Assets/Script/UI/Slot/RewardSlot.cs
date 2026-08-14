using System;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using TMPro;
using UI.Item;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Slot
{
    /// <summary>
    /// Clickable reward slot. Renders a reward descriptor via SimpleSlot and
    /// fires the claim callback when clicked. Also hosts the claim/slide
    /// animation helpers used by RewardWindow.
    /// </summary>
    public class RewardSlot : SimpleSlot
    {
        public Button btn;

        /// <summary>Binds the slot to a reward; count &gt; 1 renders as "Name ×N".</summary>
        public void Init(IItemDescriptor desc, int count, Action<RewardSlot> onClaimed)
        {
            base.Init(desc);

            if (text != null)
            {
                string name = desc != null ? desc.Name : string.Empty;
                text.text = count > 1 ? $"{name} ×{count}" : name;
            }

            if (btn != null)
            {
                btn.onClick.RemoveAllListeners();
                btn.onClick.AddListener(() => onClaimed?.Invoke(this));
            }
        }

        public void SetInteractable(bool interactable)
        {
            if (btn != null)
            {
                btn.interactable = interactable;
            }
        }

        /// <summary>Scales the slot to zero with fade; used for the claimed slot.</summary>
        public async UniTask ShrinkAndHide()
        {
            if (this == null)
            {
                return;
            }

            transform.DOKill();
            CanvasGroup cg = GetComponent<CanvasGroup>();
            if (cg == null)
            {
                cg = gameObject.AddComponent<CanvasGroup>();
            }

            Sequence seq = DOTween.Sequence();
            seq.Join(transform.DOScale(0f, 0.2f).SetEase(Ease.InBack));
            seq.Join(cg.DOFade(0f, 0.2f));
            await seq.AsyncWaitForCompletion();
        }

        /// <summary>Slides the slot left by distance; clipped by the content mask.</summary>
        public async UniTask SlideOutLeft(float distance)
        {
            if (this == null)
            {
                return;
            }

            transform.DOKill();
            RectTransform rt = (RectTransform)transform;
            await rt.DOAnchorPos(rt.anchoredPosition + Vector2.left * distance, 0.25f)
                    .SetEase(Ease.InCubic)
                    .AsyncWaitForCompletion();
        }

        /// <summary>Moves to an anchored position; used for in-row reflow.</summary>
        public async UniTask MoveTo(Vector2 target)
        {
            if (this == null)
            {
                return;
            }

            transform.DOKill();
            RectTransform rt = (RectTransform)transform;
            await rt.DOAnchorPos(target, 0.25f)
                    .SetEase(Ease.OutCubic)
                    .AsyncWaitForCompletion();
        }
    }
}
