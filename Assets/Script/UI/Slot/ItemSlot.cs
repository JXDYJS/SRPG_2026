using Core.Data;
using GamePlay.Skill;
using Managers;
using UnityEngine;
using UnityEngine.UI;
using UI.Item;
using UI.Panel;

namespace UI.Slot
{
    /// <summary>Battle item slot: shows an item (name/icon/count); clicking casts the bound skill via the normal skill flow.</summary>
    public class ItemSlot : SimpleSlot
    {
        public Button btn;

        private string _itemId;

        /// <summary>Builds the descriptor from the config table directly (no ItemCatalog dependency).</summary>
        public void Init(string itemId, int count)
        {
            _itemId = itemId;

            Clear();
            if (!Data.Table.ItemConfigs.TryGetValue(itemId, out TableData.ItemConfig cfg))
            {
                Debug.LogError($"ItemSlot: unknown item '{itemId}'");
                return;
            }

            var desc = new ItemDescriptor
            {
                NameGetter = () => cfg.name,
                SubtextGetter = () => count > 0 ? $"x{count}" : string.Empty,
                TooltipGetter = () => cfg.desc,
                IconPath = cfg.iconPath,
            };
            base.Init(desc);
            SetupButton();
        }

        public override void Init(IItemDescriptor desc)
        {
            base.Init(desc);
            SetupButton();
        }

        private void SetupButton()
        {
            if (btn == null)
            {
                btn = GetComponent<Button>();
                if (btn == null)
                {
                    Debug.LogError($"ItemSlot: {name} missing Button component");
                    return;
                }
            }
            btn.onClick.RemoveAllListeners();
            btn.onClick.AddListener(onClick);
        }

        /// <summary>Routes to the item selection entry (records itemId for stock consumption, enters skill targeting).</summary>
        public void onClick()
        {
            if (string.IsNullOrEmpty(_itemId)) return;

            // UI stack is cleared by OnSkillSelected; stock is consumed after the cast finishes
            BattleUIManager.Instance.OnItemSelected(_itemId);
        }

        public override void OnDestroy()
        {
            base.OnDestroy();
            if (btn != null)
            {
                btn.onClick.RemoveAllListeners();
            }
        }
    }
}
