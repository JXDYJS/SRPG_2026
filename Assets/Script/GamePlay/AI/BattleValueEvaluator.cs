using System.Collections.Generic;
using UnityEngine;
using GamePlay.Buff;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Managers;
using Grid;
using Global;
using Core.Data;

namespace GamePlay.AI
{
    /// <summary>
    /// Unified battle value engine: converts all AI actions into comparable value
    /// as a fraction of effective enemy/ally HP pools (TeamHP-normalized).
    /// </summary>
    public static class BattleValueEvaluator
    {
        /// <summary>
        /// Estimates damage of a skill against a single target (simplified, skips the modifier pipeline)
        /// </summary>
        public static float EstimateDamageValue(MapUnit caster, SkillDataSO skill, MapUnit target)
        {
            if (caster == null || caster.Character == null || target == null
                || skill == null || skill.Phases == null || skill.Phases.Count == 0) return 0f;

            int casterATK = (int)caster.Character.statSystem.ATK.getValue();
            float total = 0f;
            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null) continue;
                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.Damage)
                    {
                        float raw = effect.CalculateValue(casterATK);
                        total += MitigateDamage(raw, effect.DamageType, target);
                    }
                }
            }
            return total;
        }

        /// <summary>
        /// Simplified mitigation: Physical max(0, raw-DEF), Magic raw*(1-RES), others unchanged
        /// </summary>
        public static float MitigateDamage(float raw, DamageType dtype, MapUnit target)
        {
            if (target == null || target.Character == null || target.Character.statSystem == null)
            {
                return raw;
            }

            switch (dtype)
            {
                case DamageType.Physical:
                    int def = (int)target.Character.statSystem.DEF.getValue();
                    return Mathf.Max(0f, raw - def);

                case DamageType.Magic:
                    float res = target.Character.statSystem.RES.getValue();
                    return raw * (1f - Mathf.Clamp01(res));

                default:
                    return raw;
            }
        }

        /// <summary>
        /// Unified currency value of a skill action.
        /// </summary>
        /// <param name="castPos">Cast position (current cell if already in range)</param>
        /// <param name="isLethal">Output: whether the action is a kill</param>
        public static float SkillActionValue(MapUnit caster, SkillDataSO skill, MapUnit primaryTarget,
                                             Vector3Int castPos, AITaskContext ctx, out bool isLethal)
        {
            isLethal = false;
            if (caster == null || caster.Character == null
                || skill == null || primaryTarget == null || ctx == null) return 0f;
            if (skill.Phases == null || skill.Phases.Count == 0) return 0f;

            int casterATK = (int)caster.Character.statSystem.ATK.getValue();
            bool offensive = skill.IsOffensiveSkill();
            float total = 0f;

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null || phase.Effects.Count == 0) continue;
                total += EvaluatePhase(caster, primaryTarget, phase, casterATK, castPos, ctx, ref isLethal);
            }

            total *= Mathf.Max(0f, skill.AIPriority);

            // MP cost penalty, normalized by actual MP pool (config fallback when none)
            if (skill.Cost > 0)
            {
                float maxMP = caster.MaxMP > 0 ? caster.MaxMP : Data.Config.AIConfig.resourceMaxMP;
                total *= (1f - Mathf.Clamp01(skill.Cost / maxMP) * Data.Config.AIConfig.resourcePenaltyFactor);
            }

            // Focus-fire decay: marginal value drops when allies already target this unit
            if (offensive && total > 0f && SharedTaskBoard.Instance != null)
            {
                total *= SharedTaskBoard.Instance.GetCommitmentFactor(caster, primaryTarget);
            }

            if (offensive && total > 0f)
            {
                float risk = CounterRisk(caster, castPos, ctx);
                total *= (1f - risk);
            }

            return Mathf.Max(0f, total);
        }

        /// <summary>
        /// Unified value of repositioning to landingPos: opportunity gain + advance
        /// (A* path progress) + bounded safety correction + survival value.
        /// </summary>
        /// <param name="pathProgress">A* progress toward the target (0~1); 0 for retreat candidates</param>
        public static float RepositionValue(MapUnit caster, Vector3Int landingPos, float pathProgress, AITaskContext ctx)
        {
            if (caster == null || ctx == null) return 0f;

            float oppNow = ctx.GetOpportunityAt(caster.gridPosition);
            float oppLand = ctx.GetOpportunityAt(landingPos);

            float oppGain = (oppLand - oppNow) * Data.Config.AIConfig.futureDiscount;

            // Advance value only when both positions cannot attack, avoiding double-counting oppGain
            float advanceValue = 0f;
            if (oppNow <= 0f && oppLand <= 0f)
            {
                advanceValue = Data.Config.AIConfig.advanceBaseValue
                             * Mathf.Clamp01(pathProgress) * Data.Config.AIConfig.futureDiscount;
            }

            float baseValue = Mathf.Max(0f, oppGain + advanceValue);

            // Bounded safety: negative safety can offset at most safetyCapRatio of base value
            float threatFactorNow = ThreatFactor(ctx, caster.gridPosition);
            float threatFactorLand = ThreatFactor(ctx, landingPos);
            float safetyGain = (threatFactorNow - threatFactorLand) * Data.Config.AIConfig.safetyMaxValue;
            float safetyFloor = -baseValue * Data.Config.AIConfig.safetyCapRatio;
            float cappedSafety = Mathf.Clamp(safetyGain, safetyFloor, Data.Config.AIConfig.safetyMaxValue);

            // Survival: reduced death risk preserves future contribution (net opportunity gain only)
            float survivalGain = 0f;
            float deathRiskNow = Mathf.Clamp01(threatFactorNow * Data.Config.AIConfig.survivalWeight);
            float deathRiskLand = Mathf.Clamp01(threatFactorLand * Data.Config.AIConfig.survivalWeight);
            if (deathRiskLand < deathRiskNow)
            {
                float contribution = oppNow <= 0f
                    ? Mathf.Max(oppLand, Data.Config.AIConfig.advanceBaseValue)
                    : Mathf.Max(0f, oppLand - oppNow);
                survivalGain = Mathf.Clamp(
                    (deathRiskNow - deathRiskLand) * contribution,
                    0f, Data.Config.AIConfig.survivalMaxValue);
            }

            return Mathf.Max(0f, baseValue + cappedSafety + survivalGain);
        }

        private static float EvaluatePhase(MapUnit caster, MapUnit primaryTarget, SkillPhase phase,
                                           int casterATK, Vector3Int castPos, AITaskContext ctx,
                                           ref bool isLethal)
        {
            float phaseValue = 0f;

            if (phase.TargetType == TargetType.Self)
            {
                foreach (SkillEffect effect in phase.Effects)
                {
                    phaseValue += EvaluateEffectOnUnit(caster, effect, casterATK, ctx, ref isLethal);
                }
                return phaseValue;
            }

            List<Vector3Int> aoeTiles = AttackRangeSystem.GetAoERange3D(castPos, primaryTarget.gridPosition, phase);
            foreach (Vector3Int tile in aoeTiles)
            {
                MapUnit hitUnit = UnitManager.Instance.GetUnitAt(tile);
                if (hitUnit == null) continue;
                if (!AttackRangeSystem.IsTargetValidForPhase(hitUnit, phase, caster.Faction, caster)) continue;

                foreach (SkillEffect effect in phase.Effects)
                {
                    phaseValue += EvaluateEffectOnUnit(hitUnit, effect, casterATK, ctx, ref isLethal);
                }
            }

            return phaseValue;
        }

        private static float EvaluateEffectOnUnit(MapUnit target, SkillEffect effect,
                                                  int casterATK, AITaskContext ctx, ref bool isLethal)
        {
            switch (effect.EffectType)
            {
                case EffectType.Damage:
                {
                    float raw = effect.CalculateValue(casterATK);
                    float dmg = MitigateDamage(raw, effect.DamageType, target);
                    float value = dmg / ctx.EnemyTeamHP;

                    // Kill removes the target's future threat naturally
                    if (dmg >= target.Character.statSystem.currentHP)
                    {
                        isLethal = true;
                        value += ExecuteBonus(target, dmg, ctx);
                    }
                    return value;
                }

                case EffectType.Heal:
                {
                    float heal = effect.CalculateValue(casterATK);
                    float value = heal / ctx.AllyTeamHP * Data.Config.AIConfig.allyHealWeight;
                    // Rescue preserves a dying ally's future contribution
                    value += RescueBonus(target, ctx);
                    return value;
                }

                case EffectType.AddBuff:
                {
                    if (string.IsNullOrEmpty(effect.BuffID)) return 0f;
                    float buffValue = BuffManager.GetBuffAIValue(effect.BuffID);
                    float stacks = Mathf.Max(1, effect.BuffStacks);
                    float targetWeight = TargetWeight(target, ctx);
                    return buffValue * stacks * targetWeight;
                }

                case EffectType.RemoveBuff:
                    return RemoveBuffValue(target);

                default:
                    return 0f;
            }
        }

        /// <summary>
        /// Kill bonus: target's per-turn future threat times the remaining turns it would survive
        /// </summary>
        private static float ExecuteBonus(MapUnit target, float damageDealt, AITaskContext ctx)
        {
            float futureThreatPerTurn = EstimateBestOffensiveDamage(target, ctx.Unit);
            if (futureThreatPerTurn <= 0f) return 0f;

            float hp = target.Character.statSystem.currentHP;
            int remainingTurns = Mathf.Clamp(
                Mathf.CeilToInt(hp / Mathf.Max(1f, damageDealt)),
                1, Data.Config.AIConfig.executeFutureTurns);

            return futureThreatPerTurn * remainingTurns / ctx.AllyTeamHP;
        }

        /// <summary>
        /// Max per-turn damage the unit can deal to the victim (basic attack + offensive skills)
        /// </summary>
        private static float EstimateBestOffensiveDamage(MapUnit unit, MapUnit victim)
        {
            if (unit == null || unit.Character == null || victim == null) return 0f;

            float best = EstimateDamageValue(unit, unit.NormalAttackSkill, victim);
            List<SkillDataSO> skills = unit.GetActiveSkills();
            if (skills != null)
            {
                foreach (SkillDataSO skill in skills)
                {
                    if (skill == null || !skill.IsOffensiveSkill()) continue;
                    float dmg = EstimateDamageValue(unit, skill, victim);
                    if (dmg > best) best = dmg;
                }
            }
            return best;
        }

        /// <summary>
        /// Rescue bonus: healing/shielding preserves an ally's contribution under lethal threat
        /// </summary>
        private static float RescueBonus(MapUnit ally, AITaskContext ctx)
        {
            float hp = ally.Character.statSystem.currentHP;
            float maxHp = ally.Character.statSystem.maxHP.getValue();
            if (hp >= maxHp) return 0f;

            float deathRisk = Mathf.Clamp01(ThreatFactor(ctx, ally.gridPosition) * Data.Config.AIConfig.survivalWeight);
            if (deathRisk < Data.Config.AIConfig.rescueThreatThreshold) return 0f;

            float allyValue = 0f;
            if (ctx.Enemies.Count > 0)
            {
                allyValue = EstimateBestOffensiveDamage(ally, ctx.Enemies[0]) / ctx.EnemyTeamHP;
            }
            return Mathf.Clamp(allyValue, 0f, Data.Config.AIConfig.survivalMaxValue);
        }

        /// <summary>
        /// Value of removing a debuff (AIValue times stacks)
        /// </summary>
        private static float RemoveBuffValue(MapUnit target)
        {
            if (target.ActiveBuffs == null) return 0f;
            float total = 0f;
            foreach (var buff in target.ActiveBuffs)
            {
                if (buff == null || !buff.IsDebuff) continue;
                float aiValue = buff.AIValue;
                if (aiValue <= 0f) continue;
                total += aiValue * Mathf.Max(1, buff.Stacks);
            }
            return total;
        }

        /// <summary>
        /// Target weight: maxHP relative to team average; tanks/stronger units worth more
        /// </summary>
        private static float TargetWeight(MapUnit unit, AITaskContext ctx)
        {
            float maxHp = unit.Character.statSystem.maxHP.getValue();
            float w = maxHp / Mathf.Max(1f, ctx.AvgUnitHP);
            return Mathf.Clamp(w,
                               Data.Config.AIConfig.targetWeightMin,
                               Data.Config.AIConfig.targetWeightMax);
        }

        /// <summary>
        /// Counter-risk from normalized threat at the position (bounded, never zeroes out attacks)
        /// </summary>
        private static float CounterRisk(MapUnit caster, Vector3Int pos, AITaskContext ctx)
        {
            return Mathf.Clamp01(ThreatFactor(ctx, pos) * Data.Config.AIConfig.counterRiskWeight);
        }

        /// <summary>
        /// Normalized threat factor (0~1) dividing the map score by threatNormalizeBase
        /// </summary>
        private static float ThreatFactor(AITaskContext ctx, Vector3Int pos)
        {
            if (ctx == null || ctx.ThreatMap == null) return 0f;
            float baseValue = Data.Config.AIConfig.threatNormalizeBase;
            if (baseValue <= 0f) return 0f;
            return Mathf.Clamp01(ctx.ThreatMap.GetScore(pos) / baseValue);
        }
    }
}
