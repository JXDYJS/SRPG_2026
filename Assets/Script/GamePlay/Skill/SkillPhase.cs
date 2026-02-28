using System.Collections.Generic;
using Global;

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
        public int Value;
        public string BuffID;
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
        Position
    }
}
