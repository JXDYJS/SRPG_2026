using System;
using System.Collections.Generic;
using Core.Data;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using Managers;
using UnityEngine;
using UnityEngine.UI;
using Utils;
using UI.Slot;

namespace UI.Panel
{
    /// <summary>
    /// Item window: lists party-shared consumables (item = skill).
    /// Right-edge panel; slide/fade animations driven by BaseUIPanel
    /// PlayEnterAnimation/PlayExitAnimation, invoked by UIManager.Open/ClosePanel.
    /// GridLayoutGroup spacing is auto-computed like StatusPopWindow.initBuffStatus.
    /// </summary>
    [UIPanelResource("Assets/UI/Battle/ItemWindow.prefab")]
    public class ItemWindow : BaseUIPanel
    {
        public UnityEngine.UI.GridLayoutGroup ItemContent;
        public GameObject ItemSlotPrefab;
        public Button BgBtn;
        public int RowCount = 3;
        public float SlotSize = 100f;

        /// <summary>Stock query injected by the caller (RunManager); null means 0.</summary>
        public Func<string, int> stockGetter;

        protected override void Awake()
        {
            base.Awake();
            // Animations are driven by UIManager.Open/ClosePanel (Window layer plays slide).
        }

        /// <summary>Refreshes the window: shows only items with stock &gt; 0, auto-computes spacing, fills slots.</summary>
        public void init()
        {
            if (ItemContent == null || ItemSlotPrefab == null)
            {
                Debug.LogError("ItemWindow: missing ItemContent or ItemSlotPrefab reference");
                return;
            }

            // Only items in stock are shown; amounts are small, so instantiate all slots (no virtual list)
            List<string> itemIds = new List<string>();
            foreach (string itemId in Data.Table.ItemConfigs.Keys)
            {
                int stock = stockGetter != null ? stockGetter.Invoke(itemId) : 0;
                if (stock > 0)
                {
                    itemIds.Add(itemId);
                }
            }
            if (itemIds.Count == 0)
            {
                ClearContent();
                Debug.Log("[ItemWindow] No usable items");
                return;
            }

            // Auto-compute spacing (same logic as StatusPopWindow.initBuffStatus)
            int row = (itemIds.Count + RowCount - 1) / RowCount;
            float width = SlotSize * RowCount;
            var rect = ItemContent.gameObject.GetComponent<RectTransform>();
            if (rect.rect.width < width)
            {
                Debug.LogError($"ItemWindow: rect width < width, rect width: {rect.rect.width}, width: {width}");
                return;
            }
            float space = (rect.rect.width - width) / (RowCount - 1);
            ItemContent.cellSize = new Vector2(SlotSize, SlotSize);
            ItemContent.spacing = new Vector2(space, 0f);

            // Fill slots
            ClearContent();
            foreach (string itemId in itemIds)
            {
                if (!Data.Table.ItemConfigs.ContainsKey(itemId)) continue;

                GameObject slotObj = Instantiate(ItemSlotPrefab, ItemContent.transform);
                ItemSlot slot = slotObj.GetComponent<ItemSlot>();
                if (slot == null)
                {
                    Debug.LogError($"ItemWindow: ItemSlotPrefab missing ItemSlot component");
                    Destroy(slotObj);
                    continue;
                }
                int stock = stockGetter != null ? stockGetter.Invoke(itemId) : 0;
                slot.Init(itemId, stock);
            }
        }

        private void ClearContent()
        {
            for (int i = ItemContent.transform.childCount - 1; i >= 0; i--)
            {
                Destroy(ItemContent.transform.GetChild(i).gameObject);
            }
        }

        /// <summary>Background click pops back to the previous panel (ActionMenuPanel).</summary>
        public void OnEnable()
        {
            if (BgBtn == null)
            {
                var bg = PanelObject.transform.Find("Window/Content/BG/BG");
                if (bg != null)
                {
                    var img = bg.GetComponent<Image>();
                    if (img != null)
                    {
                        BgBtn = bg.gameObject.AddComponent<Button>();
                        BgBtn.targetGraphic = img;
                        BgBtn.transition = Selectable.Transition.None;
                    }
                }
            }
            if (BgBtn != null)
            {
                BgBtn.onClick.RemoveAllListeners();
                BgBtn.onClick.AddListener(() => BattleUIManager.Instance.PopPanel());
            }
        }

        // ============ Slide/fade animations (right-edge panel, driven by UIManager) ============

        /// <summary>Slides in from the right with fade (invoked by UIManager.OpenPanel, Window layer).</summary>
        public override async UniTask PlayEnterAnimation()
        {
            if (_rectTransform == null) return;
            _rectTransform.DOKill();

            float slide = GetSlideDistance();
            _rectTransform.anchoredPosition = _originalPosition + Vector2.right * slide;
            if (_canvasGroup != null) _canvasGroup.alpha = 0f;

            Sequence seq = DT.Append(
                _rectTransform.DOAnchorPos(_originalPosition, _animationDuration).SetEase(Ease.OutCubic));
            if (_canvasGroup != null)
            {
                seq.Join(_canvasGroup.DOFade(1f, _animationDuration));
            }
            await seq.AsyncWaitForCompletion();
        }

        /// <summary>Slides out to the right with fade (invoked by UIManager.ClosePanel, Window layer).</summary>
        public override async UniTask PlayExitAnimation()
        {
            if (_rectTransform == null) return;
            _rectTransform.DOKill();

            float slide = GetSlideDistance();
            Sequence seq = DT.Append(
                _rectTransform.DOAnchorPos(_originalPosition + Vector2.right * slide, _animationDuration).SetEase(Ease.InCubic));
            if (_canvasGroup != null)
            {
                seq.Join(_canvasGroup.DOFade(0f, _animationDuration));
            }
            await seq.AsyncWaitForCompletion();
        }

        /// <summary>Slide distance: parent (canvas) width so the panel fully enters from off-screen.</summary>
        private float GetSlideDistance()
        {
            RectTransform parent = _rectTransform.parent as RectTransform;
            float parentWidth = parent != null ? parent.rect.width : 0f;
            return parentWidth > 0f ? parentWidth : _slideDistance;
        }
    }
}
