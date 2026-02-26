//CREATE BY GEMINI
using UnityEngine;
using GamePlay.unit;
using UnityEngine.UI;

namespace Managers
{
    public class BattleUIManager : MonoBehaviour
    {
        public static BattleUIManager Instance;

        [Header("UI 引用")]
        public GameObject actionMenuPanel; // 你的战斗菜单预制件实例

        // 引用按钮
        public Button moveButton;
        public Button attackButton;
        public Button waitButton;
        //public Button cancelButton;
        
        // 当前正在操作的单位
        private MapUnit _currentUnit;

        void Awake()
        {
            Instance = this;
            // 游戏开始时先隐藏菜单
            if (actionMenuPanel != null) actionMenuPanel.SetActive(false);
            UpdateButtonStates();
        }

        // --- 供 InputController 调用：显示菜单 ---
        public void ShowActionMenu(MapUnit unit)
        {
            _currentUnit = unit;
            UpdateButtonStates();
            actionMenuPanel.SetActive(true);
            // （位置由 Unity UGUI 锚点控制，这里不再需要代码干预）
        }

        public void HideActionMenu()
        {
            actionMenuPanel.SetActive(false);
            _currentUnit = null;
        }

        private void UpdateButtonStates()
        {
            if (_currentUnit == null) return;

            // 移动按钮：只有未移动且还有行动点时可用
            moveButton.interactable = _currentUnit.CanMove;

            // 攻击按钮：还有行动点时可用
            attackButton.interactable = _currentUnit.CanAction;

            // 待机按钮：始终可用
            waitButton.interactable = true;

            // 取消按钮：始终可用
            //cancelButton.interactable = true;
        }

        // --- 供 UI Button 的 OnClick() 绑定 ---
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
            // 直接下达待机指令
            TurnManager.Instance.EndCurrentUnitTurn();
        }

        public void OnCancelButtonClicked()
        {
            HideActionMenu();
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Idle);
        }
    }
}