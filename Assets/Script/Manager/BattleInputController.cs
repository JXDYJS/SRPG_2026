using UnityEngine;
using Managers;
using GamePlay.unit;
using Command;
using System.Linq;
using Global;

namespace GamePlay.Control
{
    public class BattleInputController : MonoBehaviour
    {
        [Header("引用")]
        public MapManager mapManager;
        public Camera mainCam;

        [Header("运行时状态")]
        private MapUnit selectedUnit;
        
        // 标记：防止在指令执行动画期间（比如正在跑路）玩家乱点
        private bool isInputLocked = false;

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
        }

        void Update()
        {
            // 1. 核心门禁：不是玩家回合，或者输入被锁住，直接滚粗
            if (TurnManager.Instance.CurrentPhase != BattlePhase.PlayerTurn || isInputLocked) 
                return;

            HandleMouseInput();
            
            // 键盘快捷键结束回合 (空格)
            if (Input.GetKeyDown(KeyCode.Space))
            {
                OnEndTurnButtonClicked();
            }
        }

        void HandleMouseInput()
        {
            // 左键：选择单位 / 确认移动
            if (Input.GetMouseButtonDown(0))
            {
                HandleLeftClick();
            }
            // 右键：攻击 / 取消选择
            else if (Input.GetMouseButtonDown(1))
            {
                HandleRightClick();
            }
        }

        void HandleLeftClick()
        {
            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit))
            {
                // A. 尝试点击单位
                MapUnit clickedUnit = hit.collider.GetComponent<MapUnit>();
                
                if (clickedUnit != null)
                {
                    // 只能选自己人，而且是没动过的
                    if (clickedUnit.Faction == FactionType.Player && !clickedUnit.IsActionDone)
                    {
                        SelectUnit(clickedUnit);
                    }
                    return;
                }

                // B. 尝试点击地板 (移动)
                // 如果已经选了人，且点的是地板，且在移动范围内 -> 移动
                if (selectedUnit != null)
                {
                    // 这里需要你的 MapInteraction 逻辑来获取点击的格子坐标
                    // 假设你能拿到 targetPos
                    // Vector3Int targetPos = ...
                    
                    // 下达移动指令...
                    // ExecuteCommand(new MoveCommand(selectedUnit, path));
                }
            }
        }

        void HandleRightClick()
        {
            // 如果已选人，右键点击敌人 -> 攻击
            if (selectedUnit != null)
            {
                Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
                if (Physics.Raycast(ray, out RaycastHit hit))
                {
                    MapUnit target = hit.collider.GetComponent<MapUnit>();
                    if (target != null && target.Faction == FactionType.Enemy)
                    {
                        if (selectedUnit.CanAttack(target))
                        {
                            // 执行攻击
                            ExecuteCommand(new AttackCommand(selectedUnit, target,null),selectedUnit);
                            return;
                        }
                    }
                }
            }

            // 否则，取消选择
            DeselectUnit();
        }

        void ExecuteCommand(ICommand command,MapUnit unit)
        {
            isInputLocked = true;
            StartCoroutine(CommandRoutine(command,unit));
        }

        System.Collections.IEnumerator CommandRoutine(ICommand command,MapUnit unit)
        {
            // 执行命令
            command.Execute(); 
            yield return null;

            while (unit.IsBusy)
            {
                yield return null;
            }

            // 解锁
            isInputLocked = false;
            DeselectUnit();

            //每次行动完，检查是不是所有人都动完了
            CheckAutoEndTurn();
        }

        // --- 自动结束回合检查 ---
        void CheckAutoEndTurn()
        {
            var playerUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Player);
            
            bool allDone = playerUnits.All(u => u.IsActionDone || u.Character.statSystem.currentHP <= 0);

            if (allDone)
            {
                Debug.Log("所有单位行动完毕，自动结束回合！");
                TurnManager.Instance.EndPlayerTurn();
            }
        }

        // --- 手动结束回合
        public void OnEndTurnButtonClicked()
        {
            if (TurnManager.Instance.CurrentPhase == BattlePhase.PlayerTurn)
            {
                TurnManager.Instance.EndPlayerTurn();
            }
        }

        void SelectUnit(MapUnit unit)
        {
            selectedUnit = unit;
            Debug.Log($"选中: {unit.name}");
        }

        void DeselectUnit()
        {
            selectedUnit = null;
        }
    }
}