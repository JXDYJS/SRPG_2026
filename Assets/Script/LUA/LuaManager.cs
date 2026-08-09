using System;
using System.IO;
using UnityEngine;
using XLua;

namespace Lua
{
    public class LuaManager
    {
        private static LuaManager _instance;
        public static LuaManager Instance => _instance ??= new LuaManager();

        public LuaEnv LuaEnv { get; private set; }

        /// <summary>
        /// Lua 根目录：
        ///   - 编辑器下 = 工程源码 Assets/Lua（dataPath 在编辑器里就是 <工程>/Assets）
        ///   - 打包后 = StreamingAssets/Lua（打包脚本会把 Assets/Lua 拷贝过去，
        ///     dataPath 在打包后指向 <游戏>_Data/，源码目录不存在）
        /// </summary>
        private static string LuaRoot => Application.isEditor
            ? Path.Combine(Application.dataPath, "Lua")
            : Path.Combine(Application.streamingAssetsPath, "Lua");

        private LuaManager()
        {
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

        private static byte[] Loader(ref string filepath)
        {
            string path = Path.Combine(LuaRoot, filepath.Replace(".", "/") + ".lua");

            if (File.Exists(path))
            {
                return File.ReadAllBytes(path);
            }

            Debug.LogWarning($"[LuaManager] 找不到 Lua 文件: {path}");
            return null;
        }

        private void RegisterAllModules()
        {
            string luaRoot = LuaRoot;
            if (!Directory.Exists(luaRoot))
            {
                Debug.LogWarning($"[LuaManager] Lua 根目录不存在: {luaRoot}");
                return;
            }

            var files = Directory.GetFiles(luaRoot, "*.lua", SearchOption.AllDirectories);
            Array.Sort(files);

            foreach (var file in files)
            {
                string relative = file.Substring(luaRoot.Length + 1);

                if (relative.StartsWith("TypeHint" + Path.DirectorySeparatorChar) ||
                    relative.StartsWith("TypeHint" + Path.AltDirectorySeparatorChar))
                    continue;

                if (relative == "Class.lua" || relative == "Logger.lua" || relative == "Event.lua")
                    continue;

                string module = relative.Replace(Path.DirectorySeparatorChar, '.')
                                        .Replace(Path.AltDirectorySeparatorChar, '.');
                module = Path.ChangeExtension(module, null);

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
            LuaEnv.DoString($"require('{module}')");
        }

        public void Dispose()
        {
            LuaEnv?.Dispose();
            LuaEnv = null;
            _instance = null;
        }
    }
}
