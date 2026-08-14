using System;
using UnityEngine;
using Global;
using Core.Data;
using Cysharp.Threading.Tasks;
using GamePlay.Skill;
using System.Collections.Generic;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace GamePlay.View
{
    /// <summary>Transform anchors for code-driven animations, resolved per model.</summary>
    [System.Serializable]
    public class ModelParts
    {
        public Transform Head;
        public Transform Body;
        public Transform Chest;
        public Transform RightArm;
        public Transform LeftArm;
        public Transform RightLeg;
        public Transform LeftLeg;

        public Transform Get(BodyPart part)
        {
            switch (part)
            {
                case BodyPart.Head: return Head;
                case BodyPart.Body: return Body;
                case BodyPart.Chest: return Chest;
                case BodyPart.RightArm: return RightArm;
                case BodyPart.LeftArm: return LeftArm;
                case BodyPart.RightLeg: return RightLeg;
                case BodyPart.LeftLeg: return LeftLeg;
                default: return null;
            }
        }

        public bool IsEmpty
        {
            get
            {
                return Head == null && Body == null && Chest == null
                    && RightArm == null && LeftArm == null
                    && RightLeg == null && LeftLeg == null;
            }
        }
    }

    public class UnitView : MonoBehaviour
    {
        private Animator _animator;
        private AudioSource _audioSource;
        private bool _animatorTakenOver;
        private Renderer[] _renderers;
        private int _hitCount = 0;
        private Color[] _originalColors;
        public int TimeGapDamage = 300;
        public Vector3 DamagePosOffset = new Vector3(0.0f,2.0f,1.0f);

        [Header("Code-Driven Animation Parts")]
        [Tooltip("模型部位引用。留空时 Awake 会按名称关键词自动查找；查找不到可手动拖拽")]
        public ModelParts Parts = new ModelParts();

        void Awake()
        {
            _animator = GetComponent<Animator>();
            _audioSource = GetComponent<AudioSource>();
            if (_audioSource == null)
            {
                _audioSource = gameObject.AddComponent<AudioSource>();
                _audioSource.playOnAwake = false;
            }
            _renderers = GetComponentsInChildren<Renderer>();

            if (Parts.IsEmpty)
            {
                AutoFindParts();
            }
        }

        public void PlayAnim(string animName)
        {
            if (_animator != null && !string.IsNullOrEmpty(animName))
            {
                _animator.SetTrigger(animName);
            }
        }

        // ================ Code-driven animation support ================

        /// <summary>Gets a body part anchor, or null if the model has no such part.</summary>
        public Transform GetPart(BodyPart part)
        {
            return Parts.Get(part);
        }

        /// <summary>World position of a body part, or the unit position as fallback.</summary>
        public Vector3 GetPartWorldPosition(BodyPart part)
        {
            Transform anchor = Parts.Get(part);
            return anchor != null ? anchor.position : transform.position;
        }

        /// <summary>Disables the Animator so code tweening owns the model.</summary>
        public void TakeOverAnimator()
        {
            if (_animator == null || _animatorTakenOver)
            {
                return;
            }
            _animator.enabled = false;
            _animatorTakenOver = true;
        }

        /// <summary>Re-enables the Animator after a code-driven performance.</summary>
        public void ReleaseAnimator()
        {
            if (_animator == null || !_animatorTakenOver)
            {
                return;
            }
            _animator.enabled = true;
            _animatorTakenOver = false;
        }

        public async UniTask ExecuteAction(SkillActionSO action, ActionContext ctx)
        {
            if (action == null)
            {
                return;
            }
            await action.ExecuteAsync(this, ctx);
        }

        /// <summary>Spawns an effect, optionally parented to a body part so it follows motion.</summary>
        public async UniTask<GameObject> SpawnEffect(AssetReferenceGameObject effectRef, BodyPart socket, Vector3 offset, bool follow)
        {
            if (effectRef == null || !effectRef.RuntimeKeyIsValid())
            {
                return null;
            }

            Transform anchor = Parts.Get(socket);
            if (follow && anchor != null)
            {
                var handle = Addressables.InstantiateAsync(effectRef, anchor, false);
                GameObject effectObj = await handle.Task;
                if (effectObj != null)
                {
                    effectObj.transform.localPosition = offset;
                    effectObj.transform.localRotation = Quaternion.identity;
                }
                return effectObj;
            }

            Vector3 worldPos = anchor != null ? anchor.position : transform.position;
            var worldHandle = Addressables.InstantiateAsync(effectRef, worldPos + offset, Quaternion.identity);
            return await worldHandle.Task;
        }

        public async UniTaskVoid DestroyEffectDelayed(GameObject effectObj, float delaySeconds)
        {
            await UniTask.Delay(TimeSpan.FromSeconds(delaySeconds), delayType: DelayType.DeltaTime);

            if (effectObj != null)
            {
                Addressables.ReleaseInstance(effectObj);
            }
        }

        public void PlayOneShot(AudioClip clip, float volume, BodyPart socket)
        {
            if (_audioSource == null || clip == null)
            {
                return;
            }
            _audioSource.PlayOneShot(clip, volume);
        }

        /// <summary>Auto-resolves model parts by name keywords; unmatched parts stay null.</summary>
        private void AutoFindParts()
        {
            Transform[] allTransforms = GetComponentsInChildren<Transform>(true);

            foreach (Transform t in allTransforms)
            {
                string n = t.name.ToLowerInvariant();

                if (Parts.Head == null && n.Contains("head") && !n.Contains("arrow"))
                {
                    Parts.Head = t;
                }
                if (Parts.Chest == null && n.Contains("chest"))
                {
                    Parts.Chest = t;
                }
                if (Parts.Body == null && n.Contains("body"))
                {
                    Parts.Body = t;
                }
            }

            AssignSymmetricParts(allTransforms, "arm", ref Parts.RightArm, ref Parts.LeftArm);
            AssignSymmetricParts(allTransforms, "leg", ref Parts.RightLeg, ref Parts.LeftLeg);
        }

        private void AssignSymmetricParts(Transform[] allTransforms, string keyword, ref Transform right, ref Transform left)
        {
            List<Transform> candidates = new List<Transform>();

            foreach (Transform t in allTransforms)
            {
                string n = t.name.ToLowerInvariant();
                if (!n.Contains(keyword))
                {
                    continue;
                }

                if (n.Contains("right") || n.Contains(":r") || n.Contains(".r"))
                {
                    if (right == null)
                    {
                        right = t;
                        continue;
                    }
                }
                else if (n.Contains("left") || n.Contains(":l") || n.Contains(".l"))
                {
                    if (left == null)
                    {
                        left = t;
                        continue;
                    }
                }

                candidates.Add(t);
            }

            if (candidates.Count == 0)
            {
                return;
            }

            // Unmatched candidates: higher local X is treated as the right side.
            candidates.Sort((a, b) => b.localPosition.x.CompareTo(a.localPosition.x));
            if (right == null)
            {
                right = candidates[0];
                candidates.RemoveAt(0);
            }
            if (left == null && candidates.Count > 0)
            {
                left = candidates[0];
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
