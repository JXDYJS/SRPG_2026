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
        /// Cached LuaUtil.SafeCall entry point fetched at init. Kept as a plain
        /// LuaFunction (not a [CSharpCallLua] delegate) so the safe-call bridge needs
        /// no xLua code generation and works in standalone player builds as-is.
        /// </summary>
        private LuaFunction luaSafeCall;

        /// <summary>
        /// Cached LuaUtil.SpawnClass entry point fetched at init. Used by
        /// BuffManager/RelicManager to safely load and instantiate Lua class
        /// modules through the SafeCall (xpcall) bridge.
        /// </summary>
        private LuaFunction luaSpawnClass;

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
                require('LuaUtils')
            ");
            RegisterAllModules();
            luaSafeCall = LuaEnv.Global.GetInPath<LuaFunction>("LuaUtil.SafeCall");
            luaSpawnClass = LuaEnv.Global.GetInPath<LuaFunction>("LuaUtil.SpawnClass");
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
            return SafeCallCore(func, selfObj, out result, args);
        }

        /// <summary>
        /// Inner SafeCall that takes an explicit arg array (no params). Use this
        /// from call sites that need to forward a pre-built array — calling
        /// SafeCall's params overload with such an array would re-wrap it (C#
        /// params semantics) and nest the arguments on the Lua side, turning
        /// ints into userdata arrays.
        /// </summary>
        private bool SafeCallCore(LuaFunction func, LuaTable selfObj, out object result, object[] args)
        {
            result = null;
            if (func == null || LuaEnv == null || luaSafeCall == null)
            {
                return false;
            }

            try
            {
                int n = args != null ? args.Length : 0;
                object[] callArgs = new object[n + 2];
                callArgs[0] = func;
                callArgs[1] = selfObj;
                if (n > 0)
                {
                    Array.Copy(args, 0, callArgs, 2, n);
                }

                object[] ret = luaSafeCall.Call(callArgs);

                // LuaUtil.SafeCall returns [true, ...results] or [false, errorMessage]
                if (ret != null && ret.Length > 0 && ret[0] is bool ok && ok)
                {
                    result = ret.Length > 1 ? ret[1] : null;
                    return true;
                }

                result = ret != null && ret.Length > 1 ? ret[1] : null;
                return false;
            }
            catch (Exception e)
            {
                Debug.LogError($"[LuaManager] SafeCall 执行异常: {e.Message}\n{e.StackTrace}");
                return false;
            }
        }

        /// <summary>
        /// Loads a Lua class module through LuaUtil.SpawnClass and instantiates it
        /// via its __call metamethod. Marker (e.g. "__isBuffBase") is verified in
        /// Lua before construction; any failure is contained by the SafeCall
        /// xpcall and reported as a single Debug.LogError.
        /// </summary>
        public bool SpawnClass(string module, string marker, out LuaTable instance, params object[] args)
        {
            instance = null;
            if (string.IsNullOrEmpty(module) || LuaEnv == null || luaSpawnClass == null)
            {
                return false;
            }

            // Build a single flat array for SafeCallCore. Calling SafeCall's params
            // overload with `module, marker, args` would re-wrap args into
            // [module, marker, [args...]], nesting the ctor arguments on the Lua
            // side and turning ints into userdata arrays.
            int extra = args != null ? args.Length : 0;
            object[] forwarded = new object[2 + extra];
            forwarded[0] = module;
            forwarded[1] = marker;
            if (extra > 0)
            {
                Array.Copy(args, 0, forwarded, 2, extra);
            }

            if (SafeCallCore(luaSpawnClass, null, out object result, forwarded)
                && result is LuaTable tbl)
            {
                instance = tbl;
                return true;
            }

            if (result != null)
            {
                Debug.LogError($"[LuaManager] SpawnClass '{module}' (marker '{marker}') 失败: {result}");
            }
            return false;
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
