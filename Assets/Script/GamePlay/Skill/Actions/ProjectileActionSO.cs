using Cysharp.Threading.Tasks;
using GamePlay.Units;
using GamePlay.View;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace GamePlay.Skill
{
    /// <summary>
    /// Spawns a projectile at the caster's launch origin and moves it to the
    /// phase target position, then releases it and spawns an optional hit effect.
    /// </summary>
    [CreateAssetMenu(menuName = "Game/Skill Action/Projectile")]
    public class ProjectileActionSO : SkillActionSO
    {
        public AssetReferenceGameObject ProjectilePrefab;
        public float Speed = 10f;
        public Vector3 LaunchOffset = Vector3.zero;
        public AssetReferenceGameObject HitEffect;
        public float HitEffectDuration = 2f;

        public override async UniTask ExecuteAsync(UnitView caster, ActionContext ctx)
        {
            MapUnit casterUnit = ctx?.PhaseResult?.Caster;
            if (casterUnit == null)
            {
                Debug.LogWarning($"[Projectile] {name}: caster unit missing.");
                return;
            }

            if (ProjectilePrefab == null || !ProjectilePrefab.RuntimeKeyIsValid())
            {
                Debug.LogWarning($"[Projectile] {name}: no projectile prefab assigned.");
                return;
            }

            Vector3 targetWorldPos = MapUnit.GetGridHitPoint(ctx.PhaseResult.TargetPosition);
            Vector3 launchPos = casterUnit.GetProjectileOrigin() + caster.transform.rotation * LaunchOffset;
            Vector3 direction = targetWorldPos - launchPos;
            direction.Normalize();

            var handle = Addressables.InstantiateAsync(ProjectilePrefab, launchPos, Quaternion.LookRotation(direction));
            await handle.Task;

            if (handle.Status != AsyncOperationStatus.Succeeded)
            {
                Debug.LogError($"[Projectile] {name}: failed to instantiate prefab.");
                return;
            }

            GameObject bullet = handle.Result;
            if (Speed <= 0f)
            {
                Debug.LogError($"[Projectile] {name}: Speed <= 0, released immediately.");
                Addressables.ReleaseInstance(bullet);
                return;
            }

            while (bullet != null && Vector3.Distance(bullet.transform.position, targetWorldPos) > 0.1f)
            {
                bullet.transform.position = Vector3.MoveTowards(
                    bullet.transform.position, targetWorldPos, Speed * Time.deltaTime);
                await UniTask.Yield();
            }

            if (bullet != null)
            {
                Addressables.ReleaseInstance(bullet);
            }

            if (HitEffect != null && HitEffect.RuntimeKeyIsValid())
            {
                var hitHandle = Addressables.InstantiateAsync(HitEffect, targetWorldPos, Quaternion.identity);
                GameObject hitObj = await hitHandle.Task;
                if (hitObj != null && HitEffectDuration > 0f)
                {
                    caster.DestroyEffectDelayed(hitObj, HitEffectDuration).Forget();
                }
            }
        }
    }
}
