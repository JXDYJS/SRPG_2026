using System;
using UnityEngine;

namespace Anim{
    public class AnimationEventLinker : MonoBehaviour
    {
        public Action OnHitPoint;     // 打击点回调
        public Action OnCompleted;   // 结束点回调

        public void TriggerHit()
        {
            OnHitPoint?.Invoke();
        }

        public void TriggerComplete()
        {
            OnCompleted?.Invoke();
        }
    }
}