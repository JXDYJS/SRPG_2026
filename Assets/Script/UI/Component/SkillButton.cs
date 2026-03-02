using UnityEngine;
using UnityEngine.UI;
using GamePlay.Skill;
using UnityEngine.Events;
namespace UI.Component
{
    public class SkillButton : MonoBehaviour
    {
        [Header("UI组件引用")]
        [SerializeField] private Text _skillNameText;
        [SerializeField] private Text _costText;
        [SerializeField] private Image _iconImage;
        [SerializeField] private Image _backgroundImage;
        [SerializeField] private Button _button;

        [Header("状态颜色")]
        [SerializeField] private Color _availableColor = Color.white;
        [SerializeField] private Color _unavailableColor = new Color(0.5f, 0.5f, 0.5f, 1f);

        private SkillDataSO _skillData;
        private System.Action<SkillDataSO> _onClicked;

        public SkillDataSO SkillData => _skillData;

        private void Awake()
        {
            if (_button == null)
                _button = GetComponent<Button>();
        }

        public void Initialize(SkillDataSO skill, System.Action<SkillDataSO> onClicked, bool isAvailable = true)
        {
            _skillData = skill;
            _onClicked = onClicked;

            UpdateDisplay(isAvailable);
            SetupButton();
        }

        private void UpdateDisplay(bool isAvailable)
        {
            if (_skillData == null) return;

            if (_skillNameText != null)
                _skillNameText.text = _skillData.SkillName;

            if (_costText != null)
                _costText.text = _skillData.Cost > 0 ? _skillData.Cost.ToString() : "";

            if (_iconImage != null && _skillData.Icon != null)
                _iconImage.sprite = _skillData.Icon;

            SetAvailable(isAvailable);
        }

        public void SetAvailable(bool isAvailable)
        {
            if (_button != null)
                _button.interactable = isAvailable;

            if (_backgroundImage != null)
                _backgroundImage.color = isAvailable ? _availableColor : _unavailableColor;

            if (_skillNameText != null)
            {
                var color = _skillNameText.color;
                color.a = isAvailable ? 1f : 0.5f;
                _skillNameText.color = color;
            }
        }

        private void SetupButton()
        {
            if (_button != null)
            {
                _button.onClick.RemoveAllListeners();
                _button.onClick.AddListener(OnButtonClicked);
            }
        }

        private void OnButtonClicked()
        {
            _onClicked?.Invoke(_skillData);
        }

        public void Clear()
        {
            _skillData = null;
            _onClicked = null;

            if (_skillNameText != null)
                _skillNameText.text = "";

            if (_costText != null)
                _costText.text = "";

            if (_iconImage != null)
                _iconImage.sprite = null;
        }
    }
}
