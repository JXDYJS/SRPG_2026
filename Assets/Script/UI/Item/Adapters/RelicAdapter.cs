using Core.Data;
using GamePlay.Relics;

namespace UI.Item
{
    /// <summary>Adapts relics to item descriptors using RelicConfigs data.</summary>
    public class RelicAdapter : ItemAdapter<RelicBase>
    {
        public override IItemDescriptor Adapt(RelicBase relic, SlotContext ctx)
        {
            if (relic == null || string.IsNullOrEmpty(relic.ID)) return null;
            if (!Data.Table.RelicConfigs.TryGetValue(relic.ID, out var cfg)) return null;
            return FromConfig(cfg);
        }

        public static IItemDescriptor FromConfig(TableData.RelicConfig cfg)
        {
            return new ItemDescriptor
            {
                NameGetter = () => cfg.name,
                SubtextGetter = () => string.Empty,
                TooltipGetter = () => cfg.desc,
                IconPath = cfg.sprite,
            };
        }
    }
}
