using System;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using Managers;
using UI.Item;
using UI.Slot;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Panel
{
    /// <summary>One grantable battle reward; itemId follows ItemCatalog ("gold" / "r_*" / item id).</summary>
    [System.Serializable]
    public class RewardData
    {
        public string itemId;
        public int amount = 1;

        public RewardData()
        {
        }

        public RewardData(string itemId, int amount = 1)
        {
            this.itemId = itemId;
            this.amount = amount;
        }
    }

    /// <summary>Open payload carrying rewards plus a callback fired when all are claimed.</summary>
    public class RewardOpenContext
    {
        public List<RewardData> rewards;
        public Action onAllClaimed;
    }

    /// <summary>
    /// Battle victory reward claim window. Slots are laid out manually (no LayoutGroup)
    /// so claiming can run reflow animations:
    ///  1. the claimed slot shrinks and disappears;
    ///  2. every following slot slides left into its new cell;
    ///  3. a slot that crosses a row wrap slides out left (clipped by the content mask),
    ///     while a fresh copy enters from the right edge of the upper row.
    /// </summary>
    [UIPanelResource("Assets/UI/Battle/RewardWindow.prefab")]
    public class RewardWindow : BaseUIPanel
    {
        [Tooltip("奖励格子容器，需要挂 RectMask2D 用于裁剪滑出动画")]
        public RectTransform Content;
        public GameObject RewardSlotPrefab;
        public Button BgBtn;

        // Default grid config: 180px-wide content fits 3 slots of 50 with 15px auto spacing.
        private const int DEFAULT_ROW_COUNT = 3;
        private const float DEFAULT_SLOT_SIZE = 50f;

        public int RowCount = DEFAULT_ROW_COUNT;
        public float SlotSize = DEFAULT_SLOT_SIZE;
        public Vector2 Spacing = new Vector2(10f, 10f);

        /// <summary>Fired when every reward has been claimed (caller can return to the map).</summary>
        public event Action OnAllRewardsClaimed;

        private readonly List<RewardData> _rewards = new List<RewardData>();
        private readonly List<RewardSlot> _slots = new List<RewardSlot>();
        private bool _animating;
        private Action _externalOnAllClaimed;
        private float _spacingX = 10f;

        protected override void Awake()
        {
            base.Awake();
            if (Content != null)
            {
                Content.pivot = new Vector2(0f, 1f);
            }
        }

        public override void OnOpen(object data = null)
        {
            base.OnOpen(data);
            _externalOnAllClaimed = null;

            if (data is RewardOpenContext ctx)
            {
                _externalOnAllClaimed = ctx.onAllClaimed;
                SetRewards(ctx.rewards);
            }
            else if (data is List<RewardData> rewards)
            {
                SetRewards(rewards);
            }
        }

        /// <summary>Replaces the reward list and rebuilds all slots.</summary>
        public void SetRewards(List<RewardData> rewards)
        {
            _rewards.Clear();
            if (rewards != null)
            {
                _rewards.AddRange(rewards);
            }
            Rebuild();
        }

        private void Rebuild()
        {
            if (Content == null || RewardSlotPrefab == null)
            {
                Debug.LogError("RewardWindow: 缺少 Content 或 RewardSlotPrefab 引用（请在 Inspector 中拖入）");
                return;
            }

            AutoComputeSpacing();
            ClearContent();
            _slots.Clear();
            _animating = false;

            for (int i = 0; i < _rewards.Count; i++)
            {
                RewardSlot slot = CreateSlot(_rewards[i]);
                SetSlotPosition(slot, i);
                _slots.Add(slot);
            }
        }

        /// <summary>
        /// Spreads one row evenly across the content width (same idea as
        /// ItemWindow's auto spacing): space = (width - SlotSize*RowCount) / (RowCount-1).
        /// </summary>
        private void AutoComputeSpacing()
        {
            if (RowCount <= 1)
            {
                _spacingX = Spacing.x;
                return;
            }

            float neededWidth = SlotSize * RowCount;
            float contentWidth = Content.rect.width;
            if (contentWidth < neededWidth)
            {
                Debug.LogWarning($"RewardWindow: Content 宽度 {contentWidth} 小于所需 {neededWidth}，使用配置间距 {Spacing.x}");
                _spacingX = Spacing.x;
                return;
            }

            _spacingX = (contentWidth - neededWidth) / (RowCount - 1);
        }

        private RewardSlot CreateSlot(RewardData data)
        {
            GameObject slotObj = Instantiate(RewardSlotPrefab, Content);
            RewardSlot slot = slotObj.GetComponent<RewardSlot>();
            if (slot == null)
            {
                Debug.LogError("RewardWindow: RewardSlotPrefab missing RewardSlot component");
                Destroy(slotObj);
                return null;
            }

            IItemDescriptor desc = ItemView.ResolveByID(data.itemId);
            if (desc == null)
            {
                Debug.LogWarning($"RewardWindow: unknown reward id '{data.itemId}'");
            }
            slot.Init(desc, data.amount, OnSlotClaimed);
            return slot;
        }

        private void SetSlotPosition(RewardSlot slot, int index)
        {
            if (slot == null)
            {
                return;
            }

            RectTransform rt = (RectTransform)slot.transform;
            rt.anchorMin = new Vector2(0f, 1f);
            rt.anchorMax = new Vector2(0f, 1f);
            rt.pivot = new Vector2(0f, 1f);
            rt.sizeDelta = new Vector2(SlotSize, SlotSize);
            rt.anchoredPosition = LayoutPos(index);
        }

        private Vector2 LayoutPos(int index)
        {
            int col = index % RowCount;
            int row = index / RowCount;
            return new Vector2(col * (SlotSize + _spacingX), -row * (SlotSize + Spacing.y));
        }

        // ================ Claim flow ================

        private async void OnSlotClaimed(RewardSlot slot)
        {
            if (_animating || slot == null)
            {
                return;
            }

            int index = _slots.IndexOf(slot);
            if (index < 0)
            {
                return;
            }

            _animating = true;
            SetAllInteractable(false);

            // Grant the reward first (gold / relic / item routed by RunManager).
            RewardData data = _rewards[index];
            if (RunManager.Instance != null)
            {
                RunManager.Instance.GiveItem(data.itemId, data.amount);
            }

            // Claimed slot shrinks and disappears.
            await slot.ShrinkAndHide();
            _rewards.RemoveAt(index);
            _slots.RemoveAt(index);
            Destroy(slot.gameObject);

            // Everyone after it reflows one cell left; row wraps get the slide-out/copy-in treatment.
            List<UniTask> reflowTasks = new List<UniTask>();
            for (int i = index; i < _slots.Count; i++)
            {
                RewardSlot s = _slots[i];
                int oldRow = (i + 1) / RowCount;
                int newRow = i / RowCount;
                Vector2 target = LayoutPos(i);

                if (newRow < oldRow)
                {
                    reflowTasks.Add(SlideOutAndReplace(s, _rewards[i], target, i));
                }
                else
                {
                    reflowTasks.Add(s.MoveTo(target));
                }
            }

            if (reflowTasks.Count > 0)
            {
                await UniTask.WhenAll(reflowTasks);
            }

            _animating = false;
            SetAllInteractable(true);

            if (_slots.Count == 0)
            {
                OnAllRewardsClaimed?.Invoke();
                Action external = _externalOnAllClaimed;
                _externalOnAllClaimed = null;
                if (BattleUIManager.Instance != null)
                {
                    BattleUIManager.Instance.PopPanel();
                }
                external?.Invoke();
            }
        }

        /// <summary>
        /// Row-wrap reflow: the old slot slides out left (clipped by the mask) and is
        /// destroyed, while a fresh copy spawns at the right edge of the upper row and
        /// slides left into the wrapped cell.
        /// </summary>
        private async UniTask SlideOutAndReplace(RewardSlot oldSlot, RewardData data, Vector2 target, int listIndex)
        {
            RectTransform oldRt = (RectTransform)oldSlot.transform;
            float slideOut = SlotSize + 20f;
            var slideTask = oldRt.DOAnchorPos(oldRt.anchoredPosition + Vector2.left * slideOut, 0.25f)
                .SetEase(Ease.InCubic)
                .AsyncWaitForCompletion();

            // Spawn the replacement outside the right edge of the target row.
            Vector2 entryPos = new Vector2(RowCount * (SlotSize + _spacingX), target.y);
            RewardSlot newSlot = CreateSlot(data);
            if (newSlot == null)
            {
                await slideTask;
                Destroy(oldSlot.gameObject);
                return;
            }

            SetSlotPosition(newSlot, listIndex);
            ((RectTransform)newSlot.transform).anchoredPosition = entryPos;
            newSlot.SetInteractable(false);
            _slots[listIndex] = newSlot;

            var slideInTask = ((RectTransform)newSlot.transform)
                .DOAnchorPos(target, 0.25f)
                .SetEase(Ease.OutCubic)
                .AsyncWaitForCompletion();

            await System.Threading.Tasks.Task.WhenAll(slideTask, slideInTask);
            Destroy(oldSlot.gameObject);
        }

        private void SetAllInteractable(bool interactable)
        {
            foreach (RewardSlot slot in _slots)
            {
                if (slot != null)
                {
                    slot.SetInteractable(interactable);
                }
            }
        }

        private void ClearContent()
        {
            if (Content == null)
            {
                return;
            }

            for (int i = Content.childCount - 1; i >= 0; i--)
            {
                Destroy(Content.GetChild(i).gameObject);
            }
        }

        // ================ Background close (same structure as ItemWindow) ================

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
    }
}
