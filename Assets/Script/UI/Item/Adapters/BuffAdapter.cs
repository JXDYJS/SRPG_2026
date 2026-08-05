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
                Icon = buff.Icon,
            };
            desc.LinkSource(
                add => buff._onChange += add,
                remove => buff._onChange -= remove);
            return desc;
        }
    }
}
