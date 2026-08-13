using System;
using UnityEngine;
using Global;
using Core.Data;
using Cysharp.Threading.Tasks;
using GamePlay.Skill;
using System.Collections.Generic;
using Unity.VisualScripting;

namespace GamePlay.View
{
    public class UnitView : MonoBehaviour
    {
        private Animator _animator;
        private Renderer[] _renderers;
        private int _hitCount = 0;
        private Color[] _originalColors;
        public List<SkillVisualData> NormalAttackVisualData = null;
        public event Action<string> OnAnimationEventTriggered;
        public int TimeGapDamage = 300;
        public Vector3 DamagePosOffset = new Vector3(0.0f,2.0f,1.0f);

        void Awake()
        {
            _animator = GetComponent<Animator>();
            _renderers = GetComponentsInChildren<Renderer>();
        }

        public void TriggerAnimationEvent(string eventName)
        {
            OnAnimationEventTriggered?.Invoke(eventName);
        }

        public async UniTask WaitForAnimationEvent(string targetEventName, float timeoutSeconds = 5f)
        {
            var tcs = new UniTaskCompletionSource();
            Action<string> onEventReceived = null;

            onEventReceived = (eventName) =>
            {
                if (eventName == targetEventName)
                {
                    OnAnimationEventTriggered -= onEventReceived;
                    tcs.TrySetResult();
                }
            };

            OnAnimationEventTriggered += onEventReceived;

            await UniTask.WhenAny(tcs.Task, UniTask.Delay(TimeSpan.FromSeconds(timeoutSeconds)));

            OnAnimationEventTriggered -= onEventReceived;
        }

        public void PlayAnim(string animName)
        {
            if (_animator != null && !string.IsNullOrEmpty(animName))
            {
                _animator.SetTrigger(animName);
            }
        }

        public void ShowDamageFloatingText(int damage, bool isCrit, DamageType damageType)
        {
            if (Managers.DamageUIManager.Instance != null)
            {
                Vector3 textPos = transform.position +DamagePosOffset;
                Managers.DamageUIManager.Instance.ShowDamage(textPos, damage, damageType);
            }
        }

        public async UniTask ShowDamageList(List<DamageRecord> DamageRecords)
        {
            for(int i = 0;i < DamageRecords.Count; i++)
            {
                DamageRecord damageRecord = DamageRecords[i];
                ShowDamageFloatingText(damageRecord.Value,damageRecord.IsCrit,damageRecord.DamageType);
                if(i < DamageRecords.Count - 1)
                {
                    await UniTask.Delay(TimeGapDamage);
                }
            }
        }

        public void PlayHitVisual()
        {
            HitFlashAsync().Forget();
        }

        private async UniTaskVoid HitFlashAsync()
        {
            if (_renderers == null || _renderers.Length == 0) return;

            _hitCount++;
            
            if (_hitCount == 1)
            {
                _originalColors = new Color[_renderers.Length];
                for (int i = 0; i < _renderers.Length; i++)
                {
                    if (_renderers[i] != null) _originalColors[i] = _renderers[i].material.color;
                }
            }

            for (int i = 0; i < _renderers.Length; i++)
            {
                if (_renderers[i] != null) _renderers[i].material.color = Color.red;
            }

            await UniTask.Delay(100);

            _hitCount--;
            if (_hitCount <= 0)
            {
                _hitCount = 0;
                for (int i = 0; i < _renderers.Length; i++)
                {
                    if (_renderers[i] != null) _renderers[i].material.color = _originalColors[i];
                }
            }
        }

        public void PlayBuffEffect(string buffName)
        {
            Debug.Log($"播放 Buff 特效: {buffName}");
        }


        private static readonly int TauntBaseColorId = Shader.PropertyToID("_BaseColor");
        private static readonly int TauntColorId = Shader.PropertyToID("_Color");
        private static readonly Color TauntTintColor = new Color(1f, 0.55f, 0f, 1f);
        private MaterialPropertyBlock _tauntBlock;

        /// <summary>Applies a taunt tint via MaterialPropertyBlock (per renderer, no shared-material edits).</summary>
        public void SetTauntTint(bool active)
        {
            if (_renderers == null || _renderers.Length == 0) return;

            if (active)
            {
                if (_tauntBlock == null) _tauntBlock = new MaterialPropertyBlock();
                _tauntBlock.SetColor(TauntBaseColorId, TauntTintColor);
                _tauntBlock.SetColor(TauntColorId, TauntTintColor);

                foreach (Renderer r in _renderers)
                {
                    if (r != null) r.SetPropertyBlock(_tauntBlock);
                }
            }
            else
            {
                // Empty block clears the per-renderer override.
                MaterialPropertyBlock emptyBlock = new MaterialPropertyBlock();
                foreach (Renderer r in _renderers)
                {
                    if (r == null) continue;
                    r.SetPropertyBlock(emptyBlock);
                }
            }
        }

        public void HideModel()
        {
            gameObject.SetActive(false);
        }

        public void ShowModel()
        {
            gameObject.SetActive(true);
            // Restore pre-death pose if revived after falling.
            if (_preDeathRotationRestorePending)
            {
                _preDeathRotationRestorePending = false;
                transform.localRotation = _preDeathLocalRotation;
            }
        }


        private bool _preDeathRotationRestorePending;
        private Quaternion _preDeathLocalRotation;

        /// <summary>Fired when the death animation finishes, so the game manager can end the game.</summary>
        public event Action<UnitView> OnDeathAnimationFinished;

        public bool IsDeathAnimationPlaying { get; private set; }

        public bool IsDeathAnimationDone { get; private set; }

        /// <summary>Waits until the death animation finishes; returns immediately if already done.</summary>
        public async UniTask WaitForDeathAnimationFinished()
        {
            if (IsDeathAnimationDone) return;

            var tcs = new UniTaskCompletionSource();
            Action<UnitView> handler = null;
            handler = (view) =>
            {
                OnDeathAnimationFinished -= handler;
                tcs.TrySetResult();
            };
            OnDeathAnimationFinished += handler;

            await tcs.Task;

            OnDeathAnimationFinished -= handler;
        }

        /// <summary>Plays the death animation, then invokes onComplete. Style controlled by ViewConfig.</summary>
        public async UniTask PlayDeathAnimation(Action onComplete = null)
        {
            if (IsDeathAnimationPlaying) return;
            IsDeathAnimationPlaying = true;
            IsDeathAnimationDone = false;

            try
            {
                if (Data.Config.ViewConfig.useMinecraftStyleDeath)
                {
                    await PlayMinecraftStyleDeathAsync();
                }
                else
                {
                    await PlayLegacyDeathAnimClipAsync();
                }
            }
            finally
            {
                IsDeathAnimationPlaying = false;
                IsDeathAnimationDone = true;
                OnDeathAnimationFinished?.Invoke(this);
                onComplete?.Invoke();
            }
        }

        private async UniTask PlayMinecraftStyleDeathAsync()
        {
            ViewConfigData cfg = Data.Config.ViewConfig;

            _preDeathLocalRotation = transform.localRotation;
            _preDeathRotationRestorePending = true;

            Vector3 startEuler = transform.localEulerAngles;
            Vector3 targetEuler = new Vector3(startEuler.x - cfg.minecraftDeathFallDegrees, startEuler.y, startEuler.z);
            await TweenLocalRotateAsync(startEuler, targetEuler, cfg.minecraftDeathFallDuration, EaseOutCubic);

            float height = GetModelHeight();
            float sinkDistance = Mathf.Max(height * cfg.minecraftDeathSinkFactor, 0.05f);
            await TweenWorldMoveAsync(transform.position, transform.position + Vector3.down * sinkDistance, cfg.minecraftDeathSinkDuration, EaseInSine);
        }

        private async UniTask PlayLegacyDeathAnimClipAsync()
        {
            string animName = Data.Config.ViewConfig.deathAnimationName;
            PlayAnim(animName);
            await UniTask.Yield();

            float elapsed = 0f;
            float timeout = Data.Config.ViewConfig.deathAnimationStateTimeout;
            while (elapsed < timeout && _animator != null && !_animator.GetCurrentAnimatorStateInfo(0).IsName(animName))
            {
                await UniTask.Yield();
                elapsed += Time.deltaTime;
            }

            float clipLength = _animator != null && _animator.GetCurrentAnimatorStateInfo(0).IsName(animName)
                ? _animator.GetCurrentAnimatorStateInfo(0).length
                : Data.Config.ViewConfig.deathAnimationDefaultClipLength;

            await UniTask.Delay(TimeSpan.FromSeconds(clipLength));
        }


        private static float EaseOutCubic(float t) => 1f - Mathf.Pow(1f - t, 3f);
        private static float EaseInSine(float t) => 1f - Mathf.Cos(t * Mathf.PI * 0.5f);

        private async UniTask TweenLocalRotateAsync(Vector3 fromEuler, Vector3 toEuler, float duration, Func<float, float> ease)
        {
            if (duration <= 0f)
            {
                transform.localEulerAngles = toEuler;
                return;
            }

            float elapsed = 0f;
            while (elapsed < duration)
            {
                elapsed += Time.deltaTime;
                float t = Mathf.Clamp01(elapsed / duration);
                transform.localEulerAngles = Vector3.Lerp(fromEuler, toEuler, ease(t));
                await UniTask.Yield();
            }
            transform.localEulerAngles = toEuler;
        }

        private async UniTask TweenWorldMoveAsync(Vector3 from, Vector3 to, float duration, Func<float, float> ease)
        {
            if (duration <= 0f)
            {
                transform.position = to;
                return;
            }

            float elapsed = 0f;
            while (elapsed < duration)
            {
                elapsed += Time.deltaTime;
                float t = Mathf.Clamp01(elapsed / duration);
                transform.position = Vector3.Lerp(from, to, ease(t));
                await UniTask.Yield();
            }
            transform.position = to;
        }

        private float GetModelHeight()
        {
            if (_renderers == null || _renderers.Length == 0) return 0f;

            Bounds bounds = _renderers[0].bounds;
            for (int i = 1; i < _renderers.Length; i++)
            {
                if (_renderers[i] != null) bounds.Encapsulate(_renderers[i].bounds);
            }
            return bounds.size.y;
        }
    }
}
