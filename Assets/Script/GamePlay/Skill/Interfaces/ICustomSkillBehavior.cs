using GamePlay.Units;
using GamePlay.Skill;

namespace GamePlay.Skill.Interfaces
{
    /// <summary>
    /// Handles complex skill logic that config tables cannot express
    /// </summary>
    public interface ICustomSkillBehavior
    {
        /// <summary>
        /// Takes over skill logic execution and returns the SkillSequenceResult for the presentation layer
        /// </summary>
        SkillSequenceResult ExecuteLogic(MapUnit caster, SkillTargetContext context, SkillDataSO skillData);
    }
}