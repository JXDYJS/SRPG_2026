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

            // 核心重构 - 弹道拦截系统
            // 检查条件：直线技能且碰到第一个目标时停止
            if (skillData.CastPattern == CastPatternType.Line && skillData.StopsAtFirstHit)
            {
                // 获取从施法者到目标位置的轨迹
                List<Vector3Int> trajectory = Grid.AttackRangeSystem.GetLinePath(caster.gridPosition, context.TargetPosition);

                // 遍历轨迹，检查地形和单位阻挡
                foreach (Vector3Int pos in trajectory)
                {
                    // 检查地形阻挡：如果格子是Solid且高度高于当前地面
                    if (MapManager.Instance.logicalGrid.GetBlock(pos + Vector3Int.up) != BlockType.Air)
                    {
                        // 弹道被地形阻挡，修改目标位置为墙壁坐标
                        context.TargetPosition = pos;
                        Debug.Log($"弹道被地形阻挡，目标位置修正为：{pos}");
                        break;
                    }

                    // 检查单位阻挡：如果格子上有人（不分敌我）
                    MapUnit blockingUnit = UnitManager.Instance.GetUnitAt(pos);
                    if (blockingUnit != null)
                    {
                        // 弹道被单位阻挡，修改目标位置为单位坐标
                        context.TargetPosition = pos;
                        Debug.Log($"弹道被单位阻挡，目标位置修正为：{pos}");
                        break;
                    }
                }

                // 重要补充：经过拦截修改TargetPosition后，必须再次校验新目标点
                bool isValidTarget = Grid.AttackRangeSystem.IsValidTargetForCast(context.TargetPosition, skillData, caster.Faction);
                if (!isValidTarget)
                {
                    // 拦截后目标无效，拒绝施法
                    Debug.LogWarning("弹道拦截后目标无效，拒绝施法");
                    return sequenceResult;
                }
            }

            foreach (SkillPhase phase in skillData.Phases)
            {
                PhaseResult phaseResult = new PhaseResult(caster, context.TargetPosition);

                List<MapUnit> phaseTargets = GetPhaseTargets(caster, context, phase, skillData);

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

        private static List<MapUnit> GetPhaseTargets(MapUnit caster, SkillTargetContext context, SkillPhase phase, SkillDataSO skillData)
        {
            List<MapUnit> targets = new List<MapUnit>();

            // 使用新的AoE范围计算逻辑
            List<Vector3Int> aoeRange = Grid.AttackRangeSystem.GetAoERange3D(caster.gridPosition, context.TargetPosition, phase);

            foreach (Vector3Int pos in aoeRange)
            {
                MapUnit unit = UnitManager.Instance.GetUnitAt(pos);
                if (unit != null && Grid.AttackRangeSystem.IsTargetValidForPhase(unit, phase, caster.Faction))
                {
                    targets.Add(unit);
                }
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