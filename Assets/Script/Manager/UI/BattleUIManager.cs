using UnityEngine;
using GamePlay.Units;
using GamePlay.Skill;
using UI.Panel;
using Cysharp.Threading.Tasks;

namespace Managers
{
    public class BattleUIManager : MonoBehaviour
    {
        public static BattleUIManager Instance;

        private UIStack _uiStack;
        private MapUnit _currentUnit;
        private SkillDataSO _selectedSkill;
        private string _pendingItemId;

        public SkillDataSO SelectedSkill => _selectedSkill;
        public MapUnit CurrentUnit => _currentUnit;

        /// <summary>Item id awaiting cast (consumed after the cast finishes); null for normal skills.</summary>
        public string PendingItemId => _pendingItemId;

        void Awake()
        {
            Instance = this;
            _uiStack = new UIStack();
        }

        public void ShowActionMenu(MapUnit unit)
        {
            _currentUnit = unit;
            _selectedSkill = null;

            var panel = UIManager.Instance.OpenPanel<ActionMenuPanel>();
            if (panel == null)
            {
                Debug.LogError("BattleUIManager: 无法打开 ActionMenuPanel");
                return;
            }

            panel.Initialize(unit);
            if (_uiStack.Count == 0 || _uiStack.Current.GetType() != typeof(ActionMenuPanel))
            {
                _uiStack.Push(panel).Forget();
            }
        }

        public void HideActionMenu()
        {
            _uiStack.Clear();
            UIManager.Instance.ClosePanel<ActionMenuPanel>();
        }

        public void ShowSkillMenu(MapUnit unit)
        {
            var panel = UIManager.Instance.OpenPanel<SkillMenuPanel>();
            if (panel == null)
            {
                Debug.LogError("BattleUIManager: 无法打开 SkillMenuPanel");
                return;
            }

            panel.Initialize(unit);
            if (_uiStack.Count == 0 || _uiStack.Current.GetType() != typeof(SkillMenuPanel))
            {
                _uiStack.Push(panel).Forget();
            }
        }

        /// <summary>Opens the item window (party-shared stock) via UIStack, same as the skill menu.</summary>
        public void ShowItemMenu(MapUnit unit)
        {
            _currentUnit = unit;
            _selectedSkill = null;

            var panel = UIManager.Instance.OpenPanel<ItemWindow>();
            if (panel == null)
            {
                Debug.LogError("BattleUIManager: 无法打开 ItemWindow");
                return;
            }

            // Stock query from the party-shared RunManager stock
            panel.stockGetter = itemId => RunManager.Instance != null ? RunManager.Instance.GetItemStock(itemId) : 0;
            panel.init();

            // UIStack.Push hides the current panel (ActionMenuPanel) before sliding the item window in
            if (_uiStack.Count == 0 || _uiStack.Current.GetType() != typeof(ItemWindow))
            {
                _uiStack.Push(panel).Forget();
            }
        }

        public async void PopPanel()
        {
            await _uiStack.Pop();
        }

        public void ShowAttributePanel(MapUnit unit)
        {
            var panel = UIManager.Instance.OpenPanel<StatusPopWindow>();
            if (panel != null)
                panel.init(unit);
        }

        public void HideAttributePanel()
        {
            UIManager.Instance.ClosePanel<StatusPopWindow>();
        }

        public void OnSkillSelected(SkillDataSO skill)
        {
            _selectedSkill = skill;
            _uiStack.Clear();
            UIManager.Instance.ClosePanel<ActionMenuPanel>();
            UIManager.Instance.ClosePanel<SkillMenuPanel>();

            GamePlay.Control.BattleInputController.Instance.StartSkillTargeting(skill);
        }

        /// <summary>
        /// Item selection entry: records the itemId (consumed after the cast),
        /// loads the bound SkillDataSO (cloned) and enters skill targeting via the normal flow.
        /// </summary>
        public void OnItemSelected(string itemId)
        {
            if (string.IsNullOrEmpty(itemId)) return;
            if (!Core.Data.Data.Table.ItemConfigs.TryGetValue(itemId, out Core.Data.TableData.ItemConfig cfg))
            {
                Debug.LogError($"BattleUIManager: unknown item '{itemId}'");
                return;
            }

            SkillDataSO skill = UnityEngine.Resources.Load<SkillDataSO>(cfg.skillPath);
            if (skill == null)
            {
                Debug.LogError($"BattleUIManager: failed to load skill '{cfg.skillPath}' for item '{itemId}'");
                return;
            }

            _pendingItemId = itemId;
            OnSkillSelected(skill.DeepClone());
        }

        /// <summary>Clears the pending item id (after the cast command is created / on cancel).</summary>
        public void ClearPendingItem()
        {
            _pendingItemId = null;
        }
    }
}
