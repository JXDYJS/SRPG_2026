using System;
using System.Collections.Generic;
using Core.Data;

namespace UI.Item
{
    /// <summary>
    /// ItemView — 槽位内容兼容层（注册表）
    ///
    /// 把"运行时对象 → IItemDescriptor"的映射集中管理，替代 SimpleSlot 里的 if 判别链。
    /// 内置适配器在静态构造函数中自动注册，零启动代码；
    /// 新增类型 = 写一个适配器 + Register 一行，兼容层本体不再改动。
    /// </summary>
    public static class ItemView
    {
        private static readonly Dictionary<Type, IItemAdapter> _adapters = new Dictionary<Type, IItemAdapter>();

        static ItemView()
        {
            Register(new BuffAdapter());
            Register(new StatAdapter());
            Register(new SkillAdapter());
            Register(new RelicAdapter());
        }

        public static void Register<T>(ItemAdapter<T> adapter)
        {
            if (adapter == null) return;
            _adapters[typeof(T)] = adapter;
        }

        /// <summary>
        /// 将运行时对象解析为统一描述。
        /// 按具体类型查表，含基类回退（如 RelicTurtleHelmet 命中 RelicBase 的适配器）。
        /// 解析失败返回 null，由调用方决定兜底。
        /// </summary>
        public static IItemDescriptor Resolve(object item, SlotContext ctx = default)
        {
            if (item == null) return null;
            if (item is IItemDescriptor direct) return direct;

            Type type = item.GetType();
            while (type != null)
            {
                if (_adapters.TryGetValue(type, out var adapter))
                {
                    return adapter.Adapt(item, ctx);
                }
                type = type.BaseType;
            }
            return null;
        }

        /// <summary>
        /// 按 itemId 解析内容物品描述（商店等场景直接由 itemId 出描述，无需运行时实例）。
        /// 与授予层共用 ItemCatalog 的类别解析；新类别只需在下方加分支。
        /// </summary>
        public static IItemDescriptor ResolveConfig(string itemId)
        {
            if (!ItemCatalog.TryResolve(itemId, out ItemKind kind)) return null;

            switch (kind)
            {
                case ItemKind.Currency:
                    // 金币作为纯正 item 展示；图标未配置时由 UI 兜底默认图
                    return new ItemDescriptor
                    {
                        NameGetter = () => "Gold",
                        SubtextGetter = () => string.Empty,
                        IconPath = Data.Config.shopConfig.goldSpritePath,
                    };
                case ItemKind.Relic:
                    return Data.Table.RelicConfigs.TryGetValue(itemId, out var cfg) ? RelicAdapter.FromConfig(cfg) : null;
            }
            return null;
        }
    }
}
