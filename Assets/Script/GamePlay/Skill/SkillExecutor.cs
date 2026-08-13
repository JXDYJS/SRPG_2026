using System.Collections.Generic;
using GamePlay.Units;
using Managers;
using Status.damage;
using Global;
using UnityEngine;
using Command;
using Utils;
using Lua;

namespace GamePlay.Skill
{
    public static class SkillExecutor
    {
        public static SkillSequenceResult ExecuteSequence(MapUnit caster, SkillTargetContext context, SkillDataSO skillData)
        {
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

            bool hasScriptCastRange = skillData.CastRangeMode == SkillPhaseCastRangeMode.Script
                && !string.IsNullOrEmpty(skillData.CastRangeFuncName);

            if (!hasScriptCastRange && skillData.CastPattern == CastPatternType.Line && skillData.StopsAtFirstHit)
            {
                // DDA voxel traversal + AABB exact hit detection
                List<Vector3Int> trajectory = Grid.AttackRangeSystem.GetLinePath(caster.gridPosition, context.TargetPosition);

                Vector3 eyeStart = caster.GetProjectileOrigin(skillData);
                Vector3 eyeEnd = MapUnit.GetGridHitPoint(context.TargetPosition);
                Vector3 dir = (eyeEnd - eyeStart).normalized;
                GridOcclusionUtils.RayData ray = new GridOcclusionUtils.RayData
                {
                    Origin = eyeStart,
                    DirInv = new Vector3(1f / dir.x, 1f / dir.y, 1f / dir.z)
                };

                foreach (Vector3Int pos in trajectory)
                {
                    Vector3Int checkPos = pos + Vector3Int.up;
                    BlockType block = MapManager.Instance.logicalGrid.GetBlock(checkPos);

                    if (block == BlockType.Solid)
                    {
                        context.TargetPosition = pos;
                        Debug.Log($"弹道被地形阻挡（完整方块），目标位置修正为：{pos}");
                        break;
                    }
                    else if (block == BlockType.Slab || block == BlockType.Stairs)
                    {
                        float blockHeight = MapManager.Instance.logicalGrid.GetBlockYSize(checkPos);
                        if (blockHeight <= 0f) blockHeight = 0.5f;

                        Vector3 min = new Vector3(checkPos.x, checkPos.y, checkPos.z);
                        Vector3 max = new Vector3(checkPos.x + 1f, checkPos.y + blockHeight, checkPos.z + 1f);

                        if (GridOcclusionUtils.RayIntersectsAABB(ray, min, max))
                        {
                            context.TargetPosition = pos;
                            Debug.Log($"弹道被地形阻挡（半砖/楼梯），目标位置修正为：{pos}");
                            break;
                        }
                    }

                    MapUnit blockingUnit = UnitManager.Instance.GetUnitAt(pos);
                    if (blockingUnit != null)
                    {
                        context.TargetPosition = pos;
                        Debug.Log($"弹道被单位阻挡，目标位置修正为：{pos}");
                        break;
                    }
                }

                bool isValidTarget = Grid.AttackRangeSystem.IsValidTargetForCast(context.TargetPosition, skillData, caster.Faction);
                if (!isValidTarget)
                {
                    Debug.LogWarning("弹道拦截后目标无效，拒绝施法");
                    return sequenceResult;
                }
            }

            foreach (SkillPhase phase in skillData.Phases)
            {
                PhaseResult phaseResult;

                if (phase.ExecuteMode == SkillPhaseExecuteMode.Script && !string.IsNullOrEmpty(phase.ExecuteFuncName))
                {
                    var ctx = new SkillEvalContext(caster, context.TargetPosition, skillData)
                    {
                        PhaseIndex = sequenceResult.PhaseResults.Count,
                        PreviousResults = new List<PhaseResult>(sequenceResult.PhaseResults),
                        OriginalContext = context
                    };
                    phaseResult = ScriptFunctionResolver.Invoke<PhaseResult>(phase.ExecuteFuncName, ctx);
                    if (phaseResult == null)
                    {
                        Debug.LogError($"Execute script failed: {phase.ExecuteFuncName}");
                        phaseResult = new PhaseResult(caster, context.TargetPosition);
                    }
                }
                else
                {
                    phaseResult = new PhaseResult(caster, context.TargetPosition);

                    List<MapUnit> phaseTargets = GetPhaseTargets(caster, context, phase, skillData);

                    foreach (MapUnit target in phaseTargets)
                    {
                        if (target == null || !target.IsAlive)
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
                aoeRange = Grid.AttackRangeSystem.GetSkyDropAoERange(context.TargetPosition, phase);
            }
            else
            {
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
                    if (effect.RemoveMode == BuffRemoveMode.RemoveSpecificStacks && effect.BuffStacks > 0)
                    {
                        targetResult.AppliedBuffs.Add(new BuffApplyInfo(effect.BuffID, -effect.BuffStacks));
                    }
                    else
                    {
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

            DamageRecord damageRecord = new DamageRecord(
                (int)info.damage,
                effect.DamageType,
                false
            );
            targetResult.DamageRecords.Add(damageRecord);
            
            targetResult.IsDead = !target.IsAlive;
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
            
            DamageRecord healRecord = new DamageRecord(
                -(int)healInfo.damage,
                DamageType.Heal,
                false
            );
            targetResult.DamageRecords.Add(healRecord);
        }

        private static void ApplyCasterMovement(MapUnit caster, Vector3Int targetPosition, PhaseResult phaseResult)
        {
            UndoSystem.Instance.RegisterDirty(caster);

            Vector3Int moveDir = new Vector3Int(
                targetPosition.x - caster.gridPosition.x,
                0,
                targetPosition.z - caster.gridPosition.z
            );
            if (moveDir != Vector3Int.zero)
            {
                caster.SetFacingToDirection(moveDir);
            }

            Vector3Int oldPos = caster.gridPosition;
            caster.gridPosition = targetPosition;
            UnitManager.Instance.UpdateUnitPosition(caster, oldPos);

            caster.RestoreRecordedFacing();

            phaseResult.CasterMoved = true;
            phaseResult.CasterEndPosition = targetPosition;
        }
    }
}