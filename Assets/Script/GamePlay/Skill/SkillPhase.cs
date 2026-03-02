using System.Collections.Generic;
using Global;
using UnityEngine;

namespace GamePlay.Skill
{
    [System.Serializable]
    public class SkillPhase
    {
        public string PhaseName;
        public TargetType TargetType;
        public List<SkillEffect> Effects;
        public SkillVisualData VisualData;

        public SkillPhase(string phaseName, TargetType targetType = TargetType.Enemy)
        {
            this.PhaseName = phaseName;
            this.TargetType = targetType;
            this.Effects = new List<SkillEffect>();
        }
    }

    [System.Serializable]
    public class SkillEffect
    {
        public EffectType EffectType;
        
        [Header("伤害/治疗公式: (ATK + FlatBonus) * Multiplier + Constant")]
        [Tooltip("固定加成值 A")]
        public int FlatBonus = 0;
        
        [Tooltip("倍率 B (1.0 = 100% ATK)")]
        public float Multiplier = 1.0f;
        
        [Tooltip("固定额外值 C")]
        public int Constant = 0;
        
        public DamageType DamageType = DamageType.Physical;
        public string BuffID;

        public int CalculateValue(int baseATK)
        {
            return (int)((baseATK + FlatBonus) * Multiplier) + Constant;
        }
    }

    public enum EffectType
    {
        Damage,
        Heal,
        AddBuff,
        RemoveBuff,
        MoveCaster
    }

    public enum TargetType
    {
        Enemy,
        Ally,
        Self,
        Position,
        AnyUnit,
        Player,
    }
}
