using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;
using GamePlay.View;
using GamePlay.Buff;
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

            var caster = sequenceResult.Caster;
            var casterView = caster.View;

            if (casterView == null)
            {
                Debug.LogError($"SkillPerformer: {caster.name} 没有 UnitView 组件");
                return;
            }

            caster.RecordCurrentFacing();

            // Suppress auto death-flush while the sequence plays; flush on exit.
            UnitManager.Instance.SetActionBusy(true);
            try
            {
                if (sequenceResult.Context != null && sequenceResult.Context.TargetPosition != caster.gridPosition)
                {
                    Vector3 targetWorldPos = MapUnit.GetGridHitPoint(sequenceResult.Context.TargetPosition);

                    await UniTask.Create(() =>
                    {
                        var tcs = new UniTaskCompletionSource();

                        caster.RotateTowardsTargetSmoothly(targetWorldPos, () =>
                        {
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

                    await PerformSinglePhase(caster, phaseResult, phaseData, skillData);
                }
            }
            finally
            {
                caster.RestoreRecordedFacing();
                UnitManager.Instance.SetActionBusy(false);

                // Resolve death animations only after all skill visuals finish.
                await UnitManager.Instance.FlushDeathAnimations();
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

        private static async UniTask PerformSinglePhase(MapUnit caster, PhaseResult phaseResult, SkillPhase phaseData, SkillDataSO skillData)
        {
            var casterView = caster.View;
            var visual = phaseData.VisualData;

            if (casterView == null || visual == null)
            {
                return;
            }

            var ctx = new ActionContext
            {
                SkillData = skillData,
                PhaseData = phaseData,
                PhaseResult = phaseResult,
            };

            // Code tweening owns the model for the whole phase, then hands back to the Animator.
            casterView.TakeOverAnimator();
            try
            {
                foreach (ActionStep step in visual.Actions)
                {
                    if (step.Action == null)
                    {
                        continue;
                    }

                    ctx.DurationOverride = step.DurationOverride;
                    await casterView.ExecuteAction(step.Action, ctx);
                }
            }
            finally
            {
                casterView.ReleaseAnimator();
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
        }

        private static async UniTask PerformCasterMovement(MapUnit caster, Vector3Int endPosition)
        {
            Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(endPosition);
            Vector3 startPos = caster.transform.position;

            float distance = Vector3.Distance(startPos, targetWorldPos);
            if (caster.moveSpeed <= 0f)
            {
                Debug.LogError($"[SkillPerformer] {caster.name} moveSpeed={caster.moveSpeed} 导致 PerformCasterMovement 除零！直接跳转");
                caster.transform.position = targetWorldPos;
                return;
            }
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

        private static async UniTask PerformSingleTargetHit(TargetResult tResult)
        {
            var targetView = tResult.Target.View;

            if (targetView == null)
            {
                return;
            }

            targetView.PlayHitVisual();

            if (tResult.HasDamageRecords)
            {
                await targetView.ShowDamageList(tResult.DamageRecords);
            }

            ApplyBuffEffects(tResult);

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

                BuffManager.ApplyBuffToUnit(tResult.Target, buffInfo.BuffID, buffInfo.Stacks);
            }
        }
    }
}
