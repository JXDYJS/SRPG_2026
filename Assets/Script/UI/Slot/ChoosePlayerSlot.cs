using System;
using Character.data;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Slot
{
    public enum SlotState
    {
        Available,
        Selected,
        Placed
    }

    public class ChoosePlayerSlot : MonoBehaviour
    {
        [Header("UI控件")]
        public Image PlayerImg;
        public GameObject normalLine;
        public GameObject SelectLine;
        public GameObject placedMask;
        public Button button;
        public TMPro.TextMeshProUGUI nameText;
        public TMPro.TextMeshProUGUI levelText;

        public CharacterData CharacterData { get; private set; }
        public int SlotIndex { get; private set; }
        public SlotState CurrentState { get; private set; }

        public Action<int> OnSlotClicked;

        public void Init(CharacterData data, int index)
        {
            CharacterData = data;
            SlotIndex = index;

            if (PlayerImg != null && data.Icon != null)
            {
                PlayerImg.sprite = data.Icon;
            }
            if (nameText != null)
            {
                nameText.text = data.CharacterName;
            }
            if (levelText != null)
            {
                levelText.text = $"Lv.{data.BaseMaxHP}";
            }

            SetState(SlotState.Available);
        }

        private void OnEnable()
        {
            if (button != null)
            {
                button.onClick.RemoveAllListeners();
                button.onClick.AddListener(() => OnSlotClicked?.Invoke(SlotIndex));
            }
        }

        public void SetState(SlotState state)
        {
            CurrentState = state;
            if (normalLine != null) normalLine.SetActive(state == SlotState.Available);
            if (SelectLine != null) SelectLine.SetActive(state == SlotState.Selected);
            if (placedMask != null) placedMask.SetActive(state == SlotState.Placed);
        }

        public void SetPlaced()
        {
            SetState(SlotState.Placed);
        }

        public void SetSelected()
        {
            SetState(SlotState.Selected);
        }

        public void SetAvailable()
        {
            SetState(SlotState.Available);
        }
    }
}
