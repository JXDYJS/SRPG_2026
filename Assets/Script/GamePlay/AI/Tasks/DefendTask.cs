using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Grid;
using Core.Data;

namespace GamePlay.AI.Tasks
{
    public class DefendTask : AITask
    {
        public Vector3Int SafePosition { get; private set; }
        private MapUnit _claimedUnit;

        public DefendTask(Vector3Int safePos, float basePriority)
            : base(AITaskType.Defend, basePriority)
        {
            SafePosition = safePos;
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
            if (unit.Character == null || unit.Character.statSystem.currentHP <= 0)
            {
                return 0f;
            }

            // 安全位置被其他单位占据则无法前往
            if (SafePosition != unit.gridPosition)
            {
                MapUnit occupying = UnitManager.Instance.GetUnitAt(SafePosition);
                if (occupying != null)
                {
                    return 0f;
                }
            }

            InfluenceMapLayer threatMap = TacticalMapManager.Instance.ThreatMap;

            float currentThreat = threatMap.GetScore(unit.gridPosition);
            float safeThreat = threatMap.GetScore(SafePosition);

            // 1. HP 紧迫度：血量越低越需要防守
            float hpPercent = (float)unit.Character.statSystem.currentHP
                            / unit.Character.statSystem.maxHP.getValue();
            float hpUrgency = 1.0f - hpPercent;

            // 2. 危险紧迫度：当前位置威胁越高越需要撤退
            float dangerUrgency = Mathf.Clamp01(currentThreat / Data.Config.AIConfig.dangerThreatThreshold);

            // 3. 安全改善度：新位置威胁降低了多少比例
            float safetyImprovement = 0f;
            if (currentThreat > 0f)
            {
                safetyImprovement = Mathf.Clamp01((currentThreat - safeThreat) / currentThreat);
            }

            // 4. 距离效用：越近越好
            int moveRange = (int)unit.Character.statSystem.moveRange.getValue();
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - SafePosition.x)
                              + Mathf.Abs(unit.gridPosition.z - SafePosition.z);
            float distanceUtility = 1.0f - Mathf.Clamp01((float)manhattanDist / (moveRange + 1));

            // 5. 综合效用
            float wHP      = Data.Config.AIConfig.defendWeight_HPUrgency;
            float wDanger  = Data.Config.AIConfig.defendWeight_DangerUrgency;
            float wSafety  = Data.Config.AIConfig.defendWeight_SafetyImprovement;
            float wDist    = Data.Config.AIConfig.defendWeight_Distance;

            return wHP      * hpUrgency
                 + wDanger  * dangerUrgency
                 + wSafety  * safetyImprovement
                 + wDist    * distanceUtility;
        }

        // ──────────────────────────────────────
        // GeneratePlan
        // ──────────────────────────────────────
        public override AIPlan GeneratePlan(MapUnit unit, AITaskContext ctx)
        {
            AIPlan plan = new AIPlan();

            // 1. 如果不在安全位置，移动过去
            if (unit.gridPosition != SafePosition && unit.CanMove)
            {
                plan.AddStep(AIPlanStep.Move(SafePosition));
            }

            // 2. 如果可行，使用防御技能（治疗/自buff）
            if (unit.CanAction)
            {
                SkillDataSO defendSkill = SelectBestDefensiveSkill(unit);
                if (defendSkill != null)
                {
                    plan.AddStep(AIPlanStep.UseSkill(defendSkill, unit));
                }
                else
                {
                    plan.AddStep(AIPlanStep.Wait(0.5f));
                }
            }

            return plan;
        }

        // ──────────────────────────────────────
        // EstimatedDistanceTo
        // ──────────────────────────────────────
        public override float EstimatedDistanceTo(MapUnit unit)
        {
            int manhattanDist = Mathf.Abs(unit.gridPosition.x - SafePosition.x)
                              + Mathf.Abs(unit.gridPosition.z - SafePosition.z);
            return manhattanDist;
        }

        // ──────────────────────────────────────
        // IsCompleted / IsFailed
        // ──────────────────────────────────────
        public override bool IsCompleted()
        {
            return _claimedUnit != null && _claimedUnit.gridPosition == SafePosition;
        }

        public override bool IsFailed()
        {
            // 安全位置被其他单位占据则任务失败
            MapUnit occupying = UnitManager.Instance.GetUnitAt(SafePosition);
            return occupying != null;
        }

        // ==============================================================
        // 私有辅助方法
        // ==============================================================

        /// <summary>
        /// 选择最适合的防御技能（治疗/自buff）
        /// 优先选择能最大化治疗量或提供增益的技能
        /// </summary>
        private SkillDataSO SelectBestDefensiveSkill(MapUnit unit)
        {
            SkillDataSO bestSkill = null;
            float bestScore = -1f;

            List<SkillDataSO> candidates = unit.GetActiveSkills();
            if (candidates == null || candidates.Count == 0)
            {
                return null;
            }

            foreach (SkillDataSO skill in candidates)
            {
                if (skill == null)
                {
                    continue;
                }

                if (!IsDefensiveSkill(skill))
                {
                    continue;
                }

                float score = 0f;

                // 治疗技能：估计治疗效用
                if (HasHealEffect(skill))
                {
                    float healUtility = EstimateHealUtility(unit, skill);
                    score += healUtility * 2.0f; // 治疗权重较高
                }
                //TODO 这里并没有详细评估防御技能
                // Buff 技能：固定基础价值
                if (HasBuffEffect(skill))
                {
                    score += 0.3f;
                }

                if (score > bestScore)
                {
                    bestScore = score;
                    bestSkill = skill;
                }
            }

            return bestSkill;
        }

        /// <summary>
        /// 基于 AIBehavior 判断技能是否为防御/支援型技能
        /// </summary>
        private bool IsDefensiveSkill(SkillDataSO skill)
        {
            return skill.IsSupportiveSkill();
        }

        /// <summary>
        /// 检查技能是否包含 Heal 效果
        /// </summary>
        private bool HasHealEffect(SkillDataSO skill)
        {
            if (skill.Phases == null)
            {
                return false;
            }

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null)
                {
                    continue;
                }

                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.Heal)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        /// <summary>
        /// 检查技能是否包含 AddBuff 效果
        /// </summary>
        private bool HasBuffEffect(SkillDataSO skill)
        {
            if (skill.Phases == null)
            {
                return false;
            }

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null)
                {
                    continue;
                }

                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.AddBuff)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        /// <summary>
        /// 估算技能的治疗量
        /// </summary>
        private float EstimateHealValue(MapUnit caster, SkillDataSO skill)
        {
            if (skill.Phases == null)
            {
                return 0f;
            }

            int casterATK = (int)caster.Character.statSystem.ATK.getValue();
            float totalHeal = 0f;

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null)
                {
                    continue;
                }

                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.Heal)
                    {
                        totalHeal += effect.CalculateValue(casterATK);
                    }
                }
            }

            return totalHeal;
        }

        /// <summary>
        /// 治疗效用：治疗量 / 缺失HP（0~1，超出部分截断）
        /// </summary>
        private float EstimateHealUtility(MapUnit caster, SkillDataSO skill)
        {
            float estimatedHeal = EstimateHealValue(caster, skill);
            float maxHP = caster.Character.statSystem.maxHP.getValue();
            float missingHP = maxHP - caster.Character.statSystem.currentHP;

            if (missingHP <= 0f)
            {
                return 0f;
            }

            return Mathf.Clamp01(estimatedHeal / missingHP);
        }
    }
}
