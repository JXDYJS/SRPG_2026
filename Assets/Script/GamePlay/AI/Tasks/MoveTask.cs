using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Grid;
using GamePlay.Units;
using Grid;
using Core.Data;

namespace GamePlay.AI.Tasks
{
    public class MoveTask : AITask
    {
        public Vector3Int TargetPosition { get; private set; }
        private MapUnit _claimedUnit;

        public MoveTask(Vector3Int targetPos, float basePriority) : base(AITaskType.Move, basePriority)
        {
            TargetPosition = targetPos;
        }

        protected override void OnClaimed(MapUnit unit)
        {
            _claimedUnit = unit;
        }

        // ──────────────────────────────────────
        // CalculateUtilityFor
        // ──────────────────────────────────────
        public override float CalculateUtilityFor(MapUnit unit, AITaskContext ctx)
        {
            // 0. 前置检查
            if (unit == null || !unit.IsAlive)
            {
                return 0f;
            }

            if (!unit.CanMove)
            {
                return 0f;
            }

            // 已在目标位置，无需移动
            if (unit.gridPosition == TargetPosition)
            {
                return 0f;
            }

            // 目标位置被其他单位占据则无法前往
            MapUnit occupying = UnitManager.Instance.GetUnitAt(TargetPosition);
            if (occupying != null)
            {
                return 0f;
            }

            // 1. 可达性检查（复用预计算上下文）
            if (!ctx.ReachableTiles.Contains(TargetPosition))
            {
                return 0f;
            }

            // 2. 距离效用：越近越好
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - TargetPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - TargetPosition.z);
            float distanceUtility = 1.0f - Mathf.Clamp01((float)manhattanDist / (ctx.MoveRange + 1));

            // 3. 位置安全性效用：优先选择威胁更低的移动目标
            InfluenceMapLayer threatMap = ctx.ThreatMap;
            float currentThreat = threatMap.GetScore(unit.gridPosition);
            float targetThreat = threatMap.GetScore(TargetPosition);
            float totalThreat = currentThreat + targetThreat;
            float safetyUtility = totalThreat > 0.01f
                ? 1.0f - Mathf.Clamp01(targetThreat / totalThreat)
                : 0.5f;

            // 4. 综合效用
            return 0.5f * distanceUtility + 0.5f * safetyUtility;
        }

        // ──────────────────────────────────────
        // GeneratePlan
        // ──────────────────────────────────────
        public override AIPlan GeneratePlan(MapUnit unit, AITaskContext ctx)
        {
            AIPlan plan = new AIPlan();

            if (unit.CanMove && unit.gridPosition != TargetPosition)
            {
                plan.AddStep(AIPlanStep.Move(TargetPosition));
            }
            else
            {
                plan.AddStep(AIPlanStep.Wait(Data.Config.AIConfig.planStepWaitSeconds));
            }

            return plan;
        }

        // ──────────────────────────────────────
        // EstimatedDistanceTo
        // ──────────────────────────────────────
        public override float EstimatedDistanceTo(MapUnit unit)
        {
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - TargetPosition.x)
                              + Mathf.Abs(unit.gridPosition.z - TargetPosition.z);
            return manhattanDist;
        }

        // ──────────────────────────────────────
        // IsCompleted / IsFailed
        // ──────────────────────────────────────
        public override bool IsCompleted()
        {
            return _claimedUnit != null && _claimedUnit.gridPosition == TargetPosition;
        }

        public override bool IsFailed()
        {
            // 目标位置被其他单位占据则任务失败
            MapUnit occupying = UnitManager.Instance.GetUnitAt(TargetPosition);
            return occupying != null;
        }
    }
}
