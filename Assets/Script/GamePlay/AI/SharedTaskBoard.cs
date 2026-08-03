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
        private Dictionary<MapUnit,float> _strategicScore = new();

        /// <summary>
        /// 按单位承诺：unit -> 它当前计划要攻击/支援的目标列表
        /// 由 AI 选定任务时整体重建（UpdateUnitCommitments），因此承诺自带时效、无需清空点
        /// </summary>
        private Dictionary<MapUnit, List<MapUnit>> _unitCommitments = new();
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

            // 承诺数据（_unitCommitments）无需在此刷新：
            // 每个单位在自己选定任务时整体重建列表，旧承诺自动失效
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

        // ==============================================================
        // 承诺系统 — 按单位自管承诺列表
        // 每个单位在 AI 选定任务时调用 UpdateUnitCommitments 整体重建自己的承诺，
        // 因此承诺时效绑定"该单位最近一次决策"，无需全局清空点。
        // ==============================================================

        /// <summary>
        /// 重建某个单位的承诺目标列表（整体替换实现自过期）。
        /// targets 为 null/空 表示该单位当前没有承诺任何目标（移动/防御/待机等）。
        /// </summary>
        public void UpdateUnitCommitments(MapUnit unit, List<MapUnit> targets)
        {
            if (unit == null) return;
            if (targets == null || targets.Count == 0)
            {
                _unitCommitments.Remove(unit);
            }
            else
            {
                _unitCommitments[unit] = targets;
            }
        }

        /// <summary>
        /// 原始承诺因子 (0~1)：统计除 actingUnit 外，有多少存活单位正承诺打/支援 target。
        /// ≤crewMin → 1.0；≥crewMax → 0.0；中间线性递减。
        /// </summary>
        public float GetCommitmentFactor(MapUnit actingUnit, MapUnit target, AITaskType taskType)
        {
            if (target == null)
            {
                return 1f;
            }

            int count = 0;
            foreach (var kv in _unitCommitments)
            {
                MapUnit unit = kv.Key;
                if (unit == null || unit == actingUnit || !unit.IsAlive)
                {
                    continue;
                }
                if (kv.Value == null || !kv.Value.Contains(target))
                {
                    continue;
                }
                count++;
            }

            (float min, float max) = GetCrewRange(taskType);
            if (max <= 0f)
            {
                return 1f;
            }
            return LinearStep(min, max, count);
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
            _unitCommitments.Remove(target);
            foreach (var kv in _unitCommitments)
            {
                kv.Value?.Remove(target);
            }
            _strategicScore.Remove(target);
        }

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
