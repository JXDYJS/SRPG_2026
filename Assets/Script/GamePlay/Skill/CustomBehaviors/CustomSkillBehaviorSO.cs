using UnityEngine;
using GamePlay.Skill.Interfaces;
using GamePlay.Units;
namespace GamePlay.Skill.CustomBehaviors
{
    // Base class for all custom complex skill logic
    public abstract class CustomSkillBehaviorSO : ScriptableObject, ICustomSkillBehavior
    {
        public abstract SkillSequenceResult ExecuteLogic(MapUnit caster, SkillTargetContext context, SkillDataSO skillData);
    }
}