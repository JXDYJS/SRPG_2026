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
    /// 统一战斗价值引擎 — 所有 AI 行动折算为同一货币：
    /// "占敌方/己方有效血池的比例"（TeamHP 归一），保证跨类别可比。
    ///
    /// 各类行动的价值构成：
    ///   伤害   = 总伤害 / 敌TeamHP（AoE 按总伤害自然计价，无需额外加分）
    ///   治疗   = 治疗量 / 己TeamHP × allyHealWeight
    ///   护盾   = 盾量 / 己TeamHP × shieldWeight
    ///   buff   = BuffAIValue × 层数 × 目标权重（设计者手工标定基准，机械缩放）
    ///   斩杀   = 伤害值 + 移除目标未来威胁（自然折算，无平白加分）
    ///   走位   = 机会增量(前瞻) × futureDiscount + 安全增益 + 生存价值 + 推进价值
    ///   风险   = 进攻动作 × (1 − 反击承伤 / 自身HP)
    /// </summary>
    public static class BattleValueEvaluator
    {
        // ==========================================================
        // 伤害估算（纯数值，含减伤）
        // ==========================================================

        /// <summary>
        /// 估算技能对单个目标造成的伤害（简化版，不经过完整 modifier pipeline）
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
        /// 简化伤害减免
        /// Physical: max(0, raw − DEF)；Magic: raw × (1 − RES)；其他无减免
        /// </summary>
        public static float MitigateDamage(float raw, DamageType dtype, MapUnit target)
        {
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

        // ==========================================================
        // 技能行动价值（主入口，含 AoE/治疗/buff/斩杀/风险）
        // ==========================================================

        /// <summary>
        /// 计算一次技能行动的统一货币价值。
        /// </summary>
        /// <param name="castPos">施放位置（已在范围时传当前格）</param>
        /// <param name="isLethal">输出：该动作是否构成斩杀</param>
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

            // 设计者单技能偏好倍率
            total *= Mathf.Max(0f, skill.AIPriority);

            // MP 代价惩罚
            if (skill.Cost > 0)
            {
                total *= (1f - Mathf.Clamp01(skill.Cost / 20f) * Data.Config.AIConfig.resourcePenaltyFactor);
            }

            // 集火衰减：队友已盯上同一目标时，边际价值下降
            if (offensive && total > 0f && SharedTaskBoard.Instance != null)
            {
                total *= SharedTaskBoard.Instance.GetCommitmentFactor(caster, primaryTarget);
            }

            // 进攻风险：站在 castPos 承担反击
            if (offensive && total > 0f)
            {
                float risk = CounterRisk(caster, castPos, ctx);
                total *= (1f - risk);
            }

            return Mathf.Max(0f, total);
        }

        // ==========================================================
        // 走位价值
        // ==========================================================

        /// <summary>
        /// 走位（移动到 landingPos）的统一货币价值：
        /// 机会增量(前瞻) + 推进价值(A*路径进度) + 安全修正(有界) + 生存价值
        /// </summary>
        /// <param name="pathProgress">A* 寻路到目标的路径进度 (0~1)，推进候选传入，撤退候选传 0</param>
        public static float RepositionValue(MapUnit caster, Vector3Int landingPos, float pathProgress, AITaskContext ctx)
        {
            if (caster == null || ctx == null) return 0f;

            float oppNow = ctx.GetOpportunityAt(caster.gridPosition);
            float oppLand = ctx.GetOpportunityAt(landingPos);

            // 1. 机会增量：落点换取下一回合的攻击机会
            float oppGain = (oppLand - oppNow) * Data.Config.AIConfig.futureDiscount;

            // 2. 推进价值：沿 A* 路径向敌人推进（够不着时前压的主要价值来源）。
            //    仅当"当前位置打不到"时才给推进价值——本回合能打到时应直接攻击，
            //    避免推进分压过真实攻击分。两侧都够不着时用保底推进值，保证"该前压就前压"。
            float advanceValue = 0f;
            if (oppNow <= 0f)
            {
                float refValue = Mathf.Max(oppLand, Data.Config.AIConfig.advanceBaseValue);
                advanceValue = refValue * Mathf.Clamp01(pathProgress) * Data.Config.AIConfig.futureDiscount;
            }

            float baseValue = Mathf.Max(0f, oppGain + advanceValue);

            // 3. 安全修正（有界）：落点通常更靠近敌人→威胁更高→safety 常为负。
            //    只允许负面安全最多抵消 safetyCapRatio 比例的推进价值，避免"稍危险就完全不敢动"。
            //    威胁用归一化因子（threatFactor 0~1），正收益上限 safetyMaxValue，绝不喧宾夺主。
            float threatFactorNow = ThreatFactor(ctx, caster.gridPosition);
            float threatFactorLand = ThreatFactor(ctx, landingPos);
            float safetyGain = (threatFactorNow - threatFactorLand) * Data.Config.AIConfig.safetyMaxValue;
            float safetyFloor = -baseValue * Data.Config.AIConfig.safetyCapRatio;
            float cappedSafety = Mathf.Clamp(safetyGain, safetyFloor, Data.Config.AIConfig.safetyMaxValue);

            // 4. 生存价值（有界）：死亡风险降低 → 保住自身未来贡献（撤退候选主要靠此项）
            float survivalGain = 0f;
            float deathRiskNow = Mathf.Clamp01(threatFactorNow * Data.Config.AIConfig.survivalWeight);
            float deathRiskLand = Mathf.Clamp01(threatFactorLand * Data.Config.AIConfig.survivalWeight);
            if (deathRiskLand < deathRiskNow)
            {
                float contribution = Mathf.Max(oppNow, oppLand, Data.Config.AIConfig.advanceBaseValue);
                survivalGain = Mathf.Clamp(
                    (deathRiskNow - deathRiskLand) * contribution,
                    0f, Data.Config.AIConfig.survivalMaxValue);
            }

            return Mathf.Max(0f, baseValue + cappedSafety + survivalGain);
        }

        // ==========================================================
        // 内部实现
        // ==========================================================

        private static float EvaluatePhase(MapUnit caster, MapUnit primaryTarget, SkillPhase phase,
                                           int casterATK, Vector3Int castPos, AITaskContext ctx,
                                           ref bool isLethal)
        {
            float phaseValue = 0f;

            // Self 阶段：效果作用于施法者自身
            if (phase.TargetType == TargetType.Self)
            {
                foreach (SkillEffect effect in phase.Effects)
                {
                    phaseValue += EvaluateEffectOnUnit(caster, effect, casterATK, ctx, ref isLethal);
                }
                return phaseValue;
            }

            // 以目标/落点为中心的 AoE（单体即 SingleTarget）
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

                    // 斩杀自然折算：消灭目标 = 移除其未来威胁
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
                    // 救援自然折算：把濒死队友拉回来 = 保住其未来贡献
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
        /// 斩杀附加价值：目标未来的每回合威胁 × 它本还能活几回合（由我方伤害推算）
        /// </summary>
        private static float ExecuteBonus(MapUnit target, float damageDealt, AITaskContext ctx)
        {
            float futureThreatPerTurn = 0f;
            SkillDataSO threatSkill = target.NormalAttackSkill;
            if (threatSkill != null)
            {
                futureThreatPerTurn = EstimateDamageValue(target, threatSkill, ctx.Unit);
            }

            if (futureThreatPerTurn <= 0f) return 0f;

            float hp = target.Character.statSystem.currentHP;
            int remainingTurns = Mathf.Clamp(
                Mathf.CeilToInt(hp / Mathf.Max(1f, damageDealt)),
                1, Data.Config.AIConfig.executeFutureTurns);

            return futureThreatPerTurn * remainingTurns / ctx.AllyTeamHP;
        }

        /// <summary>
        /// 救援附加价值：目标正承受致命威胁时，治疗/护盾保住其未来贡献
        /// </summary>
        private static float RescueBonus(MapUnit ally, AITaskContext ctx)
        {
            float hp = ally.Character.statSystem.currentHP;
            float maxHp = ally.Character.statSystem.maxHP.getValue();
            if (hp >= maxHp) return 0f;

            // 死亡风险由归一化威胁因子估算；低于阈值不额外给分
            float deathRisk = Mathf.Clamp01(ThreatFactor(ctx, ally.gridPosition) * Data.Config.AIConfig.survivalWeight);
            if (deathRisk < Data.Config.AIConfig.rescueThreatThreshold) return 0f;

            // 濒死 → 保住它每回合的贡献
            float allyValue = 0f;
            if (ctx.Enemies.Count > 0)
            {
                SkillDataSO atkSkill = ally.NormalAttackSkill;
                if (atkSkill != null)
                {
                    allyValue = EstimateDamageValue(ally, atkSkill, ctx.Enemies[0]) / ctx.EnemyTeamHP;
                }
            }
            return Mathf.Clamp(allyValue, 0f, Data.Config.AIConfig.survivalMaxValue);
        }

        /// <summary>
        /// 移除减益价值：被移除的减益当前剩余价值（由 BuffAIValue × 层数 定义）
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
        /// 目标权重：以 maxHP 相对全队均值为基准，强者/坦克更值得 buff/debuff
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
        /// 反击风险：由 castPos 的归一化威胁因子折算（有界，不会把攻击分清零，
        /// 极端危险时仍靠走位/撤退的生存项来规避，而不是硬性禁止攻击）
        /// </summary>
        private static float CounterRisk(MapUnit caster, Vector3Int pos, AITaskContext ctx)
        {
            return Mathf.Clamp01(ThreatFactor(ctx, pos) * Data.Config.AIConfig.counterRiskWeight);
        }

        /// <summary>
        /// 归一化威胁因子 (0~1)：威胁图分数是影响力值不是伤害，统一先除以 threatNormalizeBase
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
