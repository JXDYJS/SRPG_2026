//CREATE BY GEMINI

using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using Managers;
using GamePlay.unit;
using Command;
using Global;
using GamePlay.Grid;
using GamePlay.Visual; 
using GamePlay.Skill;
using System.Collections;

namespace GamePlay.Control
{
    public enum InputState
    {
        Locked,         
        Idle,           
        MenuOpen,       
        TargetingMove,  
        TargetingAttack 
    }

    public class BattleInputController : MonoBehaviour
    {
        public static BattleInputController Instance;

        [Header("核心引用")]
        public MapManager mapManager;
        public Camera mainCam;

        [Header("运行时状态")]
        public InputState currentState = InputState.Locked;
        private MapUnit activeUnit => TurnManager.Instance.ActiveUnit;

        private HashSet<Vector3Int> _validTargetTiles = new HashSet<Vector3Int>(); 

        void Awake()
        {
            Instance = this;
        }

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
        }

        void Update()
        {
            if (activeUnit == null || activeUnit.Faction != FactionType.Player || activeUnit.IsBusy)
            {
                if (currentState != InputState.Locked) ChangeState(InputState.Locked);
                GridVisualManager.Instance.HideCursor();
                return;
            }

            if (currentState == InputState.Locked) ChangeState(InputState.Idle);

            Vector3Int hoverPos = GetMouseGridPosition();
            
            if (EventSystem.current.IsPointerOverGameObject() || currentState == InputState.MenuOpen)
            {
                GridVisualManager.Instance.HideCursor();
            }
            else
            {
                GridVisualManager.Instance.ShowCursorAt(hoverPos);
            }

            if (Input.GetMouseButtonDown(0))
            {
                if (EventSystem.current.IsPointerOverGameObject()) return; 
                HandleLeftClick(hoverPos);
            }

            if (Input.GetMouseButtonDown(1))
            {
                if (currentState == InputState.TargetingMove || currentState == InputState.TargetingAttack)
                {
                    ChangeState(InputState.MenuOpen);
                    BattleUIManager.Instance.ShowActionMenu(activeUnit);
                }
                else if (currentState == InputState.MenuOpen)
                {
                    ChangeState(InputState.Idle);
                    BattleUIManager.Instance.HideActionMenu();
                }
            }
        }

        private IEnumerator ExecuteCommandAndWait(BaseCommand cmd)
        {
            ChangeState(InputState.Locked);
            
            yield return Tool.WaitUntilCommandFinish(cmd);
            
            ChangeState(InputState.Idle);
        }

        public void ChangeState(InputState newState)
        {
            currentState = newState;
            
            GridVisualManager.Instance.ClearHighlights();
            _validTargetTiles.Clear();

            switch (newState)
            {
                case InputState.TargetingMove:
                    CalculateAndShowMoveRange();
                    break;
                case InputState.TargetingAttack:
                    CalculateAndShowAttackRange();
                    break;
            }
        }

        private void CalculateAndShowMoveRange()
        {
            int range = activeUnit.Character.characterData.MoveRange;
            
            HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                activeUnit.gridPosition, 
                range, 
                mapManager.logicalGrid, 
                activeUnit.moveStats
            );

            foreach (Vector3Int pos in reachableTiles)
            {
                MapUnit occupiedUnit = UnitManager.Instance.GetUnitAt(pos);
                
                if (occupiedUnit == null || occupiedUnit == activeUnit)
                {
                    _validTargetTiles.Add(pos);
                }
            }
            
            GridVisualManager.Instance.ShowTilesHighlight(_validTargetTiles, Color.cyan);
        }

        private void CalculateAndShowAttackRange()
        {
            List<Vector3Int> rawRange = activeUnit.GetCurrentAttackRange(null);

            foreach (Vector3Int pos in rawRange)
            {
                MapUnit targetUnit = UnitManager.Instance.GetUnitAt(pos);
                if (targetUnit != null && targetUnit.Faction == FactionType.Enemy)
                {
                    _validTargetTiles.Add(pos);
                }
            }
            GridVisualManager.Instance.ShowTilesHighlight(_validTargetTiles, Color.red);
        }

        private Vector3Int GetMouseGridPosition()
        {
            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit))
            {
                Vector3 hitPoint = hit.point - hit.normal * 0.01f;
                return new Vector3Int(
                    Mathf.RoundToInt(hitPoint.x / mapManager.cellSize),
                    (int)(hitPoint.y / mapManager.cellSize),
                    Mathf.RoundToInt(hitPoint.z / mapManager.cellSize)
                );
            }
            return Vector3Int.zero;
        }

        void HandleLeftClick(Vector3Int clickPos)
        {
            switch (currentState)
            {
                case InputState.Idle:
                    MapUnit clickedUnit = UnitManager.Instance.GetUnitAt(clickPos);
                    if (clickedUnit != null && clickedUnit == activeUnit)
                    {
                        ChangeState(InputState.MenuOpen);
                        BattleUIManager.Instance.ShowActionMenu(activeUnit);
                    }
                    break;

                case InputState.TargetingMove:
                    if (_validTargetTiles.Contains(clickPos))
                    {
                        List<Vector3Int> path = AStar.FindPath(activeUnit.gridPosition, clickPos, mapManager.logicalGrid, activeUnit.moveStats);
                        if (path != null && path.Count > 0)
                        {
                            MoveCommand cmd = new MoveCommand(activeUnit, path);
                            StartCoroutine(Tool.ExecuteCommandWithCallback(
                                cmd,
                                () => ChangeState(InputState.Idle)
                            ));
                        }
                    }
                    break;

                case InputState.TargetingAttack:
                    if (_validTargetTiles.Contains(clickPos))
                    {
                        MapUnit targetEnemy = UnitManager.Instance.GetUnitAt(clickPos);
                        if (targetEnemy != null)
                        {
                            ChangeState(InputState.Locked);

                            SkillTargetContext context = new SkillTargetContext(
                                targetEnemy.gridPosition,
                                new List<MapUnit> { targetEnemy },
                                DamageType.Physical
                            );

                            SkillCommand cmd = new SkillCommand(
                                activeUnit, 
                                activeUnit.NormalAttackSkill, 
                                context
                            );

                            StartCoroutine(Tool.ExecuteCommandWithCallback(
                                cmd,
                                () => TurnManager.Instance.EndCurrentUnitTurn()
                            ));
                        }
                    }
                    break;
            }
        }
    }
}
