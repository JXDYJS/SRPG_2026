//CREATE BY GEMINI
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

        [Header("面板引用")]
        [SerializeField] private ActionMenuPanel _actionMenuPanel;

        private UIStack _uiStack;
        private MapUnit _currentUnit;
        private SkillDataSO _selectedSkill;

        public SkillDataSO SelectedSkill => _selectedSkill;
        public MapUnit CurrentUnit => _currentUnit;

        void Awake()
        {
            Instance = this;
            _uiStack = new UIStack();

            if (_actionMenuPanel != null)
                _actionMenuPanel.PanelObject.SetActive(false);
        }

        public void ShowActionMenu(MapUnit unit)
        {
            _currentUnit = unit;
            _selectedSkill = null;

            if (_actionMenuPanel != null)
            {
                _actionMenuPanel.Initialize(unit);
                if (_uiStack.Count == 0 || _uiStack.Current.GetType() != typeof(ActionMenuPanel))
                {
                    _uiStack.Push(_actionMenuPanel).Forget();
                }
            }
        }

        public void HideActionMenu()
        {
            _uiStack.Clear();
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

        public async void PopPanel()
        {
            await _uiStack.Pop();
        }

        public void ShowAttributePanel(MapUnit unit)
        {
            var panel = UIManager.Instance.OpenPanel<AttributePanel>();
            if (panel != null)
                panel.Show(unit);
        }

        public void HideAttributePanel()
        {
            UIManager.Instance.ClosePanel<AttributePanel>();
        }

        public void OnSkillSelected(SkillDataSO skill)
        {
            _selectedSkill = skill;
            _uiStack.Clear();

            if (_actionMenuPanel != null)
                _actionMenuPanel.PanelObject.SetActive(false);

            GamePlay.Control.BattleInputController.Instance.StartSkillTargeting(skill);
        }

    }
}
