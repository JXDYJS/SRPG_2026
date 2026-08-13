using GamePlay.Skill;

namespace UI.Item
{
    /// <summary>
    /// Static skill data needs no live refresh, so it does not hook change events.
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
