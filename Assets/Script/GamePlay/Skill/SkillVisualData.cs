using UnityEngine;
using Global;
namespace GamePlay.Skill
{
    [System.Serializable]
    public class SkillVisualData
    {
        [Header("1. 起手阶段 (Pre-Cast)")]
        public string CastAnimTrigger = "Attack"; // 播放哪个动作？
        public GameObject CastEffect;             // 脚下有什么特效？
        public float CastDelay = 0.5f;            // 动作前摇多久？

        [Header("2. 过程阶段 (Transit)")]
        public TransitType Transit = TransitType.None;
        public GameObject ProjectilePrefab;       // 飞弹模型
        public float ProjectileSpeed = 10f;       // 飞行速度

        [Header("3. 命中阶段 (Impact)")]
        public GameObject HitEffect;              // 受击特效
        public float HitDelay = 0.2f;             // 命中后停顿多久(后摇)
    }
}