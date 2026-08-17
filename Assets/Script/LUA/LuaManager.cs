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

        /// <summary>
        /// Bridges LuaUtil.SafeCall (xpcall) so a Lua hook error is contained and
        /// reported instead of throwing a LuaException into the C# pipeline.
        /// targetFunc is the Lua function to invoke; selfObj is passed as its first
        /// argument when non-null; args are spread after it. Returns true and the
        /// first Lua return value (null when the hook returns nothing) on success,
        /// or false and the traceback on script error.
        /// </summary>
        [CSharpCallLua]
        public delegate bool LuaSafeCallDelegate(LuaFunction targetFunc, LuaTable selfObj, out object result, params object[] args);
        private LuaSafeCallDelegate luaSafeCallDelegate;

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
                require('LuaUtil')
                function _isBuffBase(cls)
                    return cls.__isBuffBase == true
                end
                function _isRelicBase(cls)
                    return cls.__isRelicBase == true
                end
            ");
            RegisterAllModules();
            luaSafeCallDelegate = LuaEnv.Global.GetInPath<LuaSafeCallDelegate>("LuaUtil.SafeCall");
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
                var handle = Addressables.LoadAssetAsync<TextAsset>(address);
                try
                {
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
                finally
                {
                    // Bytes are copied into the cache; drop the handle so each script
                    // is not held in memory twice for the whole session.
                    Addressables.Release(handle);
                }
            }

            Debug.Log($"[LuaManager] 预取 {_luaCache.Count} 个 Lua 模块");
        }

        /// <summary>
        /// Invokes a Lua function through LuaUtil.SafeCall (xpcall) so script errors
        /// degrade to a logged failure instead of throwing into the C# pipeline.
        /// Returns true on success with the first Lua return value in result (null
        /// when the hook returns nothing); false on script error with the traceback
        /// in result. Returns false without logging when the env or bridge is not
        /// available.
        /// </summary>
        public bool SafeCall(LuaFunction func, LuaTable selfObj, out object result, params object[] args)
        {
            result = null;
            if (func == null || LuaEnv == null || luaSafeCallDelegate == null)
            {
                return false;
            }

            try
            {
                return luaSafeCallDelegate(func, selfObj, out result, args);
            }
            catch (Exception e)
            {
                Debug.LogError($"[LuaManager] SafeCall 执行异常: {e.Message}\n{e.StackTrace}");
                return false;
            }
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
            ScriptFunctionResolver.ClearCache();
            _instance = null;
        }

        /// <summary>
        /// Fully reloads the Lua runtime: disposes the env and re-prefetches modules.
        /// Call after a mid-session Addressables catalog update. LuaFunction references
        /// captured before the reload are invalidated, so buffs/relics/skills built on
        /// them must be recreated (e.g. after returning to the main menu).
        /// </summary>
        public async UniTask ReloadAsync()
        {
            Dispose();
            await InitializeAsync();
        }
    }
}
