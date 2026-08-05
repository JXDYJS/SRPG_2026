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

        protected override void Awake()
        {
            base.Awake();
            ExitBtn.onClick.AddListener(OnExitClick);
            BuyButton.onClick.AddListener(OnBuyClick);
        }

        private void OnBuyClick()
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
        }

        private void OnExitClick()
        {
            // 参照战斗结算 EndLevel：关店→重开地图→锁定商店节点并解锁下一层连接
            UIManager.Instance.ClosePanel<ShopPopPanel>();
            var mapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            if (mapPopWindow != null)
            {
                mapPopWindow.NextLevel();
            }
        }

        public void Init(ShopNode node)
        {
            ClearItems();
            if (node.itemSlots == null)
            {
                return;
            }
            foreach (var item in node.itemSlots)
            {
                var shopItemSlot = Instantiate(ShopItemSlotPrefab, Content).GetComponent<ShopItemSlot>();
                shopItemSlot.Init(item, Content.gameObject);
                itemSlots.Add(shopItemSlot);
            }
        }

        /// <summary>清空上次打开的商品槽位，避免缓存面板重复累加</summary>
        private void ClearItems()
        {
            foreach (var slot in itemSlots)
            {
                if (slot != null && slot.gameObject != null)
                {
                    Destroy(slot.gameObject);
                }
            }
            itemSlots.Clear();
        }
    }
}
