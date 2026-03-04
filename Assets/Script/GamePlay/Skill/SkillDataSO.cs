using UnityEngine;
using Global;
using GamePlay.unit;
using GamePlay.Grid;
using Managers;
using Status.damage;
using System.Collections.Generic;

namespace GamePlay.Skill
{
    [CreateAssetMenu(menuName = "Game/Skill Data")]
    public class SkillDataSO : ScriptableObject
    {
        [Header("基础信息")]
        public string SkillName;
        [TextArea] public string Description;
        public Sprite Icon;

        [Header("目标配置")]
        [Tooltip("技能目标类型")]
        public TargetType TargetType = TargetType.Enemy;

        [Header("施法范围配置 (Cast Range)")]
        [Tooltip("施法形状：决定玩家可以选取哪些格子")]
        public CastPatternType CastPattern = CastPatternType.Diamond;

        [Tooltip("施法最大距离")]
        public int CastMaxRange = 1;

        [Tooltip("施法最小距离 (0或1，大于1则形成环形盲区)")]
        public int CastMinRange = 1;

        [Tooltip("施法垂直高度容忍度")]
        public int CastVerticalRange = 1; 

        [Tooltip("弹道轨迹类型 - 决定技能如何穿越空间到达目标")]
        public TrajectoryType Trajectory = TrajectoryType.LineOfSight;

        [Header("弹道配置 (Projectile Configuration)")]
        [Tooltip("弹道是否在碰到第一个目标时停止")]
        public bool StopsAtFirstHit = true;

        [Header("消耗配置")]
        [Tooltip("技能消耗（如MP/TP等）")]
        public int Cost = 0;

        [Header("技能阶段配置")]
        public List<SkillPhase> Phases = new List<SkillPhase>();
    }
}
