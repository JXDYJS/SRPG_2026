using UnityEngine;
using System.Collections.Generic;
using Managers;
using Character;
using Character.instance;
namespace Grid{
    public class TacticalMapManager : MonoBehaviour
    {
        public static TacticalMapManager Instance { get; private set; }
        private void Awake()
        {
            Instance = this;
        }

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
                
                // moveThreat: 移动力对威胁感知强度的影响
                // 注：空间覆盖已由下面的 GetAllPossibleAttackRange() 精确捕获，
                // moveThreat 仅影响每个格子的威胁强度，与空间覆盖正交
                float moveRange = (int)player.Character.statSystem.moveRange.getValue() + playerClass.BonusMovementPoints;
                float moveThreat = CalculateAttributeThreat(moveRange, playerClass.moveRangeRange, playerClass.moveRangeThreat);
                
                // 法抗已经是百分比，直接使用区间换算
                float res = playerStatus.RES.getValue();
                float resThreat = CalculateAttributeThreat(res, playerClass.resRange, playerClass.resThreat);
                
                float speed = playerStatus.Speed.getValue();
                float speedThreat = CalculateAttributeThreat(speed, playerClass.speedRange, playerClass.speedThreat);
                
                // 攻击距离威胁
                float attackRange = player.NormalAttackSkill?.CastMaxRange ?? 1;
                float attackDistThreat = CalculateAttributeThreat(attackRange, playerClass.attackDistanceRange, playerClass.attackDistanceThreat);
                
                // 技能范围威胁
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
                
                float baseThreat = totalThreat * 10f * playerClass.Aggressiveness;
                
                // 使用精确的移动+攻击威胁范围（含寻路与攻击形状）
                var affectedTiles = player.GetAllPossibleAttackRange();
                
                // 计算最大曼哈顿距离用于威胁衰减
                int maxDist = (int)moveRange + (int)maxSkillRange;
                if (maxDist <= 0) maxDist = 1;
                
                foreach (var tile in affectedTiles)
                {
                    int dist = Mathf.Abs(player.gridPosition.x - tile.x) + Mathf.Abs(player.gridPosition.z - tile.z);
                    float falloffScore = baseThreat * (1f - (float)dist / (maxDist + 1));
                    ThreatMap.AddScore(tile, Mathf.Max(0f, falloffScore));
                }
            }
        }
    }
}