using GamePlay.Buff;

namespace UI.Item
{
    /// <summary>
    /// BuffAdapter — BuffBase 适配器
    ///
    /// Name/Stacks 通过取值器实时读取，Stacks 变化（_onChange）时桥接到描述 Changed，
    /// 供槽位重新渲染层数。
    /// </summary>
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

        /// <summary>
        /// 格式化描述：把 {Stacks} 占位符替换为当前层数，供 tooltip 显示实时数值。
        /// 其余 {id} 引用标记由 DescMarkup 负责解析，不在此处理。
        /// </summary>
        private static string FormatDescription(BuffBase buff)
        {
            string desc = buff.Description;
            if (string.IsNullOrEmpty(desc)) return string.Empty;
            return desc.Replace("{Stacks}", $"{buff.Stacks}");
        }
    }
}
