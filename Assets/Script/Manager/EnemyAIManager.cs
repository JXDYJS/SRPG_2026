using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.unit;
using Global;
using Command;
using Managers;
using GamePlay.Skill;

namespace GamePlay.AI
{
    public class EnemyAIManager : MonoBehaviour
    {
        public static EnemyAIManager Instance;

        void Awake()
        {
            Instance = this;
        }

        public void TakeControl(MapUnit enemyUnit)
        {
            StartCoroutine(EnemyAILogic(enemyUnit));
        }

        private IEnumerator EnemyAILogic(MapUnit enemyUnit)
        {
            Debug.Log($"[AI] {enemyUnit.name} 正在思考...");

            List<MapUnit> playerUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Player);
            MapUnit targetToAttack = null;

            foreach (var player in playerUnits)
            {
                if (player.Character.statSystem.currentHP > 0 && enemyUnit.CanAttack(player))
                {
                    targetToAttack = player;
                    break; 
                }
            }

            if (targetToAttack != null)
            {
                Debug.Log($"[AI] {enemyUnit.name} 决定攻击 {targetToAttack.name}！");

                SkillTargetContext context = new SkillTargetContext(
                    targetToAttack.gridPosition,
                    new List<MapUnit> { targetToAttack }
                );

                SkillCommand skillCmd = new SkillCommand(
                    enemyUnit, 
                    enemyUnit.NormalAttackSkill, 
                    context
                );

                yield return Tool.WaitUntilCommandFinish(skillCmd);

                yield return new WaitForSeconds(0.5f);
            }
            else
            {
                Debug.Log($"[AI] {enemyUnit.name} 攻击范围内没有目标，原地待机。");
                yield return new WaitForSeconds(0.5f); 
            }

            TurnManager.Instance.EndCurrentUnitTurn();
        }
    }
}
