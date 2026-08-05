using System;
using System.Collections.Generic;
using Core.Data;
using GamePlay.Buff;

namespace UI.Item
{
    /// <summary>
    /// DescriptorLibrary — 统一 string id → IItemDescriptor 解析器（带缓存）
    ///
    /// 弥补 ItemView 的两个缺口：
    ///   - Resolve(object) 需要运行时实例
    ///   - ResolveConfig(string) 只覆盖有配表的类别（currency/relic），buff 无配表取不到
    ///
    /// 本类把 id 按类别路由到各自解析源（与授予层 ItemCatalog / 解析层 BuffManager 共用）：
    ///   1. item（有配表）→ ItemCatalog.TryResolve → ItemView.ResolveConfig
    ///   2. stat（无 id 表，需所属单位上下文）→ statList 按名匹配 → ItemView.Resolve(Stat)
    ///   3. buff（无配表）→ BuffManager.CreateBuffFromID → ItemView.Resolve(BuffBase)
    /// 未知 id 返回 null 并缓存，避免重复解析刷屏。
    ///
    /// 缓存约定：仅缓存与上下文无关的结果（item / buff 显示描述）。
    /// stat 依赖 ctx.unit 的实时值，返回时跳过缓存，避免跨单位串值。
    /// </summary>
    public static class DescriptorLibrary
    {
        private static readonly Dictionary<string, IItemDescriptor> _cache = new();

        /// <summary>按 id 解析统一描述；未知 id 返回 null。</summary>
        public static IItemDescriptor Resolve(string id, SlotContext ctx = default)
        {
            if (string.IsNullOrEmpty(id)) return null;

            string key = id.ToLower();
            if (_cache.TryGetValue(key, out IItemDescriptor cached))
            {
                return cached;
            }

            // 1. item：有配表的类别（currency / relic / ...）
            IItemDescriptor itemDesc = ResolveItem(id);
            if (itemDesc != null) return Cache(key, itemDesc);

            // 2. stat：依赖所属单位上下文，命中后不缓存
            if (ctx.unit != null)
            {
                IItemDescriptor statDesc = ResolveStat(id, ctx);
                if (statDesc != null) return statDesc;
            }

            // 3. buff：无配表，经 BuffManager 三源（Addressables/反射/Lua）创建实例再适配
            IItemDescriptor buffDesc = ResolveBuff(id, ctx);
            if (buffDesc != null) return Cache(key, buffDesc);

            // 未知 id：缓存 null 防止每次 hover 重复触发 BuffManager 的报错日志
            return Cache(key, null);
        }

        public static bool TryResolve(string id, out IItemDescriptor desc, SlotContext ctx = default)
        {
            desc = Resolve(id, ctx);
            return desc != null;
        }

        /// <summary>清空缓存（与 BuffManager.ClearCache 配套调用）</summary>
        public static void ClearCache()
        {
            _cache.Clear();
        }

        private static IItemDescriptor ResolveItem(string id)
        {
            if (!ItemCatalog.TryResolve(id, out _)) return null;
            return ItemView.ResolveConfig(id);
        }

        private static IItemDescriptor ResolveStat(string id, SlotContext ctx)
        {
            if (ctx.unit?.Character?.statSystem?.statList == null) return null;
            foreach ((string name, var stat) in ctx.unit.Character.statSystem.statList)
            {
                if (string.Equals(name, id, StringComparison.OrdinalIgnoreCase))
                {
                    return ItemView.Resolve(stat, new SlotContext { unit = ctx.unit, label = DisplayLabel(name) });
                }
            }
            return null;
        }

        private static IItemDescriptor ResolveBuff(string id, SlotContext ctx)
        {
            BuffBase buff = BuffManager.CreateBuffFromID(id);
            if (buff == null) return null;
            return ItemView.Resolve(buff, ctx);
        }

        private static string DisplayLabel(string name)
        {
            // 与 StatusPopWindow 的展示名约定保持一致
            if (name == "MaxHP") return "HP";
            if (name == "MaxMP") return "MP";
            return name;
        }

        private static IItemDescriptor Cache(string key, IItemDescriptor desc)
        {
            _cache[key] = desc;
            return desc;
        }
    }
}
