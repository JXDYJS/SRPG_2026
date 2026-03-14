using System;
using UnityEngine;
using Global;
using Cysharp.Threading.Tasks;

namespace GamePlay.View
{
    public class UnitView : MonoBehaviour
    {
        private Animator _animator;
        private Renderer[] _renderers;
        private int _hitCount = 0;
        private Color[] _originalColors;

        public event Action<string> OnAnimationEventTriggered;

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
                Vector3 textPos = transform.position + Vector3.up * 1.5f;
                Managers.DamageUIManager.Instance.ShowDamage(textPos, damage, damageType);
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

        public void PlayDeathAnimation()
        {
            PlayAnim("Death");
        }
    }
}
