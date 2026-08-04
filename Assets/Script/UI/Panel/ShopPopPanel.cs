using System.Collections.Generic;
using Managers;
using Map;
using UI.Slot;
using UnityEngine;
using UnityEngine.UI;
namespace UI.Panel
{
    [UIPanelResource("UI/Main/Shop/ShopPopPanel.prefab")]
    public class ShopPopPanel : BaseUIPanel
    {
        public Transform Content;
        public List<ShopItemSlot> itemSlots = new();
        public Button BuyButton;
        public Button ExitBtn;
        public GameObject ShopItemSlotPrefab;
        public void OnEnable()
        {
            ExitBtn.onClick.AddListener(() =>
            {
                Managers.UIManager.Instance.ClosePanel<ShopPopPanel>();
            });
            BuyButton.onClick.AddListener(() =>
            {
                var selectItem = itemSlots.Find(slot => slot.toggle.isOn);
                if (selectItem == null)
                {
                    return;
                }
                // 统一走 RunManager：扣款→保存→加入遗物收藏（含钱袋特例、失败退款）
                if (RunManager.Instance.PurchaseItem(selectItem.SlotData.itemId, selectItem.SlotData.price))
                {
                    selectItem.isLock = true;
                }
            });
        }
        public void Init(ShopNode node)
        {
            
            foreach(var item in node.itemSlots)
            {
                var shopItemSlot = Instantiate(ShopItemSlotPrefab,Content).GetComponent<ShopItemSlot>();
                shopItemSlot.Init(item,Content.gameObject);
                itemSlots.Add(shopItemSlot);
            }
        }
    }
}