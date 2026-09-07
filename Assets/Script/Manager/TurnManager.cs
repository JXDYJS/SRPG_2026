using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;
using GamePlay.Units;
using GamePlay.Control;
using GamePlay.Battle;
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

    public List<MapUnit> ActionQueue { get; private set; } = new List<MapUnit>();

    void Awake()
    {
        Instance = this;
    }

    public void StartBattle()
    {
        //Debug.Log("[TURN] StartBattle called");

        List<MapUnit> allBattleUnits = UnitManager.Instance.GetAllUnits();
        //Debug.Log($"[TURN] GetAllUnits returned {allBattleUnits.Count} units");
        
        foreach(var unit in allBattleUnits)
        {
            unit.ResetActionValue();
            unit.OnBattleStart();
        }

        //Debug.Log("[TURN] calling CalculateNextAction");
        CalculateNextAction();
        //Debug.Log("[TURN] CalculateNextAction returned");
    }

    public void CalculateNextAction()
    {
        List<MapUnit> allBattleUnits = UnitManager.Instance.GetAllAliveUnit();
        //Debug.Log($"[TURN] CalculateNextAction: {allBattleUnits.Count} units alive");
        if (allBattleUnits.Count == 0)
        {
            Debug.LogWarning("[TURN] CalculateNextAction: no units left, aborting");
            return;
        }

        ActionQueue = new List<MapUnit>(allBattleUnits);
        ActionQueue.Sort((a, b) => {
            int avCompare = a.CurrentActionValue.CompareTo(b.CurrentActionValue);
            if (avCompare != 0) return avCompare;
            
            float speedA = a.Character.statSystem.Speed.getValue();
            float speedB = b.Character.statSystem.Speed.getValue();
            return speedB.CompareTo(speedA);
        });

        MapUnit nextUnit = ActionQueue[0];

        float timeElapsed = nextUnit.CurrentActionValue;
        foreach(var unit in allBattleUnits)
        {
            unit.CurrentActionValue -= timeElapsed;
        }

        ActiveUnit = nextUnit;
        //Debug.Log($"[TURN] ActiveUnit set to: {nextUnit.name} (Faction={nextUnit.Faction})");
        UnitStrokeRenderFeature.RefreshColors();

        // Fallback end-of-battle check: if only one faction remains on the field and
        // there is nothing left to animate, end the level now instead of starting
        // another turn. Deferred if death animations are still pending/running so the
        // existing AllDeathAnimationsFinished flow can end the level normally.
        if (TryEndLevelByFactionFallback())
        {
            ActiveUnit = null;
            return;
        }

        StartUnitTurn(ActiveUnit);
    }

    /// <summary>
    /// True when only one faction is still alive and no death animation is in flight.
    /// Ending here is a safety net for cases where the last kill happens outside an
    /// action sequence (e.g. KillAllEnemy) and AllDeathAnimationsFinished never fires.
    /// </summary>
    private bool TryEndLevelByFactionFallback()
    {
        var bfm = BattleFlowManager.Instance;
        if (bfm == null || bfm.IsLevelEnded) return false;

        UnitManager um = UnitManager.Instance;
        if (um == null) return false;

        // Defer while the last kill is still animating: let the flush finish and let
        // AllDeathAnimationsFinished drive the normal end (avoids skipping the animation).
        if (um.PendingDeathAnimCount > 0 || um.IsDeathFlushRunning) return false;

        if (!bfm.isLevelEnd()) return false;

        bfm.EndLevel();
        return true;
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
