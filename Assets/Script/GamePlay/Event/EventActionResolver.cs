using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;

namespace GamePlay.Event
{
    /// <summary>
    /// 事件 action 解析 — C# 反射优先，Lua 兜底预留。
    ///
    /// 约定：配表 action/condition 列写 "EventActions.方法名"（或任意静态类全名.方法名）。
    /// 无参调用，所需信息通过全局单例（RunManager/Data.Persistent 等）获取。
    /// </summary>
    public static class EventActionResolver
    {
        private static readonly Dictionary<string, MethodInfo> _csCache = new();

        public static void Invoke(string name)
        {
            MethodInfo method = ResolveCSharp(name);
            if (method != null)
            {
                method.Invoke(null, null);
                return;
            }

            //Debug.LogWarning($"[EventActionResolver] action '{name}' 未找到（C# 反射失败，Lua 兜底待接入）");
        }

        public static bool InvokeBool(string name)
        {
            MethodInfo method = ResolveCSharp(name);
            if (method != null)
            {
                object result = method.Invoke(null, null);
                if (result is bool b) return b;
                Debug.LogWarning($"[EventActionResolver] action '{name}' 未返回 bool，已视为不可用");
                return false;
            }

            Debug.LogWarning($"[EventActionResolver] condition '{name}' 未找到，已视为不可用");
            return false;
        }

        private static MethodInfo ResolveCSharp(string name)
        {
            if (_csCache.TryGetValue(name, out MethodInfo cached)) return cached;

            MethodInfo method = null;
            int lastDot = name.LastIndexOf('.');
            if (lastDot > 0)
            {
                string className = name.Substring(0, lastDot);
                string methodName = name.Substring(lastDot + 1);
                method = Utils.Utils.ResolveType(className)?.GetMethod(methodName, BindingFlags.Public | BindingFlags.Static);
            }
            else
            {
                // 未带类名时默认在 EventActions 中查找
                method = Utils.Utils.ResolveType("EventActions")?.GetMethod(name, BindingFlags.Public | BindingFlags.Static);
            }

            if (method != null)
            {
                _csCache[name] = method;
            }
            return method;
        }
    }
}
