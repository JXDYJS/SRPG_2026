using System;
using UnityEngine;
using GamePlay.Skill;

namespace GamePlay.AI
{
    /// <summary>Trigger conditions for scripted boss rules.</summary>
    public enum BossAIConditionType
    {
        Always,                     // Always fire (e.g., opener skill every N turns)
        SelfHPRatioBelow,           // Own HP ratio < ConditionParam (0~1)
        SelfHPRatioAbove,           // Own HP ratio > ConditionParam (0~1)
        TurnsElapsedAtLeast,        // Own turns acted >= ConditionParam
        AllyCountAtMost,            // Alive allies <= ConditionParam
        EnemiesInSkillRangeAtLeast, // Enemies in skill range (incl. after move) >= ConditionParam
        HasBuff                     // Self has buff ConditionStringParam (BuffID)
    }

    /// <summary>Forced actions produced by scripted boss rules.</summary>
    public enum BossAIActionType
    {
        CastSkillOnWeakestEnemy, // Cast ForcedSkill at the lowest-HP enemy
        CastSkillOnClosestEnemy, // Cast ForcedSkill at the nearest enemy
        CastSkillOnRandomEnemy,  // Cast ForcedSkill at a random enemy
        CastSkillOnDensestEnemy, // Cast ForcedSkill where its AoE covers the most enemies
        CastSkillOnSelf,         // Cast ForcedSkill on self (self-heal / self-buff)
        CastSkillOnWeakestAlly   // Cast ForcedSkill at the lowest-HP ally (heal)
    }

    /// <summary>
    /// One scripted rule: when the condition holds, force the action.
    /// Rules are evaluated in list order; the first rule that fires wins.
    /// </summary>
    [Serializable]
    public class BossAIRule
    {
        [Tooltip("规则名（仅用于 Inspector 辨识）")]
        public string RuleName = "New Rule";

        [Header("触发条件")]
        public BossAIConditionType ConditionType = BossAIConditionType.SelfHPRatioBelow;
        [Tooltip("条件数值参数：HP比例(0~1) / 回合数 / 数量")]
        public float ConditionParam = 0.3f;
        [Tooltip("条件字符串参数（HasBuff 时填 BuffID）")]
        public string ConditionStringParam = "";

        [Header("触发动作")]
        public BossAIActionType ActionType = BossAIActionType.CastSkillOnWeakestEnemy;
        [Tooltip("强制释放的技能（必须配置在该单位的技能栏中）")]
        public SkillDataSO ForcedSkill;

        [Header("规则控制")]
        [Tooltip("触发后冷却的自身回合数（0=可每回合触发）")]
        public int CooldownTurns = 2;
        public bool Enabled = true;
    }
}
