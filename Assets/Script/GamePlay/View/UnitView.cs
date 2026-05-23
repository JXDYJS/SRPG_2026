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

        public void HideModel()
        {
            gameObject.SetActive(false);
        }

        public void ShowModel()
        {
            gameObject.SetActive(true);
        }

        private bool _isDying;

        public async UniTask PlayDeathAnimation(Action onComplete = null)
        {
            if (_isDying) return;
            _isDying = true;

            string animName = Data.Config.ViewConfig.deathAnimationName;
            PlayAnim(animName);
            await UniTask.Yield();

            float elapsed = 0f;
            float timeout = Data.Config.ViewConfig.deathAnimationStateTimeout;
            while (elapsed < timeout && !_animator.GetCurrentAnimatorStateInfo(0).IsName(animName))
            {
                await UniTask.Yield();
                elapsed += Time.deltaTime;
            }

            float clipLength = _animator.GetCurrentAnimatorStateInfo(0).IsName(animName)
                ? _animator.GetCurrentAnimatorStateInfo(0).length
                : Data.Config.ViewConfig.deathAnimationDefaultClipLength;

            await UniTask.Delay(TimeSpan.FromSeconds(clipLength));
            onComplete?.Invoke();
        }
    }
}
