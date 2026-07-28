using UnityEngine;
using XLua;
using Lua;
using GamePlay.Buff;

namespace DebugSystem
{
    public class Test_XLua : MonoBehaviour
    {
        void Start()
        {
            LuaEnv luaEnv = new LuaEnv();
            luaEnv.DoString(@"
                print('Hello World from Lua!')
                local sum = 1 + 2 * 3
                print('1 + 2 * 3 = ' .. sum)
            ");
            luaEnv.Dispose();
            Debug.Log("Step 1: Basic XLua OK");

            var mgr = LuaManager.Instance;
            mgr.Require("Buffs.BuffBattleCry");
            Debug.Log("Step 2: LuaManager OK, require BuffBattleCry OK");

            BuffBase buff = BuffManager.CreateBuffFromID("battle_cry", 3);
            if (buff != null)
            {
                Debug.Log($"Step 3: Lua Buff created! ID={buff.ID}, Stacks={buff.Stacks}, Type={buff.GetType().Name}");
            }
            else
            {
                Debug.LogError("Step 3: Failed to create Lua buff");
            }

            mgr.LuaEnv.DoString(@"
                local Helper = CS.Lua.LuaStatHelper
                local ok, m = pcall(Helper.NewStatModifier, Helper, 5, 0)
                if ok then
                    print('Step 4: StatModifier Value=' .. m.Value)
                else
                    print('Step 4: Helper error ->', m)
                end
            ");

            BuffBase zombie = BuffManager.CreateBuffFromID("zombie_skin", 1);
            BuffBase precise = BuffManager.CreateBuffFromID("precise_shot", 1);
            Debug.Log($"Step 5: ZombieSkin Type={zombie?.GetType().Name}, PreciseShot Type={precise?.GetType().Name}");
        }
    }
}
