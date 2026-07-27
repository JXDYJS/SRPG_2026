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

    // ================ 全局回合事件 ================
    /// <summary>单位回合结束前触发（单位仍为 ActiveUnit）</summary>
    public static event Action<MapUnit> OnBeforeUnitTurnEnd;

    /// <summary>单位回合结束后触发（已清理 ActiveUnit，CalculateNextAction 尚未调用）</summary>
    public static event Action<MapUnit> OnUnitTurnEnded;

    // 记录目前是谁在行动
    public MapUnit ActiveUnit { get; private set; }

    // 所有在场单位的列表
    private List<MapUnit> _allBattleUnits = new List<MapUnit>();
    
    // 公开的、实时排序的行动队列
    public List<MapUnit> ActionQueue { get; private set; } = new List<MapUnit>();

    void Awake()
    {
        Instance = this;
    }

    public void StartBattle()
    {
        Debug.Log("[TURN] StartBattle called");

        // 获取UnitManager中注册的所有单位
        _allBattleUnits = UnitManager.Instance.GetAllUnits();
        Debug.Log($"[TURN] GetAllUnits returned {_allBattleUnits.Count} units");
        
        // 所有人就位，计算起跑时间
        foreach(var unit in _allBattleUnits)
        {
            unit.ResetActionValue();
        }

        Debug.Log("[TURN] calling CalculateNextAction");
        // 开始跑时间轴
        CalculateNextAction();
        Debug.Log("[TURN] CalculateNextAction returned");
    }

    // --- 核心机制：计算下一个行动者 ---
    public void CalculateNextAction()
    {
        // 1. 清理死人
        _allBattleUnits.RemoveAll(u => u == null || u.Character.statSystem.currentHP <= 0);
        Debug.Log($"[TURN] CalculateNextAction: {_allBattleUnits.Count} units alive");
        if (_allBattleUnits.Count == 0)
        {
            Debug.LogWarning("[TURN] CalculateNextAction: no units left, aborting");
            return;
        }

        // 2.1 更新行动队列：按照 CurrentActionValue 升序排列，如果 AV 相同，则按照 Speed 降序排列
        ActionQueue = new List<MapUnit>(_allBattleUnits);
        ActionQueue.Sort((a, b) => {
            // 首先按 AV 升序排列（AV 越小越先行动）
            int avCompare = a.CurrentActionValue.CompareTo(b.CurrentActionValue);
            if (avCompare != 0) return avCompare;
            
            // AV 相同，按 Speed 降序排列（速度越快越先行动）
            float speedA = a.Character.statSystem.Speed.getValue();
            float speedB = b.Character.statSystem.Speed.getValue();
            return speedB.CompareTo(speedA);
        });

        // 2.2 获取下一个行动的单位（队列第一个）
        MapUnit nextUnit = ActionQueue[0];

        // 3. 时间流逝！让这个人的 AV 变成 0，其他人的 AV 也减去同样的时间
        float timeElapsed = nextUnit.CurrentActionValue;
        foreach(var unit in _allBattleUnits)
        {
            unit.CurrentActionValue -= timeElapsed;
        }

        // 时间条UI通过事件自动更新，无需手动调用

        // 4. 正式让这个人开始行动
        ActiveUnit = nextUnit;
        Debug.Log($"[TURN] ActiveUnit set to: {nextUnit.name} (Faction={nextUnit.Faction})");
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
            // 玩家回合开始 → 上一波敌方阶段结束，重置 SharedTaskBoard 状态
            SharedTaskBoard.Instance?.OnPlayerTurnStart();

            // 解锁输入控制器
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Idle);
        }
        else
        {
            // 敌人回合，锁死玩家输入，并把指挥权交给 AI 任务系统
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Locked);
            AITaskSystem.Instance.TakeControl(unit);
        }
    }

    public void EndCurrentUnitTurn()
    {
        if (ActiveUnit == null) return;

        OnBeforeUnitTurnEnd?.Invoke(ActiveUnit);

        ActiveUnit.OnTurnEnd();

        // 让他重新回到起点（AV变更事件由TimelinePanel自动响应）
        ActiveUnit.ResetActionValue();

        var endedUnit = ActiveUnit;
        ActiveUnit = null;

        // 通知外部系统：一个单位的回合已结束
        OnUnitTurnEnded?.Invoke(endedUnit);

        // 寻找下一个人
        CalculateNextAction();
    }

    public void TryEndCurrentUnitTurn()
    {
        if (ActiveUnit == null) return;
        
        // 检查单位是否还有行动点
        if (ActiveUnit.actionPoints <= 0 || ActiveUnit.IsActionDone)
        {
            EndCurrentUnitTurn();
        }
        else
        {
            // 单位还有行动点，返回Idle状态
            if (ActiveUnit.Faction == FactionType.Player)
            {
                GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Idle);
            }
        }
    }

    // ================ 威胁图后台增量重建 ================
    // TurnManager 兼任时间管理器：在玩家单位回合结束后，
    // 用 UniTask 分帧驱动 TacticalMapManager 的增量重建。

    void OnEnable()  => OnUnitTurnEnded += HandleUnitTurnEnded;
    void OnDisable() => OnUnitTurnEnded -= HandleUnitTurnEnded;

    private void HandleUnitTurnEnded(MapUnit unit)
    {
        // 只有玩家单位结束时才需要重建威胁图（威胁图反映玩家状态）
        if (unit == null || unit.Faction != FactionType.Player) return;

        // 启动后台分帧重建（fire-and-forget）
        RunThreatMapIncrementalRebuild().Forget();
    }

    private async UniTaskVoid RunThreatMapIncrementalRebuild()
    {
        var tmm = TacticalMapManager.Instance;
        // 以最新玩家状态开始增量重建
        tmm.BeginIncrementalRebuild();
        int total = tmm.TotalRebuildCount;
        Debug.Log($"[威胁图·后台] 开始增量重建, 共 {total} 个玩家单位");

        // 分帧推进：每帧处理 1 个玩家单位，直到全部完成
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