using System.Collections.Generic;
using GamePlay.Units;
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
            //自定义技能用自定义逻辑
            if (skillData.isCustomSkill)
            {
                if(skillData.CustomBehavior == null)
                {
                    Debug.LogWarning("The CustomSkill don't have CustomBehavior");
                    return new SkillSequenceResult(caster, context);
                }
                return skillData.CustomBehavior.ExecuteLogic(caster,context,skillData);
            }

            SkillSequenceResult sequenceResult = new SkillSequenceResult(caster, context);

            if (skillData == null || skillData.Phases == null || skillData.Phases.Count == 0)
            {
                Debug.LogError("SkillExecutor: skillData 或 Phases 为空");
                return sequenceResult;
            }

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

                //经过拦截修改TargetPosition后，必须再次校验新目标点
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

            List<Vector3Int> aoeRange;
            if (skillData.Trajectory == TrajectoryType.SkyDrop)
            {
                // 使用“垂直下落”扫描逻辑，确保每个 (x,z) 只打到最高层的人
                aoeRange = Grid.AttackRangeSystem.GetSkyDropAoERange(context.TargetPosition, phase);
            }
            else
            {
                // 使用原有的 3D 柱状/球形判定
                aoeRange = Grid.AttackRangeSystem.GetAoERange3D(caster.gridPosition, context.TargetPosition, phase);
            }

            foreach (Vector3Int pos in aoeRange)
            {
                MapUnit unit = UnitManager.Instance.GetUnitAt(pos);
                if (unit != null && Grid.AttackRangeSystem.IsTargetValidForPhase(unit, phase, caster.Faction,caster))
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
                    ApplyHeal(caster, target, effect, targetResult);
                    break;

                case EffectType.AddBuff:
                    targetResult.AppliedBuffs.Add(new BuffApplyInfo(effect.BuffID, effect.BuffStacks));
                    break;

                case EffectType.RemoveBuff:
                    // 根据移除模式处理 Buff 移除
                    if (effect.RemoveMode == BuffRemoveMode.RemoveSpecificStacks && effect.BuffStacks > 0)
                    {
                        // 移除指定层数
                        targetResult.AppliedBuffs.Add(new BuffApplyInfo(effect.BuffID, -effect.BuffStacks));
                    }
                    else
                    {
                        // 移除全部
                        targetResult.AppliedBuffs.RemoveAll(info => info.BuffID == effect.BuffID);
                    }
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

            // 创建伤害记录并添加到列表
            //其实项目中暂时还没有引入暴击计算  所以这一个先为False
            DamageRecord damageRecord = new DamageRecord(
                (int)info.damage,
                effect.DamageType,
                false
            );
            targetResult.DamageRecords.Add(damageRecord);
            
            targetResult.IsDead = target.Character.statSystem.currentHP <= 0;
        }

        private static void ApplyHeal(MapUnit caster, MapUnit target, SkillEffect effect, TargetResult targetResult)
        {
            int baseATK = (int)caster.Character.statSystem.ATK.getValue();
            int baseHealAmount = effect.CalculateValue(baseATK);
            
            DamageInfo healInfo = new DamageInfo(
                baseHealAmount,
                caster,
                target,
                DamageType.Heal,
                DamageMethod.Skill
            );

            target.TakeHeal(healInfo);
            
            // 创建治疗记录并添加到列表（使用负值表示治疗）
            DamageRecord healRecord = new DamageRecord(
                -(int)healInfo.damage,  // 负值表示治疗
                DamageType.Heal,
                false  // 治疗不会暴击
            );
            targetResult.DamageRecords.Add(healRecord);
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