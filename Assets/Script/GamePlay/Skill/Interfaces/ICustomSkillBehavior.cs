using GamePlay.Units;
using GamePlay.Skill;

namespace GamePlay.Skill.Interfaces
{
    /// <summary>
    /// 用于处理配置表无法实现的复杂技能逻辑
    /// </summary>
    public interface ICustomSkillBehavior
    {
        /// <summary>
        /// 接管技能的逻辑执行过程
        /// 返回生成的 SkillSequenceResult 供后续的表现层 (SkillPerformer) 播放
        /// </summary>
        SkillSequenceResult ExecuteLogic(MapUnit caster, SkillTargetContext context, SkillDataSO skillData);
    }
}