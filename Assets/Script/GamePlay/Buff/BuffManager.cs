using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.AddressableAssets;
using GamePlay.Units;

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

            Debug.LogError($"BuffManager: 无法加载 Buff '{buffID}' — 反射和 Addressables 均失败");
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

            BuffBase instance = UnityEngine.Object.Instantiate(template);
            instance.ID = buffID;
            instance.Stacks = Mathf.Max(1, stacks);
            return instance;
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
            }
            return instance;
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
