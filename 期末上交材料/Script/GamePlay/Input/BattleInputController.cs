//CREATE BY GEMINI

using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using Managers;
using GamePlay.Units;
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

        void Update()
        {
            if (currentState == InputState.ShowingAttribute)
            {
                if (Input.GetMouseButtonDown(0) || Input.GetMouseButtonDown(1))
                {
                    BattleUIManager.Instance.HideAttributePanel();
                    ChangeState(InputState.Idle);
                    return;
                }
            }

            if (activeUnit == null || activeUnit.Faction != FactionType.Player || activeUnit.IsBusy)
            {
                if (currentState != InputState.Locked) ChangeState(InputState.Locked);
                GridVisualManager.Instance.HideCursor();
                Debug.Log($"[BIC] Blocked: activeUnit null or not player (state={currentState})");
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
                if (EventSystem.current.IsPointerOverGameObject())
                {
                    Debug.Log($"[BIC] LeftClick blocked by IsPointerOverGameObject (state={currentState})");
                    return;
                }
                HandleLeftClick(hoverPos);
            }

            if (Input.GetMouseButtonDown(1))
            {
                Debug.Log($"[BIC] RightClick detected (state={currentState})");
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

            Vector3Int hoverPos = GetMouseGridPosition();

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

        private Vector3Int GetMouseGridPosition()
        {
            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit))
            {
                // 重要：使用GridPositionTool确保返回脚底方块坐标
                // 而不是角色身体所在的空气方块坐标
                Vector3 worldPos = hit.point - hit.normal * 0.01f;
                return GridPositionTool.WorldToLogicPosition(worldPos);
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
