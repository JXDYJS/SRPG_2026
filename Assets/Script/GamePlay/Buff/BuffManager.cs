using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.AddressableAssets;
using GamePlay.Units;
using Lua;
using XLua;

namespace GamePlay.Buff
{
    public static class BuffManager
    {
        private static Dictionary<string, BuffBase> _templateCache = new Dictionary<string, BuffBase>();
        private static Dictionary<string, Type> _reflectionCache = new Dictionary<string, Type>();

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

            // 2. Fallback to reflection (new code-only buffs: zombie_skin, precise_shot, etc.)
            instance = TryFromReflection(key, buffID, stacks);
            if (instance != null) return instance;

            // 3. Fallback to Lua (runtime-extensible buffs: battle_cry, fortitude, etc.)
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
                    // key 不在 Addressables 中，交给反射/Lua 兜底解析
                    return null;
                }
            }

            BuffBase instance = UnityEngine.Object.Instantiate(template);
            instance.ID = buffID;
            instance.Stacks = Mathf.Max(1, stacks);
            if (string.IsNullOrEmpty(instance.Name)) instance.Name = buffID;
            return instance;
        }

        // 预检 key 是否注册在 Addressables 中，避免 LoadAssetAsync 对缺失 key
        // 内部直接 Debug.LogError(InvalidKeyException) 造成控制台噪音。
        // 只有纯 Lua/反射 Buff（如 precise_shot、fortitude、power 等）会走到这一步。
        private static bool IsBuffKeyRegistered(string key)
        {
            var locators = Addressables.ResourceLocators;
            if (locators == null) return true; // 极端情况，保守走原逻辑

            bool hasLocator = false;
            foreach (var locator in locators)
            {
                hasLocator = true; // 至少一个 locator → Addressables 已初始化
                if (locator.Locate(key, typeof(BuffBase), out var locations))
                {
                    return locations != null && locations.Count > 0;
                }
            }

            // locators 为空（Addressables 尚未初始化）时保守返回 true，
            // 让 LoadAssetAsync 自动初始化并配合 try-catch 兜底。
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

            // 通过 __call 元方法创建实例: cls(stacks)
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
            object[] ret = check.Call(cls);
            return ret != null && ret.Length > 0 && (bool)ret[0];
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
        }
    }
}
