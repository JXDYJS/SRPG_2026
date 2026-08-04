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
    /// 遗物管理器 — 负责从遗物 ID 创建遗物实例。
    ///
    /// 解析顺序（与 BuffManager 三层模式一致）：
    ///   1. C# 反射：GamePlay.Relics.Relic{Name} 类（如 RelicBeacon）
    ///   2. Lua：Lua/Relic/Relic{Name}.lua 同名表（以 _isRelicBase 判定）
    ///   3. 均失败时返回 null，调用方记录警告
    ///
    /// 运行时数值（Price / Rarity）最终以 Data.Table.RelicConfigs 配表为准。
    /// </summary>
    public static class RelicManager
    {
        private static readonly Dictionary<string, Type> _reflectionCache = new Dictionary<string, Type>();

        public static RelicBase CreateRelicFromID(string relicId)
        {
            if (string.IsNullOrEmpty(relicId)) return null;

            // 1. 查配表获取展示名（用于解析类名 / 模块名）
            string displayName = relicId;
            TableData.RelicConfig cfg = default;
            if (Data.Table.RelicConfigs.TryGetValue(relicId, out var foundCfg))
            {
                cfg = foundCfg;
                displayName = cfg.name;
            }

            string className = "Relic" + ToPascalCase(displayName);

            // 2. C# 反射优先
            RelicBase fromCs = TryFromReflection(className, relicId, cfg);
            if (fromCs != null) return fromCs;

            // 3. Lua 兜底
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

            LuaTable cls;
            try
            {
                object[] ret = LuaManager.Instance.LuaEnv.DoString("return require('" + module + "')");
                if (ret == null || ret.Length == 0) return null;
                cls = ret[0] as LuaTable;
                if (cls == null) return null;
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[RelicManager] Lua require '{module}' 失败: {e.Message}");
                return null;
            }

            if (!InheritsFromRelicBase(cls)) return null;

            try
            {
                object[] ret2 = LuaManager.Instance.LuaEnv.DoString("return require('" + module + "')()");
                if (ret2 == null || ret2.Length == 0) return null;
                LuaTable instance = ret2[0] as LuaTable;
                if (instance == null) return null;

                RelicLuaWrapper wrapper = ScriptableObject.CreateInstance<RelicLuaWrapper>();
                wrapper.ID = relicId;
                wrapper.Bind(instance);
                FillConfig(wrapper, relicId, cfg);
                return wrapper;
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[RelicManager] Lua 实例化遗物 '{module}' 失败: {e.Message}");
                return null;
            }
        }

        private static void FillConfig(RelicBase relic, string relicId, TableData.RelicConfig cfg)
        {
            relic.ID = relicId;
            if (string.IsNullOrEmpty(relic.Name)) relic.Name = cfg.name;
            relic.Price = cfg.minPrice;
            relic.Rarity = cfg.rarity;
        }

        private static bool InheritsFromRelicBase(LuaTable cls)
        {
            LuaFunction check = LuaManager.Instance.LuaEnv.Global.Get<LuaFunction>("_isRelicBase");
            if (check == null) return false;
            object[] ret = check.Call(cls);
            return ret != null && ret.Length > 0 && (bool)ret[0];
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
