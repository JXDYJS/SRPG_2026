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

        [Header("范围配置 (Range)")]
        [Tooltip("攻击形状：菱形、方形、直线...")]
        public AttackPatternType AttackPattern = AttackPatternType.Diamond;

        [Tooltip("最大射程 (对于直线/扇形则是长度)")]
        public int MaxRange = 1;

        [Tooltip("最小射程 (0或1，大于1则形成环形盲区)")]
        public int MinRange = 1;

        [Tooltip("垂直高度容忍度 (例如 2 表示可以打高2格或低2格的目标)")]
        public int VerticalRange = 1; 

        [Tooltip("是否需要视野 (目前还没做，先留坑)")]
        public bool RequireLineOfSight = true;

        [Header("技能阶段配置")]
        public List<SkillPhase> Phases = new List<SkillPhase>();
    }
}
