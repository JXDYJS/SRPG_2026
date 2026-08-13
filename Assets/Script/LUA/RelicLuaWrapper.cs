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

            int price = LuaInstance.Get<int>("Price");
            if (price > 0) Price = price;

            string rarity = LuaInstance.Get<string>("Rarity");
            if (!string.IsNullOrEmpty(rarity) && Enum.TryParse(rarity, out RarityType rt))
            {
                Rarity = rt;
            }
        }
    }
}
