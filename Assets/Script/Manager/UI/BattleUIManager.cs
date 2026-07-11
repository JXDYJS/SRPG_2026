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

        private UIStack _uiStack;
        private MapUnit _currentUnit;
        private SkillDataSO _selectedSkill;

        public SkillDataSO SelectedSkill => _selectedSkill;
        public MapUnit CurrentUnit => _currentUnit;

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

        public async void PopPanel()
        {
            await _uiStack.Pop();
        }

        // ====== 旧 AttributePanel（已废弃） ======
        // public void ShowAttributePanel(MapUnit unit)
        // {
        //     var panel = UIManager.Instance.OpenPanel<AttributePanel>();
        //     if (panel != null)
        //         panel.Show(unit);
        // }
        // public void HideAttributePanel()
        // {
        //     UIManager.Instance.ClosePanel<AttributePanel>();
        // }
        // ====== 新 StatusPopWindow ======
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
    }
}
