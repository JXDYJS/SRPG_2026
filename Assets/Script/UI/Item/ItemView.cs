using System;
using System.Collections.Generic;
using Core.Data;
using GamePlay.Buff;

namespace UI.Item
{
    /// <summary>
    /// ItemView — 槽位内容兼容层（注册表）
    ///
    /// 统一"对象/id → IItemDescriptor"的解析，UI 侧不写 if 判别链。
    /// 三个入口互补：
    ///   - Resolve(object, ctx)：运行时实例 → 描述（经适配器按类型查表）
    ///   - ResolveConfig(string)：有配表的类别（currency/relic）→ 描述，纯配表场景用
    ///   - ResolveByID(string, ctx)：任意 string id → 描述（item / stat / buff 全路由，带缓存）
    ///
    /// 内置适配器在静态构造函数中自动注册，零启动代码；
    /// 新增类型 = 写一个适配器 + Register 一行，兼容层本体不再改动。
    /// </summary>
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
        /// 仅覆盖有配表的类别（currency / relic），与授予层共用 ItemCatalog 的类别解析。
        /// 需要解析 buff / stat 时请改用 ResolveByID。
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

        // ==================== 统一 string id → 描述 ====================

        /// <summary>
        /// 按任意 string id 解析统一描述，路由到三类解析源（带缓存）：
        ///   1. item（有配表：currency / relic）→ ResolveConfig
        ///   2. stat（无 id 表，需所属单位上下文）→ statList 按名匹配 → Resolve(Stat)
        ///   3. buff（无配表）→ BuffManager 三源（Addressables/反射/Lua）→ Resolve(BuffBase)
        /// 未知 id 返回 null 并缓存，避免重复触发 BuffManager 报错日志。
        ///
        /// 缓存约定：仅缓存与上下文无关的结果（item / buff 显示描述）；
        /// stat 依赖 ctx.unit 的实时值，命中时返回但不缓存，避免跨单位串值。
        /// </summary>
        public static IItemDescriptor ResolveByID(string id, SlotContext ctx = default)
        {
            if (string.IsNullOrEmpty(id)) return null;

            string key = id.ToLower();
            if (_idCache.TryGetValue(key, out IItemDescriptor cached))
            {
                return cached;
            }

            // 1. item：有配表的类别
            IItemDescriptor itemDesc = ResolveConfig(id);
            if (itemDesc != null) return CacheID(key, itemDesc);

            // 2. stat：依赖所属单位上下文，命中后不缓存
            if (ctx.unit != null)
            {
                IItemDescriptor statDesc = ResolveStatByID(id, ctx);
                if (statDesc != null) return statDesc;
            }

            // 3. buff：无配表，经 BuffManager 创建实例再适配
            IItemDescriptor buffDesc = ResolveBuffByID(id, ctx);
            if (buffDesc != null) return CacheID(key, buffDesc);

            // 未知 id：缓存 null 防止每次 hover 重复触发 BuffManager 报错
            return CacheID(key, null);
        }

        public static bool TryResolveByID(string id, out IItemDescriptor desc, SlotContext ctx = default)
        {
            desc = ResolveByID(id, ctx);
            return desc != null;
        }

        /// <summary>清空 id 解析缓存（与 BuffManager.ClearCache 配套调用）</summary>
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
            // 与 StatusPopWindow 的展示名约定保持一致
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
