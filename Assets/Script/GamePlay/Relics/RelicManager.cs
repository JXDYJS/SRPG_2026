using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using Core.Data;
using Lua;
using XLua;

namespace GamePlay.Relics
{
    /// <summary>
    /// Creates relic instances from an ID. Resolution order: C# reflection,
    /// then Lua; returns null if both fail. Runtime values come from RelicConfigs.
    /// </summary>
    public static class RelicManager
    {
        private static readonly Dictionary<string, Type> _reflectionCache = new Dictionary<string, Type>();

        public static RelicBase CreateRelicFromID(string relicId)
        {
            if (string.IsNullOrEmpty(relicId)) return null;

            string displayName = relicId;
            TableData.RelicConfig cfg = default;
            if (Data.Table.RelicConfigs.TryGetValue(relicId, out var foundCfg))
            {
                cfg = foundCfg;
                displayName = cfg.name;
            }

            string className = "Relic" + ToPascalCase(displayName);

            RelicBase fromCs = TryFromReflection(className, relicId, cfg);
            if (fromCs != null) return fromCs;

            RelicBase fromLua = TryFromLua(className, relicId, cfg);
            if (fromLua != null) return fromLua;

            Debug.LogError($"[RelicManager] 无法创建遗物 '{relicId}'（C# 反射与 Lua 均失败）");
            return null;
        }

        private static RelicBase TryFromReflection(string className, string relicId, TableData.RelicConfig cfg)
        {
            if (!_reflectionCache.TryGetValue(className, out var type))
            {
                type = typeof(RelicBase).Assembly.GetType($"GamePlay.Relics.{className}");
                if (type == null || type.IsAbstract || !type.IsSubclassOf(typeof(RelicBase)))
                {
                    return null;
                }
                _reflectionCache[className] = type;
            }

            RelicBase instance = ScriptableObject.CreateInstance(type) as RelicBase;
            if (instance != null)
            {
                FillConfig(instance, relicId, cfg);
            }
            return instance;
        }

        private static RelicBase TryFromLua(string className, string relicId, TableData.RelicConfig cfg)
        {
            string module = "Relic." + className;

            if (!LuaManager.Instance.SpawnClass(module, "__isRelicBase", out LuaTable instance))
            {
                return null;
            }

            RelicLuaWrapper wrapper = ScriptableObject.CreateInstance<RelicLuaWrapper>();
            wrapper.ID = relicId;
            wrapper.Bind(instance);
            FillConfig(wrapper, relicId, cfg);
            return wrapper;
        }

        private static void FillConfig(RelicBase relic, string relicId, TableData.RelicConfig cfg)
        {
            relic.ID = relicId;
            if (string.IsNullOrEmpty(relic.Name)) relic.Name = cfg.name;
            relic.Price = cfg.minPrice;
            relic.Rarity = cfg.rarity;
        }

        private static string ToPascalCase(string name)
        {
            string[] parts = name.Split(new[] { ' ', '_', '-' }, StringSplitOptions.RemoveEmptyEntries);
            for (int i = 0; i < parts.Length; i++)
            {
                if (parts[i].Length > 0)
                    parts[i] = char.ToUpper(parts[i][0]) + parts[i].Substring(1).ToLower();
            }
            return string.Join("", parts);
        }
    }
}
