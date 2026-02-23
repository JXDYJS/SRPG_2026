using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.unit;
using Global;

public class TurnManager : MonoBehaviour
{
    public static TurnManager Instance;
    
    // 记录目前是谁在行动
    public MapUnit ActiveUnit { get; private set; }

    // 所有在场单位的列表
    private List<MapUnit> _allBattleUnits = new List<MapUnit>();

    public void StartBattle()
    {
        // 获取场上所有人
        _allBattleUnits = new List<MapUnit>(FindObjectsOfType<MapUnit>());//TODO 这是简单逻辑，之后要从runManager获取
        
        // 所有人就位，计算起跑时间
        foreach(var unit in _allBattleUnits)
        {
            unit.ResetActionValue();
        }

        // 开始跑时间轴
        CalculateNextAction();
    }

    // --- 核心机制：计算下一个行动者 ---
    public void CalculateNextAction()
    {
        // 1. 清理死人
        _allBattleUnits.RemoveAll(u => u == null || u.Character.statSystem.currentHP <= 0);//todo 这里也是简单逻辑
        if (_allBattleUnits.Count == 0) return;

        // 2. 找到 AV 最小的单位 (谁最先跑到终点)
        MapUnit nextUnit = _allBattleUnits[0];
        foreach(var unit in _allBattleUnits)
        {
            if (unit.CurrentActionValue < nextUnit.CurrentActionValue)
            {
                nextUnit = unit;
            }
        }

        // 3. 时间流逝！让这个人的 AV 变成 0，其他人的 AV 也减去同样的时间
        float timeElapsed = nextUnit.CurrentActionValue;
        foreach(var unit in _allBattleUnits)
        {
            unit.CurrentActionValue -= timeElapsed;
        }

        // 4. 正式让这个人开始行动
        ActiveUnit = nextUnit;
        StartUnitTurn(ActiveUnit);
    }

    private void StartUnitTurn(MapUnit unit)
    {
        Debug.Log($"---> 轮到 {unit.name} 行动了！");
        unit.OnTurnStart();

        if (unit.Faction == Global.FactionType.Player)
        {
            // 等待玩家用 BattleInputController 下达指令
        }
        else
        {
            // 敌方单位，触发 AI 协程
            //StartCoroutine(EnemyAILogic(unit));
        }
    }

    // 当玩家按了空格，或者攻击结束/走完路且没有行动点时调用
    public void EndCurrentUnitTurn()
    {
        if (ActiveUnit == null) return;
        
        ActiveUnit.OnTurnEnd();
        
        // 让他重新回到起点
        ActiveUnit.ResetActionValue();
        ActiveUnit = null;

        // 寻找下一个人
        CalculateNextAction();
    }
}