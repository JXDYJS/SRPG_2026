using UnityEngine;
using System.Collections.Generic;
using Managers;
using GamePlay.InputSystem;
using GamePlay.Units;
using Command;
using Global;
using GamePlay.Grid;
using GamePlay.Visual;
using GamePlay.Skill;
using GamePlay.Battle;
using System.Collections;
using Core.System;
using UnityEngine.InputSystem;

namespace GamePlay.Control
{
    public enum InputState
    {
        Locked,
        Idle,
        MenuOpen,
        TargetingMove,
        TargetingAttack,
        TargetingSkill,
        ShowingAttribute
    }

    public class BattleInputController : MonoBehaviour
    {
        public static BattleInputController Instance;

        [Header("核心引用")]
        public MapManager mapManager;
        public Camera mainCam;

        [Header("运行时状态")]
        public InputState currentState = InputState.Locked;
        private MapUnit activeUnit
        {
            get
            {
                if (TurnManager.Instance == null)
                {
                    Debug.LogWarning("[BIC] TurnManager.Instance is null!");
                    return null;
                }
                return TurnManager.Instance.ActiveUnit;
            }
        }

        private HashSet<Vector3Int> _validTargetTiles = new HashSet<Vector3Int>();
        private HashSet<Vector3Int> _highlightTiles = new HashSet<Vector3Int>();
        private SkillDataSO _selectedSkill;

        public SkillDataSO SelectedSkill => _selectedSkill;

        void Awake()
        {
            Instance = this;
        }

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
        }

        void OnEnable()
        {
            var input = InputManager.Actions.Gameplay;
            input.Confirm.performed += OnConfirm;
            input.Cancel.performed += OnCancel;
        }

        void OnDisable()
        {
            if (InputManager.Actions == null) return;
            var input = InputManager.Actions.Gameplay;
            input.Confirm.performed -= OnConfirm;
            input.Cancel.performed -= OnCancel;
        }

        void Update()
        {
            if (InputLock.IsLocked) return;

            if (currentState == InputState.ShowingAttribute) return;

            if (activeUnit == null || activeUnit.Faction != FactionType.Player || activeUnit.IsBusy)
            {
                if (currentState != InputState.Locked)
                {
                    ChangeState(InputState.Locked);
                    Debug.Log($"[BIC] Blocked: activeUnit null or not player (state={currentState})");
                }
                GridVisualManager.Instance.HideCursor();
                return;
            }

            if (currentState == InputState.Locked) ChangeState(InputState.Idle);

            GridPositionTool.TryGetMouseGridPosition(mainCam, out Vector3Int hoverPos);

            if (InputUtil.IsPointerOverUI || currentState == InputState.MenuOpen)
            {
                GridVisualManager.Instance.HideCursor();
            }
            else
            {
                GridVisualManager.Instance.ShowCursorAt(hoverPos);
            }
        }

        private void OnConfirm(InputAction.CallbackContext ctx)
        {
            if (InputLock.IsLocked) return;
            if (currentState == InputState.ShowingAttribute) return;
            if (activeUnit == null || activeUnit.Faction != FactionType.Player) return;
            if (InputUtil.IsPointerOverUI) return;

            Vector2 mousePos = InputManager.Actions.Gameplay.Point.ReadValue<Vector2>();
            if (!GridPositionTool.TryGetMouseGridPosition(mainCam, mousePos, out Vector3Int clickPos)) return;

            HandleLeftClick(clickPos);
        }

        private void OnCancel(InputAction.CallbackContext ctx)
        {
            if (InputLock.IsLocked) return;
            if (currentState == InputState.ShowingAttribute) return;
            if (activeUnit == null || activeUnit.Faction != FactionType.Player) return;

            Vector2 mousePos = InputManager.Actions.Gameplay.Point.ReadValue<Vector2>();
            GridPositionTool.TryGetMouseGridPosition(mainCam, mousePos, out Vector3Int hoverPos);

            Debug.Log($"[BIC] Cancel detected (state={currentState})");
            if (currentState == InputState.TargetingMove ||
                currentState == InputState.TargetingAttack ||
                currentState == InputState.TargetingSkill)
            {
                _selectedSkill = null;
                ChangeState(InputState.MenuOpen);
                BattleUIManager.Instance.ShowActionMenu(activeUnit);
            }
            else if (currentState == InputState.MenuOpen)
            {
                ChangeState(InputState.Idle);
                BattleUIManager.Instance.HideActionMenu();
            }
            else if (currentState == InputState.Idle)
            {
                MapUnit clickedUnit = UnitManager.Instance.GetUnitAt(hoverPos);
                if (clickedUnit != null)
                {
                    BattleUIManager.Instance.ShowAttributePanel(clickedUnit);
                    ChangeState(InputState.ShowingAttribute);
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
                case InputState.TargetingSkill:
                    CalculateAndShowSkillRange();
                    break;
            }
        }

        public void StartSkillTargeting(SkillDataSO skill)
        {
            _selectedSkill = skill;
            ChangeState(InputState.TargetingSkill);
        }

        private void CalculateAndShowMoveRange()
        {
            int range = (int)activeUnit.Character.statSystem.moveRange.getValue();

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

        private void CalculateAndShowSkillRange()
        {
            if (_selectedSkill == null || activeUnit == null)
            {
                Debug.LogWarning("CalculateAndShowSkillRange: 技能或单位为空");
                return;
            }

            GridPositionTool.TryGetMouseGridPosition(mainCam, out Vector3Int hoverPos);

            // 使用新的双层范围系统
            var (castTiles, aoeTiles) = AttackRangeSystem.GetSkillRangesForUI(
                activeUnit.gridPosition,
                hoverPos,
                _selectedSkill
            );

            _highlightTiles = new HashSet<Vector3Int>(castTiles);
            _validTargetTiles = new HashSet<Vector3Int>(castTiles);

            // 显示施法范围（蓝色）和AoE范围（红色）
            GridVisualManager.Instance.ShowTilesHighlight(_highlightTiles, Color.blue);
            
            // 如果有AoE范围，用红色显示
            // if (aoeTiles.Count > 0)
            // {
            //     GridVisualManager.Instance.ShowTilesHighlight(aoeTiles, Color.red);
            // }
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
                                new List<MapUnit> { targetEnemy }
                            );

                            SkillCommand cmd = new SkillCommand(
                                activeUnit,
                                activeUnit.NormalAttackSkill,
                                context
                            );

                            StartCoroutine(Tool.ExecuteCommandWithCallback(
                                cmd,
                                () => TurnManager.Instance.TryEndCurrentUnitTurn()
                            ));
                        }
                    }
                    break;

                case InputState.TargetingSkill:
                    // 重要：检查点击位置是否在有效施法范围内
                    if (_validTargetTiles.Contains(clickPos))
                    {
                        // 重要：施法前目标合法性校验（防止空放）
                        bool isValidTarget = AttackRangeSystem.IsValidTargetForCast(clickPos, _selectedSkill, activeUnit.Faction);
                        if (!isValidTarget)
                        {
                            // 目标无效，拒绝施法
                            Debug.Log("施法被拒绝：目标无效");
                            return;
                        }
                        
                        // 如果点击位置有单位，确保使用该单位的脚底坐标
                        MapUnit targetUnit = UnitManager.Instance.GetUnitAt(clickPos);
                        if (targetUnit != null)
                        {
                            // 使用单位的gridPosition（已经是脚底坐标）
                            ExecuteSkillAtPosition(targetUnit.gridPosition);
                        }
                        else
                        {
                            // 点击的是空地，直接使用点击位置
                            ExecuteSkillAtPosition(clickPos);
                        }
                    }
                    break;
            }
        }

        private void ExecuteSkillAtPosition(Vector3Int targetPos)
        {
            if (_selectedSkill == null || activeUnit == null) return;

            ChangeState(InputState.Locked);

            List<MapUnit> targets = new List<MapUnit>();

            // 使用新的AoE范围计算
            if (_selectedSkill.Phases.Count > 0)
            {
                SkillPhase firstPhase = _selectedSkill.Phases[0];
                List<Vector3Int> aoeRange = AttackRangeSystem.GetAoERange3D(activeUnit.gridPosition, targetPos, firstPhase);

                foreach (Vector3Int pos in aoeRange)
                {
                    MapUnit unit = UnitManager.Instance.GetUnitAt(pos);
                    if (unit != null && AttackRangeSystem.IsTargetValidForPhase(unit, firstPhase, activeUnit.Faction))
                    {
                        targets.Add(unit);
                    }
                }
            }

            SkillTargetContext context = new SkillTargetContext(
                targetPos,
                targets
            );

            SkillCommand cmd = new SkillCommand(activeUnit, _selectedSkill, context);

            StartCoroutine(Tool.ExecuteCommandWithCallback(
                cmd,
                () =>
                {
                    _selectedSkill = null;
                    TurnManager.Instance.TryEndCurrentUnitTurn();
                }
            ));
        }
    }
}
