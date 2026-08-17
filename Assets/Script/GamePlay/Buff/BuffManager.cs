using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.AddressableAssets;
using GamePlay.Units;
using Core.Data;
using Lua;
using XLua;

namespace GamePlay.Buff
{
    public static class BuffManager
    {
        private static Dictionary<string, BuffBase> _templateCache = new Dictionary<string, BuffBase>();
        private static Dictionary<string, Type> _reflectionCache = new Dictionary<string, Type>();
        private static Dictionary<string, float> _aiValueCache = new Dictionary<string, float>();

        public static BuffBase CreateBuffFromID(string buffID, int stacks = 1)
        {
            if (string.IsNullOrEmpty(buffID))
            {
                Debug.LogWarning("BuffManager: BuffID 为空");
                return null;
            }

            string key = buffID.ToLower();

            // 1. Try Addressables first (legacy .asset-based buffs: strength, weak, etc.)
            BuffBase instance = TryFromAddressables(key, buffID, stacks);
            if (instance != null) return instance;

            instance = TryFromReflection(key, buffID, stacks);
            if (instance != null) return instance;

            instance = TryFromLua(buffID, stacks);
            if (instance != null) return instance;

            Debug.LogError($"BuffManager: 无法加载 Buff '{buffID}' — 反射、Addressables 和 Lua 均失败");
            return null;
        }

        private static BuffBase TryFromAddressables(string key, string buffID, int stacks)
        {
            BuffBase template = null;

            if (_templateCache.TryGetValue(key, out var cached))
            {
                template = cached;
            }
            else
            {
                if (!IsBuffKeyRegistered(key)) return null;

                try
                {
                    var handle = Addressables.LoadAssetAsync<BuffBase>(key);
                    template = handle.WaitForCompletion();

                    if (template != null)
                    {
                        _templateCache[key] = template;
                    }
                    else
                    {
                        Addressables.Release(handle);
                        return null;
                    }
                }
                catch (InvalidKeyException)
                {
                    return null;
                }
            }

            BuffBase instance = UnityEngine.Object.Instantiate(template);
            instance.ID = buffID;
            instance.Stacks = Mathf.Max(1, stacks);
            if (string.IsNullOrEmpty(instance.Name)) instance.Name = buffID;
            return instance;
        }

        // Pre-check avoids Addressables logging InvalidKeyException noise for missing keys.
        private static bool IsBuffKeyRegistered(string key)
        {
            var locators = Addressables.ResourceLocators;
            if (locators == null) return true; // Conservative fallback if locators unavailable

            bool hasLocator = false;
            foreach (var locator in locators)
            {
                hasLocator = true;
                if (locator.Locate(key, typeof(BuffBase), out var locations))
                {
                    return locations != null && locations.Count > 0;
                }
            }

            // Addressables uninitialized: return true and let LoadAssetAsync initialize within the try-catch.
            return !hasLocator;
        }

        private static BuffBase TryFromReflection(string key, string buffID, int stacks)
        {
            string className = "Buff" + ToPascalCase(key);

            if (!_reflectionCache.TryGetValue(className, out var type))
            {
                type = typeof(BuffBase).Assembly.GetType($"GamePlay.Buff.{className}");
                if (type == null || type.IsAbstract || !type.IsSubclassOf(typeof(BuffBase)))
                {
                    return null;
                }
                _reflectionCache[className] = type;
            }

            BuffBase instance = ScriptableObject.CreateInstance(type) as BuffBase;
            if (instance != null)
            {
                instance.ID = buffID;
                instance.Stacks = Mathf.Max(1, stacks);
                if (string.IsNullOrEmpty(instance.Name)) instance.Name = buffID;
            }
            return instance;
        }

        private static BuffBase TryFromLua(string buffID, int stacks)
        {
            string className = "Buff" + ToPascalCase(buffID);
            string module = "Buffs." + className;

            LuaTable cls;
            try
            {
                object[] ret = LuaManager.Instance.LuaEnv.DoString(
                    "return require('" + module + "')");
                if (ret == null || ret.Length == 0) return null;
                cls = ret[0] as LuaTable;
                if (cls == null) return null;
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[BuffManager] Lua require '{buffID}' 失败: {e.Message}");
                return null;
            }

            if (!InheritsFromBuffBase(cls)) return null;

            // Create instance via the __call metamethod: cls(stacks)
            object[] ret2;
            try
            {
                var env = LuaManager.Instance.LuaEnv;
                env.Global.SetInPath("__tmp_stacks", stacks);
                ret2 = env.DoString(
                    "return require('" + module + "')(__tmp_stacks)");
                env.Global.Set<object, object>("__tmp_stacks", null);
                if (ret2 == null || ret2.Length == 0) return null;
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[BuffManager] Lua 实例化 '{module}' 失败: {e.Message}");
                return null;
            }

            LuaTable instance = ret2[0] as LuaTable;
            if (instance == null) return null;

            BuffLuaWrapper wrapper = ScriptableObject.CreateInstance<BuffLuaWrapper>();
            wrapper.ID = buffID;
            wrapper.Bind(instance);
            return wrapper;
        }

        private static bool InheritsFromBuffBase(LuaTable cls)
        {
            LuaFunction check = LuaManager.Instance.LuaEnv.Global.Get<LuaFunction>("_isBuffBase");
            if (check == null) return false;
            return LuaManager.Instance.SafeCall(check, null, out object ret, cls) && ret is bool isBuff && isBuff;
        }

        private static string ToPascalCase(string snakeCase)
        {
            string[] parts = snakeCase.Split('_');
            for (int i = 0; i < parts.Length; i++)
            {
                if (parts[i].Length > 0)
                    parts[i] = char.ToUpper(parts[i][0]) + parts[i].Substring(1).ToLower();
            }
            return string.Join("", parts);
        }

        public static BuffBase FindBuffByID(MapUnit unit, string buffID)
        {
            if (unit == null || unit.ActiveBuffs == null) return null;

            foreach (var buff in unit.ActiveBuffs)
            {
                if (!string.IsNullOrEmpty(buff.ID) && buff.ID.Equals(buffID, StringComparison.OrdinalIgnoreCase))
                {
                    return buff;
                }
            }
            return null;
        }

        public static void ApplyBuffToUnit(MapUnit unit, string buffID, int stacks)
        {
            if (unit == null || string.IsNullOrEmpty(buffID)) return;

            if (stacks > 0)
            {
                var buff = CreateBuffFromID(buffID, stacks);
                if (buff != null) unit.AddBuff(buff);
            }
            else if (stacks < 0)
            {
                int removeAmount = Mathf.Abs(stacks);
                var existingBuff = FindBuffByID(unit, buffID);
                if (existingBuff != null)
                {
                    existingBuff.RemoveStacks(removeAmount);
                }
            }
        }

        public static void ClearCache()
        {
            _templateCache.Clear();
            _reflectionCache.Clear();
            _aiValueCache.Clear();
        }

        /// <summary>Per-stack AI tactical value of a buff, cached by buffID.</summary>
        public static float GetBuffAIValue(string buffID)
        {
            if (string.IsNullOrEmpty(buffID))
            {
                return Data.Config.AIConfig.buffValueDefault;
            }

            string key = buffID.ToLower();
            if (_aiValueCache.TryGetValue(key, out float cached))
            {
                return cached;
            }

            float value = Data.Config.AIConfig.buffValueDefault;
            try
            {
                BuffBase buff = CreateBuffFromID(buffID, 1);
                if (buff != null && buff.AIValue > 0f)
                {
                    value = buff.AIValue;
                }
            }
            catch (Exception)
            {
                // Fall back to default when buff creation fails (e.g. Lua not ready).
            }

            _aiValueCache[key] = value;
            return value;
        }
    }
}
