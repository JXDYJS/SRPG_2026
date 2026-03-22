using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;
using GamePlay.View;
using GamePlay.Buff;
using Managers;
using Global;
using Cysharp.Threading.Tasks;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;
using System;

namespace GamePlay.Skill
{
    public static class SkillPerformer
    {
        private const float TIMEOUT_PROTECTION_SECONDS = 10f;

        public static async UniTask PerformSkillSequence(SkillDataSO skillData, SkillSequenceResult sequenceResult)
        {
            if (sequenceResult == null || skillData == null)
            {
                Debug.LogError("SkillPerformer: sequenceResult 或 skillData 为 null");
                return;
            }

            var caster = sequenceResult.Caster;
            var casterView = caster.View;

            if (casterView == null)
            {
                Debug.LogError($"SkillPerformer: {caster.name} 没有 UnitView 组件");
                return;
            }

            caster.RecordCurrentFacing();

            if (sequenceResult.Context != null && sequenceResult.Context.TargetPosition != caster.gridPosition)
            {
                Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(sequenceResult.Context.TargetPosition) + Vector3.up;
                
                await UniTask.Create(() => {
                    var tcs = new UniTaskCompletionSource();
                    
                    caster.RotateTowardsTargetSmoothly(targetWorldPos, () => {
                        tcs.TrySetResult();
                    });
                    
                    return tcs.Task;
                });
            }

            for (int i = 0; i < sequenceResult.PhaseResults.Count; i++)
            {
                PhaseResult phaseResult = sequenceResult.PhaseResults[i];
                SkillPhase phaseData = GetPhaseData(skillData, i);

                if (phaseData == null)
                {
                    continue;
                }

                await PerformSinglePhase(caster, phaseResult, phaseData);
            }

            caster.RestoreRecordedFacing();
        }

        private static SkillPhase GetPhaseData(SkillDataSO skillData, int phaseIndex)
        {
            if (skillData == null || skillData.Phases == null || phaseIndex < 0 || phaseIndex >= skillData.Phases.Count)
            {
                return null;
            }

            return skillData.Phases[phaseIndex];
        }

        private static async UniTask WaitWithTimingMode(MapUnit unit, TimingMode mode, string eventName, float delayTime)
        {
            if (mode == TimingMode.Instant)
            {
                await UniTask.Yield();
                return;
            }

            if (mode == TimingMode.AnimationEvent)
            {
                if (unit.View != null && !string.IsNullOrEmpty(eventName))
                {
                    await UniTask.WhenAny(
                        unit.View.WaitForAnimationEvent(eventName, TIMEOUT_PROTECTION_SECONDS),
                        UniTask.Delay(TimeSpan.FromSeconds(TIMEOUT_PROTECTION_SECONDS))
                    );
                }
                return;
            }

            if (mode == TimingMode.FixedTime)
            {
                await UniTask.Delay(TimeSpan.FromSeconds(delayTime), delayTiming: PlayerLoopTiming.Update, ignoreTimeScale: false);
                return;
            }
        }

        private static async UniTask PerformSinglePhase(MapUnit caster, PhaseResult phaseResult, SkillPhase phaseData)
        {
            var casterView = caster.View;
            var visual = phaseData.VisualData;

            if (casterView == null || visual == null)
            {
                return;
            }

            if (!string.IsNullOrEmpty(visual.CastAnimTrigger))
            {
                casterView.PlayAnim(visual.CastAnimTrigger);
            }

            if (visual.CastEffect != null && visual.CastEffect.RuntimeKeyIsValid())
            {
                await Addressables.InstantiateAsync(visual.CastEffect, caster.transform.position, Quaternion.identity);
            }

            if (visual.TargetAreaEffect != null && visual.TargetAreaEffect.RuntimeKeyIsValid())
            {
                Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(phaseResult.TargetPosition) + visual.TargetAreaOffset;
                Quaternion targetRotation = Quaternion.Euler(visual.TargetAreaRotation);
                _ =Addressables.InstantiateAsync(visual.TargetAreaEffect, targetWorldPos, targetRotation);
            }

            if (visual.Transit == TransitType.Projectile && visual.ProjectilePrefab != null && visual.ProjectilePrefab.RuntimeKeyIsValid())
            {
                await PerformProjectileTransit(caster, phaseResult.TargetPosition, visual);
            }
            else
            {
                await WaitWithTimingMode(caster, visual.HitTimingMode, visual.HitEventName, visual.HitDelayTime);
            }

            if (phaseResult.CasterMoved)
            {
                await PerformCasterMovement(caster, phaseResult.CasterEndPosition);
            }

            List<UniTask> hitTasks = new List<UniTask>();
            foreach (TargetResult tResult in phaseResult.TargetResults)
            {
                if (tResult.Target != null && tResult.Target.View != null)
                {
                    hitTasks.Add(PerformSingleTargetHit(tResult));
                }
            }

            if (hitTasks.Count > 0)
            {
                await UniTask.WhenAll(hitTasks);
            }

            await WaitWithTimingMode(caster, visual.EndTimingMode, visual.EndEventName, visual.EndDelayTime);
        }

        private static async UniTask PerformCasterMovement(MapUnit caster, Vector3Int endPosition)
        {
            Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(endPosition);
            Vector3 startPos = caster.transform.position;

            float distance = Vector3.Distance(startPos, targetWorldPos);
            float duration = distance / caster.moveSpeed;
            float elapsed = 0f;

            while (elapsed < duration)
            {
                elapsed += Time.deltaTime;
                float t = Mathf.Clamp01(elapsed / duration);
                caster.transform.position = Vector3.Lerp(startPos, targetWorldPos, t);
                await UniTask.Yield();
            }

            caster.transform.position = targetWorldPos;
        }

        private static async UniTask PerformProjectileTransit(MapUnit caster, Vector3Int targetPosition, SkillVisualData visual)
        {
            Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(targetPosition) + Vector3.up;
            
            Vector3 launchDirection = targetWorldPos - (caster.transform.position + Vector3.up);
            launchDirection.Normalize();
            
            Quaternion launchRotation = Quaternion.LookRotation(launchDirection);
            
            var handle = Addressables.InstantiateAsync(visual.ProjectilePrefab, caster.transform.position + Vector3.up, launchRotation);
            await handle.Task;
            
            if (handle.Status != AsyncOperationStatus.Succeeded)
            {
                Debug.LogError("Failed to instantiate projectile prefab");
                return;
            }
            
            GameObject bullet = handle.Result;
            bullet.transform.rotation = launchRotation;

            while (bullet != null && Vector3.Distance(bullet.transform.position, targetWorldPos) > 0.1f)
            {
                bullet.transform.position = Vector3.MoveTowards(bullet.transform.position, targetWorldPos, visual.ProjectileSpeed * Time.deltaTime);
                await UniTask.Yield();
            }

            if (bullet != null)
            {
                Addressables.ReleaseInstance(bullet);
            }
        }

        private static async UniTask PerformSingleTargetHit(TargetResult tResult)
        {
            var targetView = tResult.Target.View;

            if (targetView == null)
            {
                return;
            }

            targetView.PlayHitVisual();

            if (tResult.ActualDamage > 0)
            {
                targetView.ShowDamageFloatingText(tResult.ActualDamage, tResult.IsCrit, tResult.DamageType);
            }
            else if (tResult.ActualDamage < 0)
            {
                targetView.ShowDamageFloatingText(-tResult.ActualDamage, false, DamageType.Heal);
            }

            // 处理 Buff 结算
            ApplyBuffEffects(tResult);

            if (tResult.IsDead)
            {
                targetView.PlayDeathAnimation();
            }

            await UniTask.Yield();
        }

        private static void ApplyBuffEffects(TargetResult tResult)
        {
            if (tResult.AppliedBuffs == null || tResult.AppliedBuffs.Count == 0)
            {
                return;
            }

            foreach (var buffInfo in tResult.AppliedBuffs)
            {
                if (string.IsNullOrEmpty(buffInfo.BuffID))
                {
                    Debug.LogWarning("BuffID 为空，跳过 Buff 应用");
                    continue;
                }

                // 使用 BuffManager 应用 Buff
                BuffManager.ApplyBuffToUnit(tResult.Target, buffInfo.BuffID, buffInfo.Stacks);
            }
        }
    }
}
