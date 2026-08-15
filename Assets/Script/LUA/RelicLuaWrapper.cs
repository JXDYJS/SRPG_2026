using UnityEngine;
using GamePlay.Relics;
using XLua;

namespace Lua
{
    /// <summary>
    /// C# wrapper for Lua relics: reuses CombatModifierLuaWrapper's hooks.
    /// Price/Rarity are owned by the config table (TableData.RelicConfigs) and
    /// filled by RelicManager.FillConfig, exactly like C# relics; Lua scripts
    /// only implement combat behavior and must not declare them.
    /// </summary>
    public class RelicLuaWrapper : RelicBase
    {
    }
}
