using GamePlay.Skill;

namespace UI.Item
{
    /// <summary>
    /// SkillAdapter — SkillDataSO 适配器
    ///
    /// 技能为静态数据，无实时刷新需求，不连接变更事件。
    /// </summary>
    public class SkillAdapter : ItemAdapter<SkillDataSO>
    {
        public override IItemDescriptor Adapt(SkillDataSO skill, SlotContext ctx)
        {
            return new ItemDescriptor
            {
                NameGetter = () => skill.SkillName,
                SubtextGetter = () => skill.Description,
                Icon = skill.Icon,
            };
        }
    }
}
