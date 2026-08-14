using UnityEngine;
using UnityEngine.UI;
using Managers;
using GamePlay.Units;

namespace UI.Panel
{
    [UIPanelResource("Assets/UI/Battle/ActionMenuPanel.prefab")]
    public class ActionMenuPanel : BaseUIPanel
    {
        [Header("按钮引用")]
        [SerializeField] private Button _moveButton;
        [SerializeField] private Button _attackButton;
        [SerializeField] private Button _skillButton;
        [SerializeField] private Button _itemButton;
        [SerializeField] private Button _waitButton;

        private MapUnit _currentUnit;

        protected override void Awake()
        {
            base.Awake();
            SetupButtonListeners();
        }

        private void SetupButtonListeners()
        {
            if (_moveButton != null)
                _moveButton.onClick.AddListener(OnMoveClicked);
            if (_attackButton != null)
                _attackButton.onClick.AddListener(OnAttackClicked);
            if (_skillButton != null)
                _skillButton.onClick.AddListener(OnSkillClicked);
            if (_itemButton != null)
                _itemButton.onClick.AddListener(OnItemClicked);
            if (_waitButton != null)
                _waitButton.onClick.AddListener(OnWaitClicked);
        }

        public void Initialize(MapUnit unit)
        {
            _currentUnit = unit;
            UpdateButtonStates();
        }

        private void UpdateButtonStates()
        {
            if (_currentUnit == null) return;

            _moveButton.interactable = _currentUnit.CanMove;
            _attackButton.interactable = _currentUnit.CanAction;

            var skills = _currentUnit.GetActiveSkills();
            _skillButton.interactable = _currentUnit.CanAction && skills != null && skills.Count > 0;

            _itemButton.interactable = _currentUnit.CanAction;

            _waitButton.interactable = true;
        }

        public void OnMoveClicked()
        {
            BattleUIManager.Instance.HideActionMenu();
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.TargetingMove);
        }

        public void OnAttackClicked()
        {
            BattleUIManager.Instance.HideActionMenu();
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.TargetingAttack);
        }

        public void OnSkillClicked()
        {
            BattleUIManager.Instance.ShowSkillMenu(_currentUnit);
        }

        public void OnItemClicked()
        {
            BattleUIManager.Instance.ShowItemMenu(_currentUnit);
        }

        public void OnWaitClicked()
        {
            BattleUIManager.Instance.HideActionMenu();
            TurnManager.Instance.EndCurrentUnitTurn();
        }
    }
}
