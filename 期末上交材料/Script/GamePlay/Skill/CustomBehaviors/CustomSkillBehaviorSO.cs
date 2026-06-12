using UnityEngine;
using GamePlay.Skill.Interfaces;
using GamePlay.Units;
namespace GamePlay.Skill.CustomBehaviors
{
    // 所有自定义复杂技能逻辑的基类
    public abstract class CustomSkillBehaviorSO : ScriptableObject, ICustomSkillBehavior
    {
        public abstract SkillSequenceResult ExecuteLogic(MapUnit caster, SkillTargetContext context, SkillDataSO skillData);
    }
}