using UnityEngine;
using System.Collections.Generic;
using Managers;
using Character;
using Character.instance;
using GamePlay.Units;

namespace Grid
{
    /// <summary>
    /// 战术地图管理器（纯C#单例，不依赖MonoBehaviour）
    /// 管理威胁图与战略图，支持增量分帧重建。
    /// 由 TurnManager 的事件驱动后台重建，AITaskSystem 消费侧等待完成。
    /// </summary>
    public class TacticalMapManager
    {
        public static TacticalMapManager Instance { get; } = new TacticalMapManager();

        // 威胁图：由玩家单位产生（负面分数）
        public InfluenceMapLayer ThreatMap { get; } = new InfluenceMapLayer();

        // 战略图：由导演/目标产生（正面分数）
        public InfluenceMapLayer StrategicMap { get; } = new InfluenceMapLayer();

        // ================ 增量重建状态机 ================

        private List<MapUnit> _pendingRebuildUnits;
        private int _pendingRebuildIndex;

        /// <summary>
        /// 增量重建是否已完成（无重建进行中或全部处理完毕）
        /// </summary>
        public bool IsRebuildComplete =>
            _pendingRebuildUnits == null || _pendingRebuildIndex >= _pendingRebuildUnits.Count;

        /// <summary>后台已处理的单位数（诊断用）</summary>
        public int BackgroundProcessedCount => _pendingRebuildIndex;

        /// <summary>本次重建待处理的总单位数（诊断用）</summary>
        public int TotalRebuildCount => _pendingRebuildUnits?.Count ?? 0;

        /// <summary>是否曾经启动过重建（区分"已完成"与"从未开始"）</summary>
        public bool HasRebuildEverStarted { get; private set; }

        /// <summary>
        /// 开始增量重建：清空威胁图，快照当前存活玩家列表。
        /// 由 TurnManager.OnUnitTurnEnded 事件触发。
        /// </summary>
        public void BeginIncrementalRebuild()
        {
            ThreatMap.Clear();
            _pendingRebuildUnits = new List<MapUnit>(UnitManager.Instance.GetAllAlivePlayers());
            _pendingRebuildIndex = 0;
            HasRebuildEverStarted = true;
        }

        /// <summary>
        /// 每帧处理 1 个玩家单位的威胁计算。
        /// 返回 true 表示本次 Tick 完成了最后一个单位。
        /// </summary>
        public bool TickIncrementalRebuild()
        {
            if (IsRebuildComplete) return true;

            var player = _pendingRebuildUnits[_pendingRebuildIndex];
            if (player != null && player.Character != null)
            {
                RebuildThreatForUnit(player);
            }

            _pendingRebuildIndex++;
            return IsRebuildComplete;
        }

        /// <summary>
        /// 强制同步完成所有剩余的重建工作（兜底用）。
        /// 由 AITaskSystem 在敌人行动前调用。
        /// </summary>
        public void CompleteIncrementalRebuild()
        {
            while (!IsRebuildComplete)
                TickIncrementalRebuild();
        }

        // ================ 同步全量重建（兼容旧调用） ================

        /// <summary>
        /// 同步全量重建威胁图（Debug 等场景使用）。
        /// AI 流程使用增量重建 + WaitUntil 代替。
        /// </summary>
        public void RebuildThreatMapSnapshot()
        {
            BeginIncrementalRebuild();
            CompleteIncrementalRebuild();
        }

        // ================ 单单位威胁计算（提取自原循环体） ================

        private void RebuildThreatForUnit(MapUnit player)
        {
            UnitClassSO playerClass = player.GetClass();
            CharacterInstance playerInstance = player.Character;
            var playerStatus = playerInstance.statSystem;

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

        // ================ 战略图 ================

        // 这个通常在回合开始，或者接取新任务时更新。不需要频繁刷。
        public void UpdateStrategicMap(TacticalGoal currentGoal)
        {
            StrategicMap.Clear();
            // 伪代码：如果当前目标是占领(10, 0, 10)，就在该点周围涂抹高分
            // StrategicMap.AddScore(new Vector3Int(10,0,10), 100f);
        }

        // ================ 辅助方法 ================

        public float getThreatRange(int min, int max, int var)
        {
            if (var <= min) return 0f;
            if (var >= max) return 1f;
            return (var - min) / (max - min);
        }

        public float getThreatRange(Vector2 range, int var)
        {
            return getThreatRange((int)range.x, (int)range.y, var);
        }
    }
}