using System;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.AddressableAssets.ResourceLocators;
using XLua;

namespace Lua
{
    /// <summary>Lua runtime; scripts are prefetched from Addressables into a memory cache.</summary>
    public class LuaManager
    {
        private static LuaManager _instance;
        public static LuaManager Instance => _instance ??= new LuaManager();

        public LuaEnv LuaEnv { get; private set; }

        private const string LuaAddressPrefix = "Assets/Lua/";
        private const string LuaAddressSuffix = ".lua";

        /// <summary>Lua module name -> raw bytes.</summary>
        private readonly Dictionary<string, byte[]> _luaCache = new Dictionary<string, byte[]>();

        private LuaManager()
        {
        }

        /// <summary>Initialize the Lua env (idempotent); call after Addressables catalog updates.</summary>
        public async UniTask InitializeAsync()
        {
            if (LuaEnv != null) return;

            await PreloadLuaCache();

            LuaEnv = new LuaEnv();
            LuaEnv.AddLoader(Loader);
            LuaEnv.DoString(@"
                require('Class')
                function _isBuffBase(cls)
                    return cls.__isBuffBase == true
                end
                function _isRelicBase(cls)
                    return cls.__isRelicBase == true
                end
            ");
            RegisterAllModules();
        }

        /// <summary>Prefetch all Assets/Lua/ Addressable modules into the byte cache.</summary>
        private async UniTask PreloadLuaCache()
        {
            List<string> addresses = new List<string>();
            foreach (IResourceLocator locator in Addressables.ResourceLocators)
            {
                foreach (object key in locator.Keys)
                {
                    if (key is string s &&
                        s.StartsWith(LuaAddressPrefix, StringComparison.Ordinal) &&
                        s.EndsWith(LuaAddressSuffix, StringComparison.Ordinal))
                    {
                        addresses.Add(s);
                    }
                }
            }
            addresses.Sort(StringComparer.Ordinal);

            foreach (string address in addresses)
            {
                try
                {
                    var handle = Addressables.LoadAssetAsync<TextAsset>(address);
                    TextAsset asset = await handle.ToUniTask();
                    if (asset == null)
                    {
                        Debug.LogWarning($"[LuaManager] Lua 资源为空: {address}");
                        continue;
                    }

                    string module = address.Substring(LuaAddressPrefix.Length, address.Length - LuaAddressPrefix.Length - LuaAddressSuffix.Length);
                    module = module.Replace('/', '.');
                    _luaCache[module] = asset.bytes;
                }
                catch (Exception e)
                {
                    Debug.LogWarning($"[LuaManager] 加载 Lua 失败: {address} → {e.Message}");
                }
            }

            Debug.Log($"[LuaManager] 预取 {_luaCache.Count} 个 Lua 模块");
        }

        private byte[] Loader(ref string filepath)
        {
            if (_luaCache.TryGetValue(filepath, out byte[] bytes))
            {
                return bytes;
            }

            Debug.LogWarning($"[LuaManager] 找不到 Lua 模块: {filepath}");
            return null;
        }

        private void RegisterAllModules()
        {
            foreach (string module in _luaCache.Keys)
            {
                if (module == "Class" || module == "Logger" || module == "Event")
                {
                    continue;
                }

                try
                {
                    LuaEnv.DoString($"require('{module}')");
                }
                catch (Exception e)
                {
                    Debug.LogWarning($"[LuaManager] 自动加载模块 '{module}' 失败: {e.Message}");
                }
            }
        }

        public void Require(string module)
        {
            LuaEnv?.DoString($"require('{module}')");
        }

        public void Dispose()
        {
            LuaEnv?.Dispose();
            LuaEnv = null;
            _luaCache.Clear();
            _instance = null;
        }
    }
}
