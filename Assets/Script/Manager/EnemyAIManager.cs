using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using GamePlay.Units;
using GamePlay.Grid;
using Global;
using Command;
using Managers;
using GamePlay.Skill;
using Utils;
using Grid;
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
            if (enemyUnit == null)
            {
                Debug.LogError("TakeControl : enemyUnit is null");
                return;
            }
            if (TacticalMapManager.Instance == null)
            {
                Debug.LogError("TakeControl : TacticalMapManager is null");
                return;
            }
            TacticalMapManager.Instance.RebuildThreatMapSnapshot();
            StartCoroutine(EnemyAILogic(enemyUnit));
        }

        private IEnumerator EnemyAILogic(MapUnit enemyUnit)
        {
            Debug.Log($"[AI] {enemyUnit.name} 正在思考...");

            InfluenceMapLayer threatMap = TacticalMapManager.Instance.ThreatMap;
            List<MapUnit> playerUnits = UnitManager.Instance.GetUnitsByFaction(FactionType.Player);

            // 获取所有可移动到的位置（包含当前位置）
            int moveRange = (int)enemyUnit.Character.statSystem.moveRange.getValue();
            HashSet<Vector3Int> reachableTiles = AStar.GetReachableTiles(
                enemyUnit.gridPosition, moveRange,
                MapManager.Instance.logicalGrid, enemyUnit.moveStats);

            // 寻找最佳攻击位置：可打到人 + 威胁度最低
            Vector3Int? bestMovePos = null;
            MapUnit bestTarget = null;
            float bestThreat = float.MaxValue;

            foreach (Vector3Int movePos in reachableTiles)
            {
                if (movePos != enemyUnit.gridPosition)
                {
                    MapUnit occupyingUnit = UnitManager.Instance.GetUnitAt(movePos);
                    if (occupyingUnit != null) continue;
                }

                List<Vector3Int> attackRange = AttackRangeSystem.GetCastRange3D(movePos, enemyUnit.NormalAttackSkill);

                foreach (MapUnit player in playerUnits)
                {
                    if (player.Character.statSystem.currentHP <= 0) continue;
                    if (!attackRange.Contains(player.gridPosition)) continue;

                    float threat = threatMap.GetScore(movePos);
                    if (threat < bestThreat)
                    {
                        bestThreat = threat;
                        bestMovePos = movePos;
                        bestTarget = player;
                    }
                }
            }

            if (bestMovePos != null && bestTarget != null)
            {
                Debug.Log(
                    $"[AI] {enemyUnit.name} 选择移动到 {bestMovePos.Value} (威胁度:{bestThreat}) 攻击 {bestTarget.name}");

                // 移动到目标位置（如果不是当前位置）
                if (bestMovePos.Value != enemyUnit.gridPosition && enemyUnit.CanMove)
                {
                    List<Vector3Int> path = AStar.FindPath(
                        enemyUnit.gridPosition, bestMovePos.Value,
                        MapManager.Instance.logicalGrid, enemyUnit.moveStats);

                    if (path != null && path.Count > 0)
                    {
                        MoveCommand moveCmd = new MoveCommand(enemyUnit, path);
                        yield return Tool.WaitUntilCommandFinish(moveCmd);
                        yield return new WaitForSeconds(0.3f);
                    }
                }

                // 攻击
                if (enemyUnit.CanAction)
                {
                    SkillTargetContext context = new SkillTargetContext(
                        bestTarget.gridPosition,
                        new List<MapUnit> { bestTarget }
                    );

                    SkillCommand skillCmd = new SkillCommand(
                        enemyUnit,
                        enemyUnit.NormalAttackSkill,
                        context
                    );

                    yield return Tool.WaitUntilCommandFinish(skillCmd);
                    yield return new WaitForSeconds(0.5f);
                }
            }
            else
            {
                Debug.Log($"[AI] {enemyUnit.name} 找不到可攻击的位置，原地待机。");
                yield return new WaitForSeconds(0.5f);
            }

            TurnManager.Instance.EndCurrentUnitTurn();
        }
    }
}
