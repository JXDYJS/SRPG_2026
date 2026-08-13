using System;
using System.Collections.Generic;
using Core.Data;
using GamePlay.Buff;

namespace UI.Item
{
    /// <summary>Resolves runtime objects and string IDs to IItemDescriptor via registered type adapters.</summary>
    public static class ItemView
    {
        private static readonly Dictionary<Type, IItemAdapter> _adapters = new Dictionary<Type, IItemAdapter>();
        private static readonly Dictionary<string, IItemDescriptor> _idCache = new Dictionary<string, IItemDescriptor>();

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

        /// <summary>Resolve a runtime object to its descriptor, falling back through base types.</summary>
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

        /// <summary>Resolve by item ID for catalog-backed kinds (currency / relic).</summary>
        public static IItemDescriptor ResolveConfig(string itemId)
        {
            if (!ItemCatalog.TryResolve(itemId, out ItemKind kind)) return null;

            switch (kind)
            {
                case ItemKind.Currency:
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


        /// <summary>Resolve any string ID to a descriptor (item / stat / buff) with caching; null cached for unknown IDs.</summary>
        public static IItemDescriptor ResolveByID(string id, SlotContext ctx = default)
        {
            if (string.IsNullOrEmpty(id)) return null;

            string key = id.ToLower();
            if (_idCache.TryGetValue(key, out IItemDescriptor cached))
            {
                return cached;
            }

            IItemDescriptor itemDesc = ResolveConfig(id);
            if (itemDesc != null) return CacheID(key, itemDesc);

            if (ctx.unit != null)
            {
                IItemDescriptor statDesc = ResolveStatByID(id, ctx);
                if (statDesc != null) return statDesc;
            }

            IItemDescriptor buffDesc = ResolveBuffByID(id, ctx);
            if (buffDesc != null) return CacheID(key, buffDesc);

            return CacheID(key, null);
        }

        public static bool TryResolveByID(string id, out IItemDescriptor desc, SlotContext ctx = default)
        {
            desc = ResolveByID(id, ctx);
            return desc != null;
        }

        /// <summary>Clear the ID resolution cache (call alongside BuffManager.ClearCache).</summary>
        public static void ClearResolveCache()
        {
            _idCache.Clear();
        }

        private static IItemDescriptor ResolveStatByID(string id, SlotContext ctx)
        {
            if (ctx.unit?.Character?.statSystem?.statList == null) return null;
            foreach ((string name, var stat) in ctx.unit.Character.statSystem.statList)
            {
                if (string.Equals(name, id, StringComparison.OrdinalIgnoreCase))
                {
                    return Resolve(stat, new SlotContext { unit = ctx.unit, label = DisplayLabel(name) });
                }
            }
            return null;
        }

        private static IItemDescriptor ResolveBuffByID(string id, SlotContext ctx)
        {
            BuffBase buff = BuffManager.CreateBuffFromID(id);
            if (buff == null) return null;
            return Resolve(buff, ctx);
        }

        private static string DisplayLabel(string name)
        {
            // Matches the display-name convention of StatusPopWindow
            if (name == "MaxHP") return "HP";
            if (name == "MaxMP") return "MP";
            return name;
        }

        private static IItemDescriptor CacheID(string key, IItemDescriptor desc)
        {
            _idCache[key] = desc;
            return desc;
        }
    }
}
