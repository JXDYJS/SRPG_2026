using UnityEngine;
using Status.damage; // 引用接口
using Modifier;

namespace GamePlay.relics
{
    public enum RarityType
    {
        Common,
        Uncommon,
        Rare,
        Epic,
        Legendary
    }
    public abstract class RelicBase : CombatModifier
    {
        [Header("藏品信息特有信息")]
        public int Price; // 商店价格
        public RarityType Rarity; // 稀有度
    }
}