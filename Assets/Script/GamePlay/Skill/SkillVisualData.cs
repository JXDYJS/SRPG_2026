using UnityEngine;
using Global;
using UnityEngine.AddressableAssets;

namespace GamePlay.Skill
{
    public enum TimingMode
    {
        Instant,
        AnimationEvent,
        FixedTime
    }

    [System.Serializable]
    public class SkillVisualData
    {
        [Header("1. 起手阶段 (Pre-Cast)")]
        public string CastAnimTrigger = "Attack"; 
        public AssetReferenceGameObject CastEffect;              

        [Header("2. 过程阶段 (Transit)")]
        public TransitType Transit = TransitType.None;
        public AssetReferenceGameObject ProjectilePrefab;       
        public float ProjectileSpeed = 10f;       

        [Header("3. 命中触发 (Hit)")]
        public TimingMode HitTimingMode = TimingMode.Instant;
        public string HitEventName = "Hit";
        public float HitDelayTime = 0.3f;

        [Header("4. 结束触发 (End)")]
        public TimingMode EndTimingMode = TimingMode.Instant;
        public string EndEventName = "End";
        public float EndDelayTime = 0.3f;

        [Header("5. 区域特效 (Area Effect)")]
        public AssetReferenceGameObject TargetAreaEffect;
        public Vector3 TargetAreaOffset = new Vector3(0, 8, 0);
        public Vector3 TargetAreaRotation = new Vector3(90, 0, 0);
        
        [Tooltip("区域特效持续时间（秒）。正数表示自动销毁，-1或0表示持久特效")]
        public float TargetAreaDuration = -1f;
    }
}
