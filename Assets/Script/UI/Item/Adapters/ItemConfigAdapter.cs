using Core.Data;

namespace UI.Item
{
    /// <summary>Adapts a consumable item config to an IItemDescriptor; names come from the config table.</summary>
    public class ItemConfigAdapter : ItemAdapter<TableData.ItemConfig>
    {
        public override IItemDescriptor Adapt(TableData.ItemConfig cfg, SlotContext ctx)
        {
            return FromConfig(cfg);
        }

        public static IItemDescriptor FromConfig(TableData.ItemConfig cfg)
        {
            return new ItemDescriptor
            {
                NameGetter = () => cfg.name,
                SubtextGetter = () => string.Empty,
                TooltipGetter = () => cfg.desc,
                IconPath = cfg.iconPath,
            };
        }
    }
}
