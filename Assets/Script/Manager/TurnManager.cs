using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;
using GamePlay.Units;
using GamePlay.Control;
using Global;
using Managers;
using Command;
using GamePlay.AI;
using Grid;

public class TurnManager : MonoBehaviour
{
    public static TurnManager Instance;

    /// <summary>Fired before a unit's turn ends (unit is still ActiveUnit).</summary>
    public static event Action<MapUnit> OnBeforeUnitTurnEnd;

    /// <summary>Fired after a unit's turn ends (ActiveUnit cleared, CalculateNextAction not yet called).</summary>
    public static event Action<MapUnit> OnUnitTurnEnded;

    public MapUnit ActiveUnit { get; private set; }

    private List<MapUnit> _allBattleUnits = new List<MapUnit>();
    
    public List<MapUnit> ActionQueue { get; private set; } = new List<MapUnit>();

    void Awake()
    {
        Instance = this;
    }

    public void StartBattle()
    {
        Debug.Log("[TURN] StartBattle called");

        _allBattleUnits = UnitManager.Instance.GetAllUnits();
        Debug.Log($"[TURN] GetAllUnits returned {_allBattleUnits.Count} units");
        
        foreach(var unit in _allBattleUnits)
        {
            unit.ResetActionValue();
            unit.OnBattleStart();
        }

        Debug.Log("[TURN] calling CalculateNextAction");
        CalculateNextAction();
        Debug.Log("[TURN] CalculateNextAction returned");
    }

    public void CalculateNextAction()
    {
        _allBattleUnits.RemoveAll(u => u == null || !u.IsAlive);
        Debug.Log($"[TURN] CalculateNextAction: {_allBattleUnits.Count} units alive");
        if (_allBattleUnits.Count == 0)
        {
            Debug.LogWarning("[TURN] CalculateNextAction: no units left, aborting");
            return;
        }

        ActionQueue = new List<MapUnit>(_allBattleUnits);
        ActionQueue.Sort((a, b) => {
            int avCompare = a.CurrentActionValue.CompareTo(b.CurrentActionValue);
            if (avCompare != 0) return avCompare;
            
            float speedA = a.Character.statSystem.Speed.getValue();
            float speedB = b.Character.statSystem.Speed.getValue();
            return speedB.CompareTo(speedA);
        });

        MapUnit nextUnit = ActionQueue[0];

        float timeElapsed = nextUnit.CurrentActionValue;
        foreach(var unit in _allBattleUnits)
        {
            unit.CurrentActionValue -= timeElapsed;
        }

        ActiveUnit = nextUnit;
        Debug.Log($"[TURN] ActiveUnit set to: {nextUnit.name} (Faction={nextUnit.Faction})");
        UnitStrokeRenderFeature.RefreshColors();
        StartUnitTurn(ActiveUnit);
    }

    private void StartUnitTurn(MapUnit unit)
    {
        Debug.Log($"---> 轮到 {unit.name} 行动了！");
        unit.ResetTurnState();
        unit.OnTurnStart();
        UnitManager.Instance.unitOnStay(unit);

        if (unit.Faction == FactionType.Player)
        {
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Idle);
        }
        else
        {
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Locked);
            AITaskSystem.Instance.TakeControl(unit);
        }
    }

    public void EndCurrentUnitTurn()
    {
        if (ActiveUnit == null) return;

        OnBeforeUnitTurnEnd?.Invoke(ActiveUnit);

        ActiveUnit.OnTurnEnd();

        ActiveUnit.ResetActionValue();

        var endedUnit = ActiveUnit;
        ActiveUnit = null;
        UnitStrokeRenderFeature.RefreshColors();

        OnUnitTurnEnded?.Invoke(endedUnit);

        CalculateNextAction();
    }

    public void TryEndCurrentUnitTurn()
    {
        if (ActiveUnit == null) return;
        
        if (ActiveUnit.actionPoints <= 0 || ActiveUnit.IsActionDone)
        {
            EndCurrentUnitTurn();
        }
        else
        {
            if (ActiveUnit.Faction == FactionType.Player)
            {
                GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Idle);
            }
        }
    }

    // After a player unit's turn, drive TacticalMapManager's incremental rebuild frame by frame.

    void OnEnable()  => OnUnitTurnEnded += HandleUnitTurnEnded;
    void OnDisable() => OnUnitTurnEnded -= HandleUnitTurnEnded;

    private void HandleUnitTurnEnded(MapUnit unit)
    {
        // Threat map reflects player state, so only rebuild on player turns.
        if (unit == null || unit.Faction != FactionType.Player) return;

        RunThreatMapIncrementalRebuild().Forget();
    }

    private async UniTaskVoid RunThreatMapIncrementalRebuild()
    {
        var tmm = TacticalMapManager.Instance;
        tmm.BeginIncrementalRebuild();
        int total = tmm.TotalRebuildCount;
        Debug.Log($"[威胁图·后台] 开始增量重建, 共 {total} 个玩家单位");

        while (!tmm.IsRebuildComplete)
        {
            float tickMs = Time.realtimeSinceStartup;
            tmm.TickIncrementalRebuild();
            tickMs = (Time.realtimeSinceStartup - tickMs) * 1000f;
            Debug.Log($"[威胁图·后台] 处理 {tmm.BackgroundProcessedCount}/{total} " +
                      $"(本帧 {tickMs:F1}ms)");

            if (!tmm.IsRebuildComplete)
                await UniTask.Yield(PlayerLoopTiming.LastPostLateUpdate);
        }

        Debug.Log($"[威胁图·后台] 全部完成, 共 {tmm.BackgroundProcessedCount}/{total}");
    }
}
