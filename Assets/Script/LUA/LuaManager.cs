using System;
using System.Collections.Generic;
using Cysharp.Threading.Tasks;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.AddressableAssets.ResourceLocators;
using XLua;

namespace Lua
{
    /// <summary>
    /// LuaManager — Lua 运行时环境。
    ///
    /// Lua 脚本已通过 ScriptedImporter 变为 TextAsset 并被 Addressables 管理（Group_Lua），
    /// 因此加载不再走文件 IO，而是预取 Addressable 资源到内存缓存：
    ///   - 启动流程（LaunchBootstrap）在 catalog 更新后调用 InitializeAsync()
    ///   - 枚举所有 Assets/Lua/ 地址 → LoadAssetAsync&lt;TextAsset&gt; → 缓存模块名→字节
    ///   - XLua 的 Loader 读缓存，缺失即报错（不设文件兜底）
    /// 这样 Lua 热更完全复用 Addressables 内容更新管线。
    /// </summary>
    public class LuaManager
    {
        private static LuaManager _instance;
        public static LuaManager Instance => _instance ??= new LuaManager();

        public LuaEnv LuaEnv { get; private set; }

        private const string LuaAddressPrefix = "Assets/Lua/";
        private const string LuaAddressSuffix = ".lua";

        /// <summary>Lua 模块名（如 Buffs.BuffBase）→ 原始字节。</summary>
        private readonly Dictionary<string, byte[]> _luaCache = new Dictionary<string, byte[]>();

        private LuaManager()
        {
        }

        /// <summary>
        /// 初始化 Lua 环境（幂等）。必须在 Addressables 初始化且 catalog 更新完成后调用，
        /// 否则拿到的可能是旧内容。
        /// </summary>
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

        /// <summary>枚举 Addressable 中所有 Assets/Lua/ 地址并预取为字节缓存。</summary>
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
