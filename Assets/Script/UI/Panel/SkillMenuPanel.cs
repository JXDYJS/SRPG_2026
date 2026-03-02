using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using GamePlay.unit;
using GamePlay.Skill;
using Managers;
using UI.Component;

namespace UI.Panel
{
    public class SkillMenuPanel : BaseUIPanel
    {
        [Header("UI组件引用")]
        [SerializeField] private Transform _buttonContainer;
        [SerializeField] private GameObject _skillButtonPrefab;
        [SerializeField] private Button _backButton;

        [Header("配置")]
        [SerializeField] private int _maxButtons = 10;

        private MapUnit _currentUnit;
        private List<SkillButton> _skillButtons = new List<SkillButton>();
        private List<SkillDataSO> _currentSkills = new List<SkillDataSO>();

        protected override void Awake()
        {
            base.Awake();
            if (_backButton != null)
                _backButton.onClick.AddListener(OnBackClicked);
        }

        public void Initialize(MapUnit unit)
        {
            _currentUnit = unit;
            RefreshSkillList();
        }

        private void RefreshSkillList()
        {
            ClearSkillButtons();

            if (_currentUnit == null) return;

            _currentSkills = _currentUnit.GetActiveSkills();

            if (_currentSkills == null || _currentSkills.Count == 0)
            {
                Debug.LogWarning($"SkillMenuPanel: 单位 {_currentUnit.name} 没有可用技能");
                return;
            }

            for (int i = 0; i < _currentSkills.Count && i < _maxButtons; i++)
            {
                CreateSkillButton(_currentSkills[i], i);
            }
        }

        private void CreateSkillButton(SkillDataSO skill, int index)
        {
            if (_skillButtonPrefab == null || _buttonContainer == null)
            {
                Debug.LogError("SkillMenuPanel: 缺少预制体或容器引用");
                return;
            }

            GameObject buttonObj = Instantiate(_skillButtonPrefab, _buttonContainer);
            buttonObj.name = $"SkillButton_{skill.SkillName}";

            SkillButton skillButton = buttonObj.GetComponent<SkillButton>();
            if (skillButton == null)
            {
                skillButton = buttonObj.AddComponent<SkillButton>();
            }

            bool isAvailable = IsSkillAvailable(skill);
            skillButton.Initialize(skill, OnSkillSelected, isAvailable);

            _skillButtons.Add(skillButton);
        }

        private bool IsSkillAvailable(SkillDataSO skill)
        {
            if (_currentUnit == null) return false;

            if (!_currentUnit.CanAction) return false;

            return true;
        }

        private void OnSkillSelected(SkillDataSO skill)
        {
            if (skill == null) return;

            BattleUIManager.Instance.OnSkillSelected(skill);
        }

        private void OnBackClicked()
        {
            BattleUIManager.Instance.PopPanel();
        }

        private void ClearSkillButtons()
        {
            foreach (var button in _skillButtons)
            {
                if (button != null && button.gameObject != null)
                {
                    Destroy(button.gameObject);
                }
            }
            _skillButtons.Clear();
            _currentSkills.Clear();
        }

        public void UpdateButtonStates()
        {
            foreach (var button in _skillButtons)
            {
                if (button != null && button.SkillData != null)
                {
                    button.SetAvailable(IsSkillAvailable(button.SkillData));
                }
            }
        }

        private void OnDestroy()
        {
            ClearSkillButtons();
        }
    }
}
