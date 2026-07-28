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

        private LuaManager()
        {
            LuaEnv = new LuaEnv();
            LuaEnv.AddLoader(Loader);
            LuaEnv.DoString(@"
                require('Class')
                function _isBuffBase(cls)
                    return cls.__isBuffBase == true
                end
            ");
            LuaEnv.DoString(@"require('Skills.SampleSkill')");
        }

        private static byte[] Loader(ref string filepath)
        {
            string path = Path.Combine(Application.dataPath, "Lua",
                filepath.Replace(".", "/") + ".lua");

            if (File.Exists(path))
            {
                return File.ReadAllBytes(path);
            }

            Debug.LogWarning($"[LuaManager] 找不到 Lua 文件: {path}");
            return null;
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
