using UnityEngine;
using Map;
using GamePlay.Relics;
using Core.Data;
using UnityEngine.UI;

namespace UI.Slot
{
    public class ShopItemSlot : MonoBehaviour
    {
        public SimpleSlot leftSlot;
        public SimpleSlot rightSlot;
        public ShopSlotData SlotData;
        public Sprite NormalBG;
        public Sprite LockBG;
        public Sprite SelectBG;
        public Image BG;
        public Toggle toggle;

        private bool _isLock;
        public bool isLock
        {
            get => _isLock;
            set
            {
                _isLock = value;
                if (toggle != null) toggle.interactable = !_isLock;
                RefreshBG();
            }
        }

        private bool _isSelect;
        public bool isSelect
        {
            get => _isSelect;
            set
            {
                _isSelect = value;
                if (toggle != null && toggle.isOn != value)
                {
                    toggle.isOn = value;
                }
                RefreshBG();
            }
        }

        private void Awake()
        {
            if (toggle != null)
            {
                toggle.onValueChanged.AddListener(OnToggleChanged);
            }
        }

        public void OnEnable()
        {
            if (rightSlot != null)
            {
                rightSlot.text.gameObject.SetActive(false);
            }
        }

        private void OnToggleChanged(bool value)
        {
            _isSelect = value;
            RefreshBG();
        }

        private void RefreshBG()
        {
            if (BG == null) return;
            if (_isLock)
            {
                BG.sprite = LockBG;
            }
            else if (_isSelect)
            {
                BG.sprite = SelectBG;
            }
            else
            {
                BG.sprite = NormalBG;
            }
        }

        public void Init(ShopSlotData slotData)
        {
            this.SlotData = slotData;
            RelicBase relicBase = ScriptableObject.CreateInstance<RelicBase>();
            var relicConfig = Data.Table.RelicConfigs[slotData.itemId];
            relicBase.Price = slotData.price;
            relicBase.Rarity = relicConfig.rarity;
            relicBase.relicId = slotData.itemId;
            rightSlot.Init<RelicBase>(relicBase);
            leftSlot.text.text = $"{slotData.price}";
            RefreshBG();
        }
    }
}
