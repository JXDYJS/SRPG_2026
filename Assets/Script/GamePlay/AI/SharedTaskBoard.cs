using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using GamePlay.Units;
using GamePlay.Grid;
using GamePlay.AI.Tasks;
using Grid;
using Global;
using Character;
using Core.Data;

namespace GamePlay.AI
{
    public class SharedTaskBoard : MonoBehaviour
    {
        public static SharedTaskBoard Instance { get; private set; }

        private Dictionary<MapUnit, List<MapUnit>> _coverageTable = new();
        private Dictionary<MapUnit, int> _attackCounts = new();
        private Dictionary<MapUnit, int> _skillCounts = new();
        private Dictionary<MapUnit, int> _supportCounts = new();
        private Dictionary<MapUnit,float> _strategicScore = new();
        private Dictionary<MapUnit, float> _committedDamage = new();
        private bool _roundPrepared;

        public void Awake()
        {
            if (Instance != null) return;
            Instance = this;
        }

        public void RoundStart()
        {
            if (_roundPrepared) return;
            _roundPrepared = true;

            // 承诺数据（committedDamage / 认领计数）跨回合持久携带
            // 只有单位阵亡时 TargetDied() 才会清理对应条目
            // 这里只刷新可变的覆盖率和战略评分
            RefreshCoverage();
            RefreshStrategicScores();
        }

        /// <summary>
        /// 敌方阶段结束，允许下一轮 RoundStart 刷新覆盖率和战略评分
        /// </summary>
        public void OnPlayerTurnStart()
        {
            _roundPrepared = false;
        }

        public void RoundEnd()
        {
            _roundPrepared = false;
            _coverageTable.Clear();
            _attackCounts.Clear();
            _skillCounts.Clear();
            _supportCounts.Clear();
            _strategicScore.Clear();
            _committedDamage.Clear();
        }

        private void RefreshCoverage()
        {
            _coverageTable.Clear();
            var allUnits = Managers.UnitManager.Instance.GetAllAliveUnit();
            foreach (var unit in allUnits)
            {
                _coverageTable[unit] = new List<MapUnit>();
                var unitsInRange = AStar.GetUnitInRangeFuzzy(unit);
                foreach (var other in unitsInRange)
                {
                    _coverageTable[unit].Add(other);
                }
            }
        }

        public int GetCoverageCount(MapUnit target, FactionType? faction = null)
        {
            if (!_coverageTable.TryGetValue(target, out var list))
                return 0;
            if (faction == null)
                return list.Count;
            return list.Count(u => u.Faction == faction);
        }

        public void RegisterCommitment(MapUnit target, AITaskType taskType, float estimatedDamage = 0f)
        {
            var dict = GetCommitDict(taskType);
            if (dict != null)
            {
                dict.TryGetValue(target, out int count);
                dict[target] = count + 1;
            }

            if (estimatedDamage > 0f)
            {
                _committedDamage.TryGetValue(target, out float current);
                _committedDamage[target] = current + estimatedDamage;
            }
        }

        public int GetCommitmentCount(MapUnit target, AITaskType taskType)
        {
            var dict = GetCommitDict(taskType);
            if (dict == null) return 0;
            dict.TryGetValue(target, out int count);
            return count;
        }

        /// <summary>
        /// 根据已认领人数和类型返回挤占系数
        /// ≤crewMin → 1.0，≥crewMax → 0.0，中间线性递减
        /// </summary>
        public float GetCrewFactor(MapUnit target, AITaskType taskType)
        {
            (float min, float max) = GetCrewRange(taskType);
            if (max <= 0f) return 1f;
            int count = GetCommitmentCount(target, taskType);
            return LinearStep(min, max, count);
        }

        /// <summary>
        /// 获取已承诺的伤害总量
        /// </summary>
        public float GetCommittedDamage(MapUnit target)
        {
            if (_committedDamage.TryGetValue(target, out float damage))
                return damage;
            return 0f;
        }

        /// <summary>
        /// 过杀惩罚因子（0~1）
        /// 1.0 = 可以继续攻击; 0.0 = 目标已有足够承诺伤害，不应再攻击
        /// 当 committedDamage / remainingHP ≤ thresholdRatio → 1.0
        /// 当 committedDamage / remainingHP ≥ thresholdRatio + fullKillMargin → 0.0
        /// 中间线性递减
        /// </summary>
        public float GetOverkillPenalty(MapUnit target)
        {
            if (target == null || target.Character == null)
                return 1f;

            float remainingHP = target.Character.statSystem.currentHP;
            if (remainingHP <= 0f)
                return 0f;

            float committed = GetCommittedDamage(target);
            if (committed <= 0f)
                return 1f;

            float ratio = committed / remainingHP;
            float threshold = Data.Config.AIConfig.overkillThresholdRatio;
            float margin = Data.Config.AIConfig.overkillFullKillMargin;

            if (ratio <= threshold)
                return 1f;
            if (ratio >= threshold + margin)
                return 0f;
            return 1f - (ratio - threshold) / margin;
        }

        // ==============================================================
        // 战略评分系统 — 每个单位的综合战术价值 (0~1)
        // ==============================================================
        private void RefreshStrategicScores()
        {
            _strategicScore.Clear();
            var allUnits = Managers.UnitManager.Instance.GetAllAliveUnit();
            if (allUnits == null || allUnits.Count == 0) return;

            InfluenceMapLayer threatMap = TacticalMapManager.Instance?.ThreatMap;
            float threatBase = Data.Config.AIConfig.threatNormalizeBase;
            float wHP = Data.Config.AIConfig.strategicWeight_HPUrgency;
            float wThreat = Data.Config.AIConfig.strategicWeight_Threat;
            float wRole = Data.Config.AIConfig.strategicWeight_Role;
            float wCov = Data.Config.AIConfig.strategicWeight_Coverage;

            foreach (var unit in allUnits)
            {
                float hpPercent = (float)unit.Character.statSystem.currentHP
                                / unit.Character.statSystem.maxHP.getValue();
                float hpUrgency = 1f - hpPercent;

                float threatScore = 0f;
                if (threatMap != null)
                    threatScore = Mathf.Clamp01(threatMap.GetScore(unit.gridPosition) / threatBase);

                float roleScore = 0.5f;
                var unitClass = unit.GetClass();
                if (unitClass != null)
                    roleScore = Mathf.Max(unitClass.Aggressiveness, unitClass.Supportiveness) * 0.8f + 0.2f;

                float coverageScore = 0f;
                if (_coverageTable.TryGetValue(unit, out var covered))
                    coverageScore = Mathf.Clamp01(covered.Count / 10f);

                float score = wHP * hpUrgency + wThreat * threatScore
                            + wRole * roleScore + wCov * coverageScore;
                _strategicScore[unit] = Mathf.Clamp01(score);
            }
        }

        /// <summary>
        /// 获取单位的战略价值分 (0~1)。未计算时返回 0.5 (中性)。
        /// </summary>
        public float GetStrategicScore(MapUnit unit)
        {
            if (_strategicScore.TryGetValue(unit, out float score))
                return score;
            return 0.5f;
        }

        public void TargetDied(MapUnit target)
        {
            _coverageTable.Remove(target);
            _attackCounts.Remove(target);
            _skillCounts.Remove(target);
            _supportCounts.Remove(target);
            _committedDamage.Remove(target);
        }

        private Dictionary<MapUnit, int> GetCommitDict(AITaskType type) => type switch
        {
            AITaskType.Attack => _attackCounts,
            AITaskType.Skill => _skillCounts,
            AITaskType.Support => _supportCounts,
            _ => null
        };

        private (float min, float max) GetCrewRange(AITaskType type) => type switch
        {
            AITaskType.Attack => (Data.Config.AIConfig.attackCrewMin, Data.Config.AIConfig.attackCrewMax),
            AITaskType.Skill => (Data.Config.AIConfig.skillCrewMin, Data.Config.AIConfig.skillCrewMax),
            AITaskType.Support => (Data.Config.AIConfig.supportCrewMin, Data.Config.AIConfig.supportCrewMax),
            _ => (0f, 0f)
        };

        /// <summary>
        /// val ≤ min → 1.0，val ≥ max → 0.0
        /// </summary>
        private static float LinearStep(float min, float max, float val)
        {
            if (val <= min) return 1f;
            if (val >= max) return 0f;
            return 1f - (val - min) / (max - min);
        }
    }
}
