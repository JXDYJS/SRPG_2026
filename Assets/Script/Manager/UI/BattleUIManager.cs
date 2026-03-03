//CREATE BY GEMINI
using UnityEngine;
using GamePlay.unit;
using GamePlay.Skill;
using UI.Panel;
using Cysharp.Threading.Tasks;

namespace Managers
{
    public class BattleUIManager : MonoBehaviour
    {
        public static BattleUIManager Instance;

        [Header("面板引用")]
        [SerializeField] private ActionMenuPanel _actionMenuPanel;
        [SerializeField] private SkillMenuPanel _skillMenuPanel;

        [Header("旧版兼容引用（可删除）")]
        [SerializeField] private GameObject actionMenuPanel;
        [SerializeField] private UnityEngine.UI.Button moveButton;
        [SerializeField] private UnityEngine.UI.Button attackButton;
        [SerializeField] private UnityEngine.UI.Button waitButton;

        private UIStack _uiStack;
        private MapUnit _currentUnit;
        private SkillDataSO _selectedSkill;

        public SkillDataSO SelectedSkill => _selectedSkill;
        public MapUnit CurrentUnit => _currentUnit;

        void Awake()
        {
            Instance = this;
            _uiStack = new UIStack();

            if (actionMenuPanel != null)
                actionMenuPanel.SetActive(false);

            if (_actionMenuPanel != null)
                _actionMenuPanel.PanelObject.SetActive(false);

            if (_skillMenuPanel != null)
                _skillMenuPanel.PanelObject.SetActive(false);
        }

        public void ShowActionMenu(MapUnit unit)
        {
            _currentUnit = unit;
            _selectedSkill = null;

            if (_actionMenuPanel != null)
            {
                _actionMenuPanel.Initialize(unit);
                // 检查栈顶是否已经是ActionMenu，如果是则不重复推入
                if (_uiStack.Count == 0 || _uiStack.Current.GetType() != typeof(ActionMenuPanel))
                {
                    _uiStack.Push(_actionMenuPanel).Forget();
                }
            }
            else
            {
                if (actionMenuPanel != null)
                {
                    UpdateButtonStates();
                    actionMenuPanel.SetActive(true);
                }
            }
        }

        public void HideActionMenu()
        {
            _uiStack.Clear();

            if (actionMenuPanel != null)
                actionMenuPanel.SetActive(false);
        }

        public void ShowSkillMenu(MapUnit unit)
        {
            if (_skillMenuPanel == null)
            {
                Debug.LogError("BattleUIManager: SkillMenuPanel 未配置");
                return;
            }

            _skillMenuPanel.Initialize(unit);
            // 检查栈顶是否已经是SkillMenu，如果是则不重复推入
            if (_uiStack.Count == 0 || _uiStack.Current.GetType() != typeof(SkillMenuPanel))
            {
                _uiStack.Push(_skillMenuPanel).Forget();
            }
        }

        public async void PopPanel()
        {
            Debug.Log($"BattleUIManager: PopPanel called, stack count: {_uiStack.Count}");
            await _uiStack.Pop();
            Debug.Log($"BattleUIManager: PopPanel completed, stack count: {_uiStack.Count}");
        }

        public void OnSkillSelected(SkillDataSO skill)
        {
            _selectedSkill = skill;
            _uiStack.Clear();

            if (_actionMenuPanel != null)
                _actionMenuPanel.PanelObject.SetActive(false);
            if (_skillMenuPanel != null)
                _skillMenuPanel.PanelObject.SetActive(false);

            GamePlay.Control.BattleInputController.Instance.StartSkillTargeting(skill);
        }

        private void UpdateButtonStates()
        {
            if (_currentUnit == null) return;

            if (moveButton != null)
                moveButton.interactable = _currentUnit.CanMove;

            if (attackButton != null)
                attackButton.interactable = _currentUnit.CanAction;

            if (waitButton != null)
                waitButton.interactable = true;
        }

        #region 旧版按钮回调（兼容）

        public void OnMoveButtonClicked()
        {
            HideActionMenu();
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.TargetingMove);
        }

        public void OnAttackButtonClicked()
        {
            HideActionMenu();
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.TargetingAttack);
        }

        public void OnWaitButtonClicked()
        {
            HideActionMenu();
            TurnManager.Instance.EndCurrentUnitTurn();
        }

        public void OnCancelButtonClicked()
        {
            HideActionMenu();
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Idle);
        }

        #endregion
    }
}
