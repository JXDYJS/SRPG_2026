using System;
using UnityEngine;
using GamePlay.Relics;
using Global;
using XLua;

namespace Lua
{
    /// <summary>
    /// Lua 遗物的 C# 包装器。
    /// 接口钩子桥接复用 CombatModifierLuaWrapper，本类只负责遗物专属字段绑定。
    /// Price / Rarity 以配表（RelicConfigs）为准，Lua 中声明时可覆盖。
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
