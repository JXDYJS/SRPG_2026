using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// 共享任务板 — 跨单位协调，目前只保留"集火计数"一项职责。
    ///
    /// 集火衰减：多个队友盯上同一目标时，该目标对单个单位的边际攻击价值下降，
    /// 引导 AI 分散火力而非过度集火（在 BattleValueEvaluator 中应用）。
    ///
    /// 覆盖率/战略分子系统已随统一价值引擎废弃删除。
    /// </summary>
    public class SharedTaskBoard : MonoBehaviour
    {
        public static SharedTaskBoard Instance { get; private set; }

        /// <summary>
        /// 按单位承诺：unit -> 它当前计划要攻击的目标列表。
        /// 由 AI 选定行动时整体重建（UpdateUnitCommitments），因此承诺自带时效。
        /// </summary>
        private Dictionary<MapUnit, List<MapUnit>> _unitCommitments = new();

        public void Awake()
        {
            if (Instance != null) return;
            Instance = this;
        }

        /// <summary>
        /// 重建某个单位的承诺目标列表（整体替换实现自过期）。
        /// targets 为 null/空 表示该单位当前没有承诺任何目标。
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
        /// 集火衰减因子 (0~1)：除 actingUnit 外还有多少存活单位承诺同一目标。
        /// 每多一个队友 → 衰减 focusFirePenaltyPerUnit，下限 commitmentPenaltyFloor。
        /// </summary>
        public float GetCommitmentFactor(MapUnit actingUnit, MapUnit target)
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

            float penalty = count * Data.Config.AIConfig.focusFirePenaltyPerUnit;
            return Mathf.Max(Data.Config.AIConfig.commitmentPenaltyFloor, 1f - penalty);
        }

        /// <summary>
        /// 目标阵亡时清理其承诺记录
        /// </summary>
        public void TargetDied(MapUnit target)
        {
            if (target == null) return;
            _unitCommitments.Remove(target);
            foreach (var kv in _unitCommitments)
            {
                kv.Value?.Remove(target);
            }
        }
    }
}
