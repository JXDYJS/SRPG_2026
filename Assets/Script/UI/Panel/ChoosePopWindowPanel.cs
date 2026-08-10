using System;
using System.Collections.Generic;
using Character.data;
using UI.Panel;
using UI.Slot;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Panel
{
    [UIPanelResource("Assets/UI/Battle/ChoosePopWindow.prefab")]
    public class ChoosePopWindowPanel : BaseUIPanel
    {
        [Header("布局")]
        public GameObject ChoosePerfab;
        public Transform content;
        public Button startButton;
        public TMPro.TextMeshProUGUI infoText;

        public Action<int> OnCharacterClicked;
        public Action OnStartClicked;

        private List<ChoosePlayerSlot> _slots = new List<ChoosePlayerSlot>();
        private int _selectedIndex = -1;

        public override void OnOpen(object data = null)
        {
            base.OnOpen(data);

            ClearAllContentChildren();

            if (startButton != null)
            {
                startButton.onClick.RemoveAllListeners();
                startButton.onClick.AddListener(() => OnStartClicked?.Invoke());
                startButton.interactable = false;
            }
            if (infoText != null)
            {
                infoText.text = "选择角色后点击战场部署";
            }
        }

        public void Initialize(List<CharacterData> characters)
        {
            if (ChoosePerfab == null)
            {
                Debug.LogError("[ChoosePopWindowPanel] ChoosePerfab 未赋值，无法创建角色卡片");
                return;
            }
            if (content == null)
            {
                Debug.LogError("[ChoosePopWindowPanel] content Transform 未赋值");
                return;
            }

            ClearSlots();

            Debug.Log($"[ChoosePopWindowPanel] Initialize: creating {characters.Count} character slots");
            for (int i = 0; i < characters.Count; i++)
            {
                var characterData = characters[i];
                if (characterData == null) continue;

                GameObject slotObj = Instantiate(ChoosePerfab, content);
                var slot = slotObj.GetComponent<ChoosePlayerSlot>();
                if (slot == null)
                {
                    slot = slotObj.AddComponent<ChoosePlayerSlot>();
                }

                slot.Init(characterData, i);

                int index = i;
                slot.OnSlotClicked = (idx) =>
                {
                    OnSlotClickedInternal(idx);
                    OnCharacterClicked?.Invoke(idx);
                };

                _slots.Add(slot);
            }
        }

        private void OnSlotClickedInternal(int index)
        {
            if (index < 0 || index >= _slots.Count) return;

            var clickedSlot = _slots[index];

            if (clickedSlot.CurrentState == SlotState.Placed)
            {
                OnCharacterClicked?.Invoke(index);
                return;
            }

            if (_selectedIndex >= 0 && _selectedIndex < _slots.Count && _selectedIndex != index)
            {
                var prevSlot = _slots[_selectedIndex];
                if (prevSlot.CurrentState == SlotState.Selected)
                {
                    prevSlot.SetAvailable();
                }
            }

            if (clickedSlot.CurrentState == SlotState.Available)
            {
                clickedSlot.SetSelected();
                _selectedIndex = index;
            }
            else if (clickedSlot.CurrentState == SlotState.Selected)
            {
                clickedSlot.SetAvailable();
                _selectedIndex = -1;
            }
        }

        public void MarkSlotPlaced(int index)
        {
            if (index < 0 || index >= _slots.Count) return;
            _slots[index].SetPlaced();
            if (_selectedIndex == index)
            {
                _selectedIndex = -1;
            }
        }

        public void MarkSlotAvailable(int index)
        {
            if (index < 0 || index >= _slots.Count) return;
            _slots[index].SetAvailable();
        }

        public void SetStartButtonEnabled(bool enabled)
        {
            if (startButton != null)
            {
                startButton.interactable = enabled;
            }
            if (infoText != null)
            {
                infoText.text = enabled ? "就绪，点击开始战斗" : "选择角色后点击战场部署";
            }
        }

        private void ClearAllContentChildren()
        {
            if (content == null) return;

            for (int i = content.childCount - 1; i >= 0; i--)
            {
                Transform child = content.GetChild(i);
                if (startButton != null && child.gameObject == startButton.gameObject) continue;
                Destroy(child.gameObject);
            }
        }

        private void ClearSlots()
        {
            _slots.Clear();
            _selectedIndex = -1;
            ClearAllContentChildren();
        }

        public override void OnClose()
        {
            base.OnClose();
            ClearSlots();
            _selectedIndex = -1;
        }
    }
}
