using UnityEngine;
using Global;
using UnityEngine.AddressableAssets;

namespace GamePlay.Skill
{
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

        [Header("3. 动画信号监听")]
        public string HitEventName = "Hit";  
        public string EndEventName = "End";  
    }
}
