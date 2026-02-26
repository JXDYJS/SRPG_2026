using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.unit;
using GamePlay.Control;
using Global;
using Managers;
using Command;
using GamePlay.AI;

public class TurnManager : MonoBehaviour
{
    public static TurnManager Instance;
    
    // 记录目前是谁在行动
    public MapUnit ActiveUnit { get; private set; }

    // 所有在场单位的列表
    private List<MapUnit> _allBattleUnits = new List<MapUnit>();

    void Awake()
    {
        Instance = this;
    }

    public void StartBattle()
    {
        // 获取场上所有人
        _allBattleUnits = new List<MapUnit>(FindObjectsOfType<MapUnit>());
        
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
        _allBattleUnits.RemoveAll(u => u == null || u.Character.statSystem.currentHP <= 0);
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
        unit.ResetTurnState();
        unit.OnTurnStart();

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

    // --- 极简 AI 协程 ---
    private IEnumerator EnemyAILogic(MapUnit enemyUnit)
    {
        //这是一个用来早期测试用的ai
        Debug.Log($"[AI] {enemyUnit.name} 正在思考...");
        
        // 1. 稍微停顿一下（为了游戏节奏感，否则 AI 瞬间打完玩家反应不过来）
        yield return new WaitForSeconds(0.5f);

        // 2. 获取所有活着的玩家单位
        List<MapUnit> playerUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Player);
        MapUnit targetToAttack = null;

        // 3. 寻找目标：遍历玩家，看看谁在我的攻击范围内
        foreach (var player in playerUnits)
        {
            if (player.Character.statSystem.currentHP > 0 && enemyUnit.CanAttack(player))
            {
                targetToAttack = player;
                break; // 极简逻辑：找到第一个能打到的就直接打，不考虑谁血少
            }
        }

        // 4. 执行决策
        if (targetToAttack != null)
        {
            Debug.Log($"[AI] {enemyUnit.name} 决定攻击 {targetToAttack.name}！");
            
            // 下达攻击指令
            AttackCommand attackCmd = new AttackCommand(enemyUnit, targetToAttack, enemyUnit.NormalAttackSkill);
            
            // 等待攻击的演出动画（特效、飞弹等）完全结束
            yield return Tool.WaitUntilCommandFinish(attackCmd);
            
            // 攻击结束后再留一点视觉缓冲时间
            yield return new WaitForSeconds(0.5f);
        }
        else
        {
            Debug.Log($"[AI] {enemyUnit.name} 攻击范围内没有目标，原地待机。");
            // 即使是待机发呆，也停顿 0.5 秒，告诉玩家“这个怪物行动过了”
            yield return new WaitForSeconds(0.5f); 
        }

        // 5. 决策执行完毕，结束回合
        EndCurrentUnitTurn();
    }

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