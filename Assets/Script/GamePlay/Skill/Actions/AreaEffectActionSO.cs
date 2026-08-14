using Cysharp.Threading.Tasks;
using GamePlay.Units;
using GamePlay.View;
using Managers;
using UnityEngine;
using UnityEngine.AddressableAssets;

namespace GamePlay.Skill
{
    /// <summary>
    /// Spawns an area effect at the phase target position (or follows a caster
    /// body part), then destroys it after a duration.
    /// </summary>
    [CreateAssetMenu(menuName = "Game/Skill Action/Area Effect")]
    public class AreaEffectActionSO : SkillActionSO
    {
        public AssetReferenceGameObject Effect;
        public Vector3 Offset = new Vector3(0f, 8f, 0f);
        public Vector3 Rotation = new Vector3(90f, 0f, 0f);
        [Tooltip("正数=自动销毁；-1或0=持久（依赖特效自毁）")]
        public float Duration = -1f;
        [Tooltip("跟随施法者部位移动（True 时忽略目标点位置）")]
        public BodyPart FollowCasterPart = BodyPart.None;

        public override async UniTask ExecuteAsync(UnitView caster, ActionContext ctx)
        {
            if (Effect == null || !Effect.RuntimeKeyIsValid())
            {
                return;
            }

            if (FollowCasterPart != BodyPart.None)
            {
                GameObject followObj = await caster.SpawnEffect(Effect, FollowCasterPart, Offset, true);
                if (followObj != null && Duration > 0f)
                {
                    caster.DestroyEffectDelayed(followObj, Duration).Forget();
                }
                return;
            }

            Vector3 targetPos = MapUnit.GetGridHitPoint(ctx.PhaseResult.TargetPosition) + Offset;
            Quaternion targetRot = Quaternion.Euler(Rotation);

            var handle = Addressables.InstantiateAsync(Effect, targetPos, targetRot);
            GameObject effectObj = await handle.Task;

            if (effectObj != null && Duration > 0f)
            {
                caster.DestroyEffectDelayed(effectObj, Duration).Forget();
            }
        }
    }
}
