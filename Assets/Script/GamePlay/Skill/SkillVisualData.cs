using UnityEngine;
using Global;
namespace GamePlay.Skill
{
    [System.Serializable]
    public class SkillVisualData
    {
        [Header("1. 起手阶段 (Pre-Cast)")]
        public string CastAnimTrigger = "Attack"; 
        public GameObject CastEffect;             
        public float CastDelay = 0.5f;            

        [Header("2. 过程阶段 (Transit)")]
        public TransitType Transit = TransitType.None;
        public GameObject ProjectilePrefab;       
        public float ProjectileSpeed = 10f;       

        [Header("3. 命中阶段 (Impact)")]
        public GameObject HitEffect;              
        public float HitDelay = 0.2f;             
    }
}
