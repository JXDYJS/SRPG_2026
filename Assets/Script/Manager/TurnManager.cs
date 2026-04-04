using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.Units;
using GamePlay.Control;
using Global;
using Managers;
using Command;
using GamePlay.AI;
using UI;

public class TurnManager : MonoBehaviour
{
    public static TurnManager Instance;
    
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
        // 获取UnitManager中注册的所有单位
        _allBattleUnits = UnitManager.Instance.GetAllUnits();
        
        // 所有人就位，计算起跑时间
        foreach(var unit in _allBattleUnits)
        {
            unit.ResetActionValue();
        }

        // 注意：时间条UI已经在BattleFlowManager中初始化
        // 这里只需要确保头像位置更新到初始状态
        if (TimelineUIManager.Instance != null)
        {
            TimelineUIManager.Instance.UpdateAllIconsPosition(0f);
        }

        // 开始跑时间轴
        CalculateNextAction();
    }

    // --- 核心机制：计算下一个行动者 ---
    public void CalculateNextAction()
    {
        // 1. 清理死人
        _allBattleUnits.RemoveAll(u => u == null || u.Character.statSystem.currentHP <= 0);
        if (_allBattleUnits.Count == 0) return;

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

        // 3.5 更新时间条UI，让所有头像向左移动
        if (TimelineUIManager.Instance != null)
        {
            TimelineUIManager.Instance.UpdateAllIconsPosition(0.5f);
        }

        // 4. 正式让这个人开始行动
        ActiveUnit = nextUnit;
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
            // 玩家回合，解锁输入控制器
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Idle);
        }
        else
        {
            // 敌人回合，锁死玩家输入，并把指挥权交给 AI 管家
            GamePlay.Control.BattleInputController.Instance.ChangeState(GamePlay.Control.InputState.Locked);
            EnemyAIManager.Instance.TakeControl(unit);
        }
    }

    public void EndCurrentUnitTurn()
    {
        if (ActiveUnit == null) return;
        
        ActiveUnit.OnTurnEnd();
        
        // 让他重新回到起点
        ActiveUnit.ResetActionValue();
        
        // 更新时间条UI，让行动完的头像飞回右侧起跑线
        if (TimelineUIManager.Instance != null)
        {
            TimelineUIManager.Instance.UpdateAllIconsPosition(0.5f);
        }
        
        ActiveUnit = null;

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
}