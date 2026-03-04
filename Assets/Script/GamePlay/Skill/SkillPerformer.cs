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

            var caster = sequenceResult.Caster;
            var casterView = caster.View;

            if (casterView == null)
            {
                Debug.LogError($"SkillPerformer: {caster.name} 没有 UnitView 组件");
                return;
            }

            // 第一步：记录当前朝向（用于技能结束后恢复）
            caster.RecordCurrentFacing();

            // 第二步：如果技能有目标位置，让施法者朝向目标
            if (sequenceResult.Context != null && sequenceResult.Context.TargetPosition != caster.gridPosition)
            {
                // 计算从施法者到目标位置的方向
                caster.FaceToPosition(sequenceResult.Context.TargetPosition);
                
                // 等待一小段时间让旋转完成（如果需要平滑旋转的话）
                await UniTask.Yield();
            }

            // 第三步：执行技能的所有阶段
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

            // 第四步：技能执行结束后，恢复到记录的朝向
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
            // 重要：targetPosition已经是脚底方块坐标
            // MapManager.GetWorldPosition会自动加上方块高度，不需要额外加Vector3.up
            Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(targetPosition);
            
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
