using System.Collections.Generic;
using GamePlay.unit;
using Managers;
using Status.damage;
using Global;
using UnityEngine;
using Command;

namespace GamePlay.Skill
{
    public static class SkillExecutor
    {
        public static SkillSequenceResult ExecuteSequence(MapUnit caster, SkillTargetContext context, SkillDataSO skillData)
        {
            SkillSequenceResult sequenceResult = new SkillSequenceResult(caster, context);

            if (skillData == null || skillData.Phases == null || skillData.Phases.Count == 0)
            {
                Debug.LogError("SkillExecutor: skillData 或 Phases 为空");
                return sequenceResult;
            }

            foreach (SkillPhase phase in skillData.Phases)
            {
                PhaseResult phaseResult = new PhaseResult(caster, context.TargetPosition);

                List<MapUnit> phaseTargets = GetPhaseTargets(caster, context, phase);

                foreach (MapUnit target in phaseTargets)
                {
                    if (target == null || target.Character.statSystem.currentHP <= 0)
                    {
                        continue;
                    }

                    TargetResult targetResult = new TargetResult(target);

                    foreach (SkillEffect effect in phase.Effects)
                    {
                        ApplyEffect(caster, target, effect, targetResult);
                    }

                    phaseResult.TargetResults.Add(targetResult);
                }

                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.MoveCaster)
                    {
                        ApplyCasterMovement(caster, context.TargetPosition, phaseResult);
                    }
                }

                if (phaseResult.CasterMoved)
                {
                    context.TargetPosition = phaseResult.CasterEndPosition;
                }

                sequenceResult.PhaseResults.Add(phaseResult);
            }

            return sequenceResult;
        }

        private static List<MapUnit> GetPhaseTargets(MapUnit caster, SkillTargetContext context, SkillPhase phase)
        {
            List<MapUnit> targets = new List<MapUnit>();

            switch (phase.TargetType)
            {
                case TargetType.Enemy:
                    if (context.UnitsInRange != null)
                    {
                        foreach (MapUnit unit in context.UnitsInRange)
                        {
                            if (unit.Faction == FactionType.Enemy)
                            {
                                targets.Add(unit);
                            }
                        }
                    }
                    break;

                case TargetType.Ally:
                    if (context.UnitsInRange != null)
                    {
                        foreach (MapUnit unit in context.UnitsInRange)
                        {
                            if (unit.Faction == caster.Faction)
                            {
                                targets.Add(unit);
                            }
                        }
                    }
                    break;

                case TargetType.Self:
                    targets.Add(caster);
                    break;

                case TargetType.Position:
                    break;
                case TargetType.Player:
                    if (context.UnitsInRange != null)
                    {
                        foreach (MapUnit unit in context.UnitsInRange)
                        {
                            if (unit.Faction == FactionType.Player)
                            {
                                targets.Add(unit);
                            }
                        }
                    }
                    break;
                
            }

            return targets;
        }

        private static void ApplyEffect(MapUnit caster, MapUnit target, SkillEffect effect, TargetResult targetResult)
        {
            switch (effect.EffectType)
            {
                case EffectType.Damage:
                    ApplyDamage(caster, target, effect, targetResult);
                    break;

                case EffectType.Heal:
                    ApplyHeal(target, effect, targetResult);
                    break;

                case EffectType.AddBuff:
                    targetResult.AppliedBuffs.Add(effect.BuffID);
                    break;

                case EffectType.RemoveBuff:
                    targetResult.AppliedBuffs.Remove(effect.BuffID);
                    break;
            }
        }

        private static void ApplyDamage(MapUnit caster, MapUnit target, SkillEffect effect, TargetResult targetResult)
        {
            UndoSystem.Instance.RegisterDirty(target);

            int baseATK = (int)caster.Character.statSystem.ATK.getValue();
            int calculatedDamage = effect.CalculateValue(baseATK);

            DamageInfo info = new DamageInfo(
                calculatedDamage,
                caster,
                target,
                effect.DamageType,
                DamageMethod.Skill
            );

            CombatCalculator.CalculateDamage(info);

            target.TakeDamage(info);

            targetResult.ActualDamage = (int)info.damage;
            targetResult.DamageType = effect.DamageType;
            targetResult.IsDead = target.Character.statSystem.currentHP <= 0;
        }

        private static void ApplyHeal(MapUnit target, SkillEffect effect, TargetResult targetResult)
        {
            UndoSystem.Instance.RegisterDirty(target);

            int baseATK = (int)target.Character.statSystem.ATK.getValue();
            int healAmount = effect.CalculateValue(baseATK);
            
            target.Character.statSystem.currentHP += healAmount;

            int maxHP = (int)target.Character.statSystem.maxHP.getValue();
            if (target.Character.statSystem.currentHP > maxHP)
            {
                target.Character.statSystem.currentHP = maxHP;
            }

            targetResult.ActualDamage = -healAmount;
        }

        private static void ApplyCasterMovement(MapUnit caster, Vector3Int targetPosition, PhaseResult phaseResult)
        {
            UndoSystem.Instance.RegisterDirty(caster);

            Vector3Int oldPos = caster.gridPosition;
            caster.gridPosition = targetPosition;

            UnitManager.Instance.UpdateUnitPosition(caster, oldPos);

            phaseResult.CasterMoved = true;
            phaseResult.CasterEndPosition = targetPosition;
        }
    }
}
