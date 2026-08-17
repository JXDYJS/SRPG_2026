using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using XLua;

namespace Lua
{
    public static class ScriptFunctionResolver
    {
        private static readonly Dictionary<string, LuaFunction> _luaCache = new();
        private static readonly Dictionary<string, MethodInfo> _csCache = new();

        public static T Invoke<T>(string funcName, SkillEvalContext ctx) where T : class
        {
            try
            {
                var func = ResolveLua(funcName);
                if (func != null)
                {
                    bool ok = LuaManager.Instance.SafeCall(func, null, out object result, ctx);
                    if (ok)
                    {
                        return result as T;
                    }
                    if (result != null)
                    {
                        Debug.LogError($"[ScriptFunctionResolver] Lua 函数 '{funcName}' 调用异常: {result}");
                    }
                    return null;
                }
            }
            catch (Exception e)
            {
                Debug.LogError($"[ScriptFunctionResolver] Lua 函数 '{funcName}' 调用异常: {e.Message}");
                return null;
            }

            var method = ResolveCSharp(funcName);
            if (method != null)
            {
                return method.Invoke(null, new object[] { ctx }) as T;
            }

            Debug.LogError($"[ScriptFunctionResolver] '{funcName}' not found in Lua or C#");
            return null;
        }

        private static LuaFunction ResolveLua(string funcName)
        {
            if (_luaCache.TryGetValue(funcName, out var cached))
                return cached;

            try
            {
                var luaEnv = LuaManager.Instance.LuaEnv;
                var parts = funcName.Split('.');
                object current = luaEnv.Global;
                foreach (var part in parts)
                {
                    if (current is LuaTable table)
                    {
                        var next = table.Get<object>(part);
                        if (next == null) return null;
                        current = next;
                    }
                    else return null;
                }

                if (current is LuaFunction lf)
                {
                    _luaCache[funcName] = lf;
                    return lf;
                }
            }
            catch (Exception e)
            {
                Debug.LogError($"[ScriptFunctionResolver] 解析 Lua 函数 '{funcName}' 失败: {e.Message}");
            }
            return null;
        }

        private static MethodInfo ResolveCSharp(string funcName)
        {
            if (_csCache.TryGetValue(funcName, out var cached))
                return cached;

            var lastDot = funcName.LastIndexOf('.');
            if (lastDot < 0) return null;

            var className = funcName.Substring(0, lastDot);
            var methodName = funcName.Substring(lastDot + 1);

            var type = Type.GetType(className);
            if (type == null)
            {
                var assembly = Assembly.Load("Assembly-CSharp");
                foreach (var t in assembly.GetExportedTypes())
                {
                    if (t.FullName == className || t.Name == className)
                    {
                        type = t;
                        break;
                    }
                }
            }

            if (type == null) return null;

            var method = type.GetMethod(methodName, BindingFlags.Public | BindingFlags.Static);
            if (method != null)
                _csCache[funcName] = method;
            return method;
        }

        public static void ClearCache()
        {
            _luaCache.Clear();
            _csCache.Clear();
        }
    }
}
