using Core.Data;
using GamePlay.Relics;

namespace UI.Item
{
    /// <summary>
    /// RelicAdapter — 遗物适配器
    ///
    /// 遗物展示数据以配表 RelicConfigs 为准，运行时实例只提供 ID 定位配表行。
    /// 商店等无需运行时实例的场景可直接通过 ItemView.ResolveConfig(itemId) 出描述。
    /// </summary>
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
