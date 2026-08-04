using UnityEngine;
using Status.damage; // 引用接口
using Modifier;
using Global;
using Lua;
namespace GamePlay.Relics
{
    public abstract class RelicBase : CombatModifierLuaWrapper
    {
        [Header("藏品信息特有信息")]
        public int Price; // 商店价格
        public RarityType Rarity; // 稀有度
    }
}