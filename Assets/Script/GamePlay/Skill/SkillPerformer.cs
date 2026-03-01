using System.Collections.Generic;
using UnityEngine;
using GamePlay.unit;
using GamePlay.View;
using Managers;
using Global;
using Cysharp.Threading.Tasks;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace GamePlay.Skill
{
    public static class SkillPerformer
    {
        public static async UniTask PerformSkillSequence(SkillDataSO skillData, SkillSequenceResult sequenceResult)
        {
            if (sequenceResult == null || skillData == null)
            {
                Debug.LogError("SkillPerformer: sequenceResult 或 skillData 为 null");
                return;
            }

            var casterView = sequenceResult.Caster.View;

            if (casterView == null)
            {
                Debug.LogError($"SkillPerformer: {sequenceResult.Caster.name} 没有 UnitView 组件");
                return;
            }

            for (int i = 0; i < sequenceResult.PhaseResults.Count; i++)
            {
                PhaseResult phaseResult = sequenceResult.PhaseResults[i];
                SkillPhase phaseData = GetPhaseData(skillData, i);

                if (phaseData == null)
                {
                    continue;
                }

                await PerformSinglePhase(sequenceResult.Caster, phaseResult, phaseData);
            }
        }

        private static SkillPhase GetPhaseData(SkillDataSO skillData, int phaseIndex)
        {
            if (skillData == null || skillData.Phases == null || phaseIndex < 0 || phaseIndex >= skillData.Phases.Count)
            {
                return null;
            }

            return skillData.Phases[phaseIndex];
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

            if (!string.IsNullOrEmpty(visual.HitEventName))
            {
                await casterView.WaitForAnimationEvent(visual.HitEventName);
            }

            if (phaseResult.CasterMoved)
            {
                await PerformCasterMovement(caster, phaseResult.CasterEndPosition);
            }

            if (visual.Transit == TransitType.Projectile && visual.ProjectilePrefab != null && visual.ProjectilePrefab.RuntimeKeyIsValid())
            {
                await PerformProjectileTransit(caster, phaseResult.TargetPosition, visual);
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

            if (!string.IsNullOrEmpty(visual.EndEventName))
            {
                await casterView.WaitForAnimationEvent(visual.EndEventName);
            }
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
            
            var handle = Addressables.InstantiateAsync(visual.ProjectilePrefab, caster.transform.position + Vector3.up, Quaternion.identity);
            await handle.Task;
            
            if (handle.Status != AsyncOperationStatus.Succeeded)
            {
                Debug.LogError("Failed to instantiate projectile prefab");
                return;
            }
            
            GameObject bullet = handle.Result;
            bullet.transform.LookAt(targetWorldPos);

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

            if (tResult.IsDead)
            {
                targetView.PlayDeathAnimation();
            }

            await UniTask.Yield();
        }
    }
}
