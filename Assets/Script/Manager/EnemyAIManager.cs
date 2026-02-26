using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.unit;
using Global;
using Command;
using Managers;

namespace GamePlay.AI
{
    public class EnemyAIManager : MonoBehaviour
    {
        public static EnemyAIManager Instance;

        void Awake()
        {
            Instance = this;
        }

        // 外部（TurnManager）调用的唯一入口
        public void TakeControl(MapUnit enemyUnit)
        {
            StartCoroutine(EnemyAILogic(enemyUnit));
        }

        private IEnumerator EnemyAILogic(MapUnit enemyUnit)
        {
            //TODO  目前的ai逻辑很简单，只是随机攻击在范围内的玩家单位
            Debug.Log($"[AI] {enemyUnit.name} 正在思考...");
            
            // 1. 思考停顿
            //yield return new WaitForSeconds(0.5f);

            List<MapUnit> playerUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Player);
            MapUnit targetToAttack = null;

            // 2. 寻找目标
            foreach (var player in playerUnits)
            {
                if (player.Character.statSystem.currentHP > 0 && enemyUnit.CanAttack(player))
                {
                    targetToAttack = player;
                    break; 
                }
            }

            // 3. 执行决策
            if (targetToAttack != null)
            {
                Debug.Log($"[AI] {enemyUnit.name} 决定攻击 {targetToAttack.name}！");
                
                AttackCommand attackCmd = new AttackCommand(enemyUnit, targetToAttack, enemyUnit.NormalAttackSkill);
                
                yield return Tool.WaitUntilCommandFinish(attackCmd);
                
                yield return new WaitForSeconds(0.5f);
            }
            else
            {
                Debug.Log($"[AI] {enemyUnit.name} 攻击范围内没有目标，原地待机。");
                yield return new WaitForSeconds(0.5f); 
            }

            // 4. 移交控制权：通知 TurnManager 回合结束
            TurnManager.Instance.EndCurrentUnitTurn();
        }
    }
}