using UnityEngine;
using Status.damage;
using Modifier;
using Global;
using Lua;
using Core.Data;
namespace GamePlay.Relics
{
    public class RelicBase : CombatModifierLuaWrapper
    {
        [Header("藏品信息特有信息")]
        public int Price; // shop price
        public RarityType Rarity; // rarity
        public string relicId; //id
    }
}