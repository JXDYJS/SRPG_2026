using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using GamePlay.Units;
using GamePlay.Grid;
using GamePlay.AI.Tasks;
using Global;
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
            RefreshCoverage();
        }

        public void RoundEnd()
        {
            _roundPrepared = false;
            _coverageTable.Clear();
            _attackCounts.Clear();
            _skillCounts.Clear();
            _supportCounts.Clear();
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

        public void RegisterCommitment(MapUnit target, AITaskType taskType)
        {
            var dict = GetCommitDict(taskType);
            if (dict == null) return;
            dict.TryGetValue(target, out int count);
            dict[target] = count + 1;
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

        public void TargetDied(MapUnit target)
        {
            _coverageTable.Remove(target);
            _attackCounts.Remove(target);
            _skillCounts.Remove(target);
            _supportCounts.Remove(target);
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
