using Cysharp.Threading.Tasks;
using DG.Tweening;
using GamePlay.Units;
using GamePlay.View;
using UnityEngine;

namespace GamePlay.Skill
{
    /// <summary>
    /// Moves or shakes the whole unit transform: lunge toward the target,
    /// leap up/down, ground shake, step back.
    /// </summary>
    [CreateAssetMenu(menuName = "Game/Skill Action/Body Motion")]
    public class BodyMotionActionSO : SkillActionSO
    {
        public enum MotionType
        {
            Lunge,      // Dash toward the phase target position
            LeapUp,     // Jump up and fall back
            StepBack,   // Move away from the target
            Shake,      // Shake in place (impact/roar)
        }

        public MotionType Motion = MotionType.Lunge;
        [Tooltip("Lunge/StepBack 距离；LeapUp 高度；Shake 幅度")]
        public float Amount = 1.2f;
        public float Duration = 0.3f;
        public Ease EaseType = Ease.OutQuad;
        [Tooltip("结束后是否回到起始位置")]
        public bool ReturnToStart = false;
        public float ReturnDuration = 0.25f;

        public override async UniTask ExecuteAsync(UnitView caster, ActionContext ctx)
        {
            float duration = ResolveDuration(Duration, ctx);
            Transform self = caster.transform;
            Vector3 startPos = self.position;
            Vector3 moveDir = GetMoveDirection(caster, ctx);

            Sequence seq = DOTween.Sequence();

            switch (Motion)
            {
                case MotionType.Lunge:
                    seq.Append(self.DOMove(startPos + moveDir * Amount, duration).SetEase(EaseType));
                    break;

                case MotionType.LeapUp:
                    seq.Append(self.DOMove(startPos + Vector3.up * Amount, duration * 0.5f).SetEase(Ease.OutQuad));
                    seq.Append(self.DOMove(startPos, duration * 0.5f).SetEase(Ease.InQuad));
                    break;

                case MotionType.StepBack:
                    seq.Append(self.DOMove(startPos - moveDir * Amount, duration).SetEase(EaseType));
                    break;

                case MotionType.Shake:
                    Vector3 shakePos = startPos + moveDir * Amount;
                    seq.Append(self.DOMove(shakePos, duration * 0.25f).SetEase(Ease.OutQuad));
                    seq.Append(self.DOMove(startPos, duration * 0.25f).SetEase(Ease.InQuad));
                    break;
            }

            if (ReturnToStart)
            {
                seq.Append(self.DOMove(startPos, ReturnDuration).SetEase(Ease.OutQuad));
            }

            await seq.AsyncWaitForCompletion();
        }

        private Vector3 GetMoveDirection(UnitView caster, ActionContext ctx)
        {
            if (ctx?.PhaseResult?.Caster != null)
            {
                MapUnit casterUnit = ctx.PhaseResult.Caster;
                Vector3Int target = ctx.PhaseResult.TargetPosition;
                Vector3 dir = MapUnit.GetGridHitPoint(target) - casterUnit.transform.position;
                dir.y = 0f;
                if (dir.sqrMagnitude > 0.001f)
                {
                    return dir.normalized;
                }
            }
            return caster.transform.forward;
        }
    }
}
