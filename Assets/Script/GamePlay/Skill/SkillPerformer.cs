using System.Collections.Generic;
using UnityEngine;
using GamePlay.unit;
using GamePlay.View;
using Managers;
using Global;
using Cysharp.Threading.Tasks;

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
            var config = phaseData.VisualData;

            if (casterView == null || config == null)
            {
                return;
            }

            if (!string.IsNullOrEmpty(config.CastAnimTrigger))
            {
                casterView.PlayAnim(config.CastAnimTrigger);
            }

            if (config.CastEffect != null)
            {
                GameObject.Instantiate(config.CastEffect, caster.transform.position, Quaternion.identity);
            }

            await UniTask.Delay((int)(config.CastDelay * 1000));

            if (phaseResult.CasterMoved)
            {
                await PerformCasterMovement(caster, phaseResult.CasterEndPosition);
            }

            if (config.Transit == TransitType.Projectile && config.ProjectilePrefab != null)
            {
                await PerformProjectileTransit(caster, phaseResult.TargetPosition, config);
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

            await UniTask.Delay((int)(config.HitDelay * 1000));
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

        private static async UniTask PerformProjectileTransit(MapUnit caster, Vector3Int targetPosition, SkillVisualData config)
        {
            Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(targetPosition) + Vector3.up;
            var bullet = GameObject.Instantiate(config.ProjectilePrefab, caster.transform.position + Vector3.up, Quaternion.identity);
            bullet.transform.LookAt(targetWorldPos);

            while (bullet != null && Vector3.Distance(bullet.transform.position, targetWorldPos) > 0.1f)
            {
                bullet.transform.position = Vector3.MoveTowards(bullet.transform.position, targetWorldPos, config.ProjectileSpeed * Time.deltaTime);
                await UniTask.Yield();
            }

            if (bullet != null)
            {
                GameObject.Destroy(bullet);
            }

            await UniTask.Delay(150);
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
