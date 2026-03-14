using System.Collections.Generic;
using Global;
using UnityEngine;

namespace GamePlay.Skill
{
    public enum AoEOriginType
    {
        TargetPosition,
        CasterPosition
    }

    [System.Serializable]
    public class SkillPhase
    {
        public string PhaseName;
        public TargetType TargetType;
        
        [Header("AoE范围配置")]
        [Tooltip("影响范围形状")]
        public AoEPatternType AoEPattern = AoEPatternType.SingleTarget;
        
        [Tooltip("影响范围半径 (0表示单体)")]
        public int AoERadius = 0;
        
        [Tooltip("影响范围垂直高度容忍度")]
        public int AoEVerticalRange = 1;
        
        [Tooltip("AoE形状的生成中心：TargetPosition=以目标点为中心，CasterPosition=以施法者为中心")]
        public AoEOriginType OriginType = AoEOriginType.TargetPosition;
        
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
        
        [Header("Buff 配置")]
        [Tooltip("要添加的 Buff 层数")]
        public int BuffStacks = 1;
        
        [Tooltip("移除 Buff 的模式 (仅对 RemoveBuff 有效)")]
        public BuffRemoveMode RemoveMode = BuffRemoveMode.RemoveAll;

        public int CalculateValue(int baseATK)
        {
            return (int)((baseATK + FlatBonus) * Multiplier) + Constant;
        }
    }

    public enum BuffRemoveMode
    {
        RemoveAll,
        RemoveSpecificStacks
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
        Teammates,
        ExceptTeammates,
    }
}