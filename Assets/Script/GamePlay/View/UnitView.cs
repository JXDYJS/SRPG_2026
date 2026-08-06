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
        /// <summary>
        /// 由于现在要改成相同职业的角色共享普通攻击模板  所以在view里自带自己的visualData给自己的普通攻击使用
        /// </summary>
        public List<SkillVisualData> NormalAttackVisualData = null;
        public event Action<string> OnAnimationEventTriggered;
        public int TimeGapDamage = 300;//调整两个伤害之间的时间间隔
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
                //Vector3 textPos = transform.position + Vector3.up * 1.5f;
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

        // ================= 嘲讽状态可视 =================

        private static readonly int TauntBaseColorId = Shader.PropertyToID("_BaseColor");
        private static readonly int TauntColorId = Shader.PropertyToID("_Color");
        private static readonly Color TauntTintColor = new Color(1f, 0.55f, 0f, 1f);
        private MaterialPropertyBlock _tauntBlock;

        /// <summary>
        /// 切换嘲讽橙色着色（MaterialPropertyBlock 实现，逐渲染器覆盖，不改共享材质）。
        /// 同时设置 _BaseColor / _Color 以兼容 URP 与 Standard 系 shader，未知属性被静默忽略。
        /// </summary>
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
                // 传空 PropertyBlock 清除 per-renderer 覆盖，回落到材质默认颜色
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
            // 死亡倒下后若被重新显示（如复活），还原倒下前的姿态
            if (_preDeathRotationRestorePending)
            {
                _preDeathRotationRestorePending = false;
                transform.localRotation = _preDeathLocalRotation;
            }
        }

        // ================= 死亡动画（我的世界式）与对外钩子 =================

        private bool _preDeathRotationRestorePending;
        private Quaternion _preDeathLocalRotation;

        /// <summary>
        /// 死亡动画播放完成事件（供游戏管理器判断是否可结束游戏）。
        /// </summary>
        public event Action<UnitView> OnDeathAnimationFinished;

        /// <summary>
        /// 当前是否正在播放死亡动画。
        /// </summary>
        public bool IsDeathAnimationPlaying { get; private set; }

        /// <summary>
        /// 死亡动画是否已播放完成。
        /// </summary>
        public bool IsDeathAnimationDone { get; private set; }

        /// <summary>
        /// 等待死亡动画播放完成（若已完成则立即返回）。游戏管理器可 await 此方法后再结算/结束游戏。
        /// </summary>
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

        /// <summary>
        /// 播放死亡动画，播放完毕回调 onComplete 并触发对外钩子。
        /// 默认走"我的世界式"程序化死亡（后倒+下沉，锚点在脚底）；可在 ViewConfig 关闭。
        /// </summary>
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

        /// <summary>
        /// 我的世界式死亡：模型锚点在脚底。
        /// 1. 绕脚底（transform 原点）沿本地 X 轴向后倒下，头部落到地面躺平；
        /// 2. 整个模型下沉没入地面（下沉距离取模型站立高度）。
        /// </summary>
        private async UniTask PlayMinecraftStyleDeathAsync()
        {
            ViewConfigData cfg = Data.Config.ViewConfig;

            // 记录倒下前的姿态，便于 ShowModel 复活/重置时还原
            _preDeathLocalRotation = transform.localRotation;
            _preDeathRotationRestorePending = true;

            // 1. 向后倒下
            Vector3 startEuler = transform.localEulerAngles;
            Vector3 targetEuler = new Vector3(startEuler.x - cfg.minecraftDeathFallDegrees, startEuler.y, startEuler.z);
            await TweenLocalRotateAsync(startEuler, targetEuler, cfg.minecraftDeathFallDuration, EaseOutCubic);

            // 2. 下沉没入地面（整个躺倒的身躯被埋入地下）
            float height = GetModelHeight();
            float sinkDistance = Mathf.Max(height * cfg.minecraftDeathSinkFactor, 0.05f);
            await TweenWorldMoveAsync(transform.position, transform.position + Vector3.down * sinkDistance, cfg.minecraftDeathSinkDuration, EaseInSine);
        }

        /// <summary>
        /// 旧版死亡逻辑：播放动画 clip 并等待其时长（保留用于没有程序化死亡需求的模型）。
        /// </summary>
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

        // ============ 死亡动画辅助：补间与缓动 ============

        private static float EaseOutCubic(float t) => 1f - Mathf.Pow(1f - t, 3f);
        private static float EaseInSine(float t) => 1f - Mathf.Cos(t * Mathf.PI * 0.5f);

        /// <summary>
        /// 本地欧拉角补间（绕脚底锚点旋转用）。
        /// </summary>
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

        /// <summary>
        /// 世界坐标补间（下沉入地用）。
        /// </summary>
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

        /// <summary>
        /// 通过渲染器包围盒估算模型站立高度（锚点在脚底时即脚底到头部的距离）。
        /// </summary>
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
