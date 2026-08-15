using System;
using UnityEngine;
using GamePlay.Relics;
using Global;
using XLua;

namespace Lua
{
    /// <summary>
    /// C# wrapper for Lua relics: reuses CombatModifierLuaWrapper's hooks and binds relic-only
    /// fields. Price/Rarity come from the config table but Lua declarations can override them.
    /// </summary>
    public class RelicLuaWrapper : RelicBase
    {
        public override void Bind(LuaTable instance)
        {
            base.Bind(instance);

            // Optional Lua fields: Get<int>/Get<string> on nil raises "can not assign nil",
            // so read as object and fall back to the config-table values.
            object priceVal = LuaInstance.Get<object>("Price");
            if (priceVal != null)
            {
                try
                {
                    int p = Convert.ToInt32(priceVal);
                    if (p > 0) Price = p;
                }
                catch (Exception) { /* keep config price */ }
            }

            object rarityVal = LuaInstance.Get<object>("Rarity");
            if (rarityVal != null)
            {
                string rarityStr = rarityVal as string ?? rarityVal.ToString();
                if (!string.IsNullOrEmpty(rarityStr) && Enum.TryParse(rarityStr, out RarityType rt))
                {
                    Rarity = rt;
                }
            }
        }
    }
}
