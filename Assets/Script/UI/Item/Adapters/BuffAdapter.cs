using GamePlay.Buff;

namespace UI.Item
{
    /// <summary>Bridges a BuffBase to an IItemDescriptor, live-updating when stacks change.</summary>
    public class BuffAdapter : ItemAdapter<BuffBase>
    {
        public override IItemDescriptor Adapt(BuffBase buff, SlotContext ctx)
        {
            var desc = new ItemDescriptor
            {
                NameGetter = () => buff.Name,
                SubtextGetter = () => $"{buff.Stacks}",
                TooltipGetter = () => FormatDescription(buff),
                Icon = buff.Icon,
            };
            desc.LinkSource(
                add => buff._onChange += add,
                remove => buff._onChange -= remove);
            return desc;
        }

        /// <summary>Replace the {Stacks} placeholder with the current count for the tooltip.</summary>
        private static string FormatDescription(BuffBase buff)
        {
            string desc = buff.Description;
            if (string.IsNullOrEmpty(desc)) return string.Empty;
            return desc.Replace("{Stacks}", $"{buff.Stacks}");
        }
    }
}
