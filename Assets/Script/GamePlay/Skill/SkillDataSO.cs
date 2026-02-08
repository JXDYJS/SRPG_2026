using UnityEngine;
using Global; // 引用 AttackPatternType 等

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
        [Tooltip("技能演出")]
        public SkillVisualData VisualConfig;

        [Header("目标类型")]
        public bool TargetEnemy = true;
        public bool TargetAlly = false;
        public bool TargetSelf = false;
    }
}