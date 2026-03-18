using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using GamePlay.Unit;
using GamePlay.Skill;
using Managers;
using UI.Component;

namespace UI.Panel
{
    public class SkillMenuPanel : BaseUIPanel
    {
        [Header("UI组件引用")]
        [SerializeField] private Transform _buttonContainer;
        [SerializeField] private GameObject _buttonPrefab;

        [Header("配置")]
        [SerializeField] private int _maxButtons = 10;
        [SerializeField] private float _buttonWidth = 200f;
        [SerializeField] private float _buttonHeight = 26.66667f;

        private MapUnit _currentUnit;
        private List<SkillButton> _skillButtons = new List<SkillButton>();
        private List<SkillDataSO> _currentSkills = new List<SkillDataSO>();
        private Button _backButton;

        protected override void Awake()
        {
            base.Awake();
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

            // 获取普通攻击技能，用于排除
            SkillDataSO normalAttackSkill = _currentUnit.NormalAttackSkill;

            for (int i = 0; i < _currentSkills.Count && i < _maxButtons; i++)
            {
                SkillDataSO skill = _currentSkills[i];
                // 排除普通攻击技能
                if (skill != normalAttackSkill)
                {
                    CreateSkillButton(skill, i);
                }
            }

            CreateBackButton();
        }

        private void CreateSkillButton(SkillDataSO skill, int index)
        {
            if (_buttonPrefab == null || _buttonContainer == null)
            {
                Debug.LogError("SkillMenuPanel: 缺少预制体或容器引用");
                return;
            }

            GameObject buttonObj = Instantiate(_buttonPrefab, _buttonContainer);
            buttonObj.name = $"SkillButton_{skill.SkillName}";

            SetButtonSize(buttonObj);

            SkillButton skillButton = buttonObj.GetComponent<SkillButton>();
            Button button = buttonObj.GetComponent<Button>();
            if (skillButton == null)
            {
                skillButton = buttonObj.AddComponent<SkillButton>();
            }

            bool isAvailable = IsSkillAvailable(skill);
            skillButton.Initialize(skill, OnSkillSelected, isAvailable);

            TMP_Text buttonText = buttonObj.GetComponentInChildren<TMP_Text>();
            if (buttonText != null)
            {
                buttonText.text = skill.SkillName;
            }

            _skillButtons.Add(skillButton);
            button.onClick.AddListener(() => skillButton.OnButtonClicked());
        }

        private void CreateBackButton()
        {
            if (_buttonPrefab == null || _buttonContainer == null)
            {
                Debug.LogError("SkillMenuPanel: 缺少预制体或容器引用");
                return;
            }

            GameObject buttonObj = Instantiate(_buttonPrefab, _buttonContainer);
            buttonObj.name = "BackButton";

            SetButtonSize(buttonObj);

            _backButton = buttonObj.GetComponent<Button>();
            if (_backButton == null)
            {
                _backButton = buttonObj.AddComponent<Button>();
            }

            // 尝试获取TextMeshPro组件
            TMPro.TMP_Text buttonText = buttonObj.GetComponentInChildren<TMPro.TMP_Text>();
            if (buttonText != null)
            {
                buttonText.text = "back";
            }
            else
            {
                // 兼容旧版Text组件
                Text oldText = buttonObj.GetComponentInChildren<Text>();
                if (oldText != null)
                {
                    oldText.text = "back";
                }
            }

            _backButton.onClick.AddListener(OnBackClicked);
        }

        private void SetButtonSize(GameObject buttonObj)
        {
            RectTransform rectTransform = buttonObj.GetComponent<RectTransform>();
            if (rectTransform != null)
            {
                rectTransform.sizeDelta = new Vector2(_buttonWidth, _buttonHeight);
            }
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

            if (_backButton != null && _backButton.gameObject != null)
            {
                Destroy(_backButton.gameObject);
                _backButton = null;
            }
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
