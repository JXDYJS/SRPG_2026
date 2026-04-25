using UnityEngine;
using System.Collections.Generic;
using Managers;
using Character;
using Character.instance;
namespace Grid{
    public class TacticalMapManager : MonoBehaviour
    {
        public static TacticalMapManager Instance { get; private set; }

        // 威胁图：由玩家单位产生（负面分数）
        public InfluenceMapLayer ThreatMap { get; private set; } = new InfluenceMapLayer();
        
        // 战略图：由导演/目标产生（正面分数）
        public InfluenceMapLayer StrategicMap { get; private set; } = new InfluenceMapLayer();

        // --- 战略图 (Strategic Map) 的更新 ---
        // 这个通常在回合开始，或者接取新任务时更新。不需要频繁刷。
        public void UpdateStrategicMap(TacticalGoal currentGoal)
        {
            StrategicMap.Clear();
            // 伪代码：如果当前目标是占领(10, 0, 10)，就在该点周围涂抹高分
            // StrategicMap.AddScore(new Vector3Int(10,0,10), 100f);
        }

        // --- 威胁图 (Threat Map) 的更新 ---
        // 核心：每次 AI 准备思考前，调用这个方法！
        public float getThreatRange(int min,int max,int var)
        {
            if(var <= min) return 0f;
            if(var >= max) return 1f;
            return (var - min) / (max - min);
        }
        public float getThreatRange(Vector2 range,int var)
        {
            return getThreatRange((int)range.x,(int)range.y,var);   
        }
        public void RebuildThreatMapSnapshot()
        {
            ThreatMap.Clear();
            
            var alivePlayers = UnitManager.Instance.GetAllAlivePlayers();
            
            foreach (var player in alivePlayers)
            {
                if (player.Character == null) continue;
                
                // 获取该玩家当前的威胁半径（最大技能范围 + 移动距离）
                int attackRange = player.getNormalAttackSkill()?.CastMaxRange ?? 1;
                int threatRadius = attackRange + player.Character.characterData.MoveRange; // 普攻+移动能到达的范围就是威胁范围
                
                UnitClassSO playerClass = player.GetClass();
                CharacterInstance playerInstance = player.Character;
                var playerStatus = playerInstance.statSystem;
                
                // 计算各项属性的标准化威胁评分 = 百分比 * 系数
                float CalculateAttributeThreat(float value, Vector2 range, float coeff)
                {
                    float normalized = Mathf.Clamp01((value - range.x) / (range.y - range.x));
                    return normalized * coeff;
                }
                
                // 各项属性威胁计算
                float atk = playerStatus.ATK.getValue();
                float atkThreat = CalculateAttributeThreat(atk, playerClass.atkRange, playerClass.atkThreat);
                
                float def = playerStatus.DEF.getValue();
                float defThreat = CalculateAttributeThreat(def, playerClass.defRange, playerClass.defThreat);
                
                float hp = playerStatus.maxHP.getValue();
                float hpThreat = CalculateAttributeThreat(hp, playerClass.hpRange, playerClass.hpThreat);
                
                float moveRange =  player.Character.characterData.MoveRange + playerClass.BonusMovementPoints;
                float moveThreat = CalculateAttributeThreat(moveRange, playerClass.moveRangeRange, playerClass.moveRangeThreat);
                
                // 法抗已经是百分比，直接使用区间换算
                float res = playerStatus.RES.getValue();
                float resThreat = CalculateAttributeThreat(res, playerClass.resRange, playerClass.resThreat);
                
                float speed = playerStatus.Speed.getValue();
                float speedThreat = CalculateAttributeThreat(speed, playerClass.speedRange, playerClass.speedThreat);
                
                // 攻击距离威胁
                float attackDist = attackRange;
                float attackDistThreat = CalculateAttributeThreat(attackDist, playerClass.attackDistanceRange, playerClass.attackDistanceThreat);
                
                // 技能范围威胁 - TODO: 需要遍历所有技能获取最大范围，这里先用普攻近似
                // 如果需要更精确计算，替换为遍历所有技能并找到最大射程
                float maxSkillRange = attackRange;
                var allSkills = player.GetAvailableSkills();
                foreach (var skill in allSkills)
                {
                    if (skill.CastMaxRange > maxSkillRange)
                        maxSkillRange = skill.CastMaxRange;
                }
                float skillRangeThreat = CalculateAttributeThreat(maxSkillRange, playerClass.skillRangeDistanceRange, playerClass.skillRangeDistanceThreat);
                
                // 总计所有威胁，并根据AI性格倾向加权
                float totalThreat = 
                    atkThreat + defThreat + hpThreat + 
                    moveThreat + resThreat + speedThreat + 
                    attackDistThreat + skillRangeThreat;
                
                // 基础威胁分数，受攻击性加成
                float baseThreat = totalThreat * 10f * playerClass.Aggressiveness;
                
                // 遍历玩家周围的方块格子
                // var affectedTiles = GridUtils.GetTilesInRadius(player.gridPosition, threatRadius);
                
                // foreach (var tile in affectedTiles)
                // {
                //     // 距离越近，威胁越大 (线性衰减)
                //     int dist = GridUtils.GetManhattanDistance(player.gridPosition, tile);
                //     float falloffScore = baseThreat * (1f - (float)dist / (threatRadius + 1));
                    
                //     ThreatMap.AddScore(tile, falloffScore);
                // }
            }
        }
    }
}