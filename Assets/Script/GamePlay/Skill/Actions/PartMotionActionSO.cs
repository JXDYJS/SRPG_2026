using System;
using Cysharp.Threading.Tasks;
using DG.Tweening;
using GamePlay.View;
using UnityEngine;
using UnityEngine.AddressableAssets;

namespace GamePlay.Skill
{
    /// <summary>
    /// Rotates a single body part (arm/leg/head...) to a target angle and optionally
    /// back to rest. Covers swings, stabs, kicks, cast poses and hit reactions.
    /// </summary>
    [CreateAssetMenu(menuName = "Game/Skill Action/Part Motion")]
    public class PartMotionActionSO : SkillActionSO
    {
        [Header("部位动作")]
        public BodyPart Part = BodyPart.RightArm;
        public Vector3 TargetRotation = new Vector3(-120f, 0f, 0f);
        public float Duration = 0.3f;
        public Ease EaseType = Ease.OutQuad;
        [Tooltip("动作结束后是否回到起始角度")]
        public bool ReturnToRest = true;
        public float ReturnDuration = 0.25f;
        public Ease ReturnEaseType = Ease.OutQuad;

        [Header("同步特效")]
        public AssetReferenceGameObject Effect;
        [Tooltip("特效挂到该部位下跟随运动；None=世界坐标（施法者位置）")]
        public BodyPart EffectSocket = BodyPart.None;
        public Vector3 EffectOffset;
        public float EffectDuration = 2f;

        public override async UniTask ExecuteAsync(UnitView caster, ActionContext ctx)
        {
            float duration = ResolveDuration(Duration, ctx);
            Transform part = caster.GetPart(Part);

            if (part == null)
            {
                Debug.LogWarning($"[PartMotion] {name}: part '{Part}' missing on {caster.name}, skipped.");
                return;
            }

            SpawnEffectIfAny(caster).Forget();

            Vector3 restRotation = part.localEulerAngles;

            Sequence seq = DOTween.Sequence();
            seq.Append(part.DOLocalRotate(TargetRotation, duration).SetEase(EaseType));
            if (ReturnToRest)
            {
                seq.Append(part.DOLocalRotate(restRotation, ReturnDuration).SetEase(ReturnEaseType));
            }
            await seq.AsyncWaitForCompletion();
        }

        private async UniTaskVoid SpawnEffectIfAny(UnitView caster)
        {
            if (Effect == null || !Effect.RuntimeKeyIsValid())
            {
                return;
            }

            GameObject effectObj = await caster.SpawnEffect(
                Effect, EffectSocket, EffectOffset, EffectSocket != BodyPart.None);

            if (effectObj != null && EffectDuration > 0f)
            {
                caster.DestroyEffectDelayed(effectObj, EffectDuration).Forget();
            }
        }
    }
}
