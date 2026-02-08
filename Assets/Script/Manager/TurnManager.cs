using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.unit;
using Global;

namespace Managers
{
    public enum BattlePhase
    {
        PlayerTurn,
        EnemyTurn,
        GameEnd
    }

    public class TurnManager : MonoBehaviour
    {
        public static TurnManager Instance;
        
        public BattlePhase CurrentPhase = BattlePhase.PlayerTurn;
        public int RoundCount = 1;

        private void Awake()
        {
            Instance = this;
        }

        private void Start()
        {
            StartCoroutine(StartPlayerPhase());
        }

        // ================== 玩家回合 ==================
        
        public void EndPlayerTurn()
        {
            if (CurrentPhase != BattlePhase.PlayerTurn) return;
            
            StartCoroutine(SwitchTurnRoutine());
        }

        IEnumerator StartPlayerPhase()
        {
            Debug.Log($"=== 第 {RoundCount} 回合：玩家行动 ===");
            CurrentPhase = BattlePhase.PlayerTurn;

            // 1. 重置所有玩家单位状态
            // 假设 UnitManager 有个方法 GetUnitsByFaction
            var playerUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Player);
            foreach (var unit in playerUnits)
            {
                unit.OnTurnStart();
            }

            // 2. 弹出 UI 提示 "Player Turn"
            yield return new WaitForSeconds(1f); 
        }

        IEnumerator EndPlayerPhase()
        {
            Debug.Log("=== 玩家回合结束 ===");
            CurrentPhase = BattlePhase.PlayerTurn;
            var playerUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Player);
            // 1. 通知所有玩家单位回合结束
            foreach (var unit in playerUnits)
            {
                unit.OnTurnEnd();
            }
            yield return new WaitForSeconds(1f);
        }

        IEnumerator SwitchTurnRoutine()
        {
            //TODO 有些时候需要锁住输入等防止玩家在回合结束时还在操作
            yield return StartCoroutine(EndPlayerPhase());

            yield return StartCoroutine(StartEnemyPhase());
        }

        // ================== 敌方回合 ==================

        IEnumerator StartEnemyPhase()
        {
            Debug.Log("=== 敌方行动 ===");
            CurrentPhase = BattlePhase.EnemyTurn;

            // 1. 重置所有敌人状态
            var enemyUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Enemy);
            foreach (var unit in enemyUnits)
            {
                unit.OnTurnStart();
            }

            // 2. 简单的 AI 循环：一个接一个动
            foreach (var enemy in enemyUnits)
            {
                if (enemy.Character.statSystem.currentHP <= 0) continue;

                // 镜头聚焦到敌人身上
                // CameraController.Instance.LookAt(enemy.transform.position);
                
                // 执行 AI 逻辑 (移动 + 攻击)
                yield return StartCoroutine(ProcessSingleEnemyAI(enemy));
                
                // 稍微停顿，别动太快看不清
                yield return new WaitForSeconds(0.5f);
            }

            // 3. 敌人全部动完，回到玩家回合
            RoundCount++;
            StartCoroutine(StartPlayerPhase());
        }

        // 简单的 AI 行为单元
        IEnumerator ProcessSingleEnemyAI(MapUnit enemy)
        {
            // 这里以后可以接更复杂的 AI 脚本 TODO
            // 简单逻辑：找最近的玩家 -> 走到攻击范围 -> 打一下
            
            // 模拟 AI 思考
            yield return new WaitForSeconds(0.5f); 
            
            // 假设 enemy.AI_AutoAction() 会返回一个 Command 或者是直接执行
            // 这里仅做演示：让它原地待机
            Debug.Log($"敌人 {enemy.name} 思考完毕，但这只猪决定休息。");
            enemy.OnWait();
        }
    }
}