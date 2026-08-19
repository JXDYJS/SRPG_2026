using System;
using System.Collections.Generic;
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

        /// <summary>
        /// Navigation history for the in-battle menu chain.
        /// Pure navigation helper; activation is handled by UIManager.Open/ClosePanel.
        /// </summary>
        private readonly Stack<Type> _navStack = new Stack<Type>();

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
        }

        public void ShowActionMenu(MapUnit unit)
        {
            _currentUnit = unit;
            _selectedSkill = null;
            ShowOnNav(typeof(ActionMenuPanel), () =>
            {
                var panel = UIManager.Instance.OpenPanel<ActionMenuPanel>();
                if (panel == null)
                {
                    Debug.LogError("BattleUIManager: 无法打开 ActionMenuPanel");
                    return;
                }
                panel.Initialize(unit);
            });
        }

        public void ShowSkillMenu(MapUnit unit)
        {
            ShowOnNav(typeof(SkillMenuPanel), () =>
            {
                var panel = UIManager.Instance.OpenPanel<SkillMenuPanel>();
                if (panel == null)
                {
                    Debug.LogError("BattleUIManager: 无法打开 SkillMenuPanel");
                    return;
                }
                panel.Initialize(unit);
            });
        }

        /// <summary>Opens the item window (party-shared stock); same nav pattern as the skill menu.</summary>
        public void ShowItemMenu(MapUnit unit)
        {
            _currentUnit = unit;
            _selectedSkill = null;
            ShowOnNav(typeof(ItemWindow), () =>
            {
                var panel = UIManager.Instance.OpenPanel<ItemWindow>();
                if (panel == null)
                {
                    Debug.LogError("BattleUIManager: 无法打开 ItemWindow");
                    return;
                }
                panel.stockGetter = itemId => RunManager.Instance != null ? RunManager.Instance.GetItemStock(itemId) : 0;
                panel.init();
            });
        }

        /// <summary>
        /// Pops nav entries until stack top equals <paramref name="target"/>.
        /// If target is already at the top (was hidden by a higher panel) the open action
        /// re-activates the cached panel via UIManager.OpenPanel&lt;T&gt;.
        /// </summary>
        private void ShowOnNav(Type target, Action openAction)
        {
            while (_navStack.Count > 0 && _navStack.Peek() != target)
            {
                var t = _navStack.Pop();
                UIManager.Instance.ClosePanel(t);
            }
            if (_navStack.Count > 0 && _navStack.Peek() == target)
            {
                openAction();
                return;
            }
            openAction();
            _navStack.Push(target);
        }

        public void PopPanel()
        {
            if (_navStack.Count == 0) return;
            var top = _navStack.Pop();
            UIManager.Instance.ClosePanel(top);
        }

        public void HideActionMenu()
        {
            while (_navStack.Count > 0)
            {
                var t = _navStack.Pop();
                UIManager.Instance.ClosePanel(t);
            }
        }

        public void ShowAttributePanel(MapUnit unit)
        {
            var panel = UIManager.Instance.OpenPanel<StatusPopWindow>();
            if (panel != null) panel.init(unit);
        }

        public void HideAttributePanel()
        {
            UIManager.Instance.ClosePanel<StatusPopWindow>();
        }

        public void OnSkillSelected(SkillDataSO skill)
        {
            _selectedSkill = skill;
            HideActionMenu();
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
