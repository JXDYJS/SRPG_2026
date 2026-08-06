using System;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine.UI;

namespace Core.Data
{
    public class ShopConfigData
    {
        public int minShopItemCount = 12;
        public int maxShopItemCount = 24;
        public string repeatShopItemId = "r_gold_pouch";
        public string goldID = "gold";
        public string goldSpritePath = "";
        public Dictionary<Global.RarityType,float> rarityProbability =new()
        {
            {Global.RarityType.Common,0.3f},
            {Global.RarityType.Uncommon,0.3f},
            {Global.RarityType.Rare,0.2f},
            {Global.RarityType.Epic,0.1f},
            {Global.RarityType.Legendary,0.1f}
        };
        public ShopConfigData()
        {
            checkRarityProbability(rarityProbability);
        }
        public static void checkRarityProbability(Dictionary<Global.RarityType,float> rarityProbability)
        {
            bool flag = true;
            float sum = 0.0f;
            foreach (Global.RarityType key in (Global.RarityType[])Enum.GetValues(typeof(Global.RarityType)))
            {
                if (!rarityProbability.ContainsKey(key))
                {
                    flag = false;
                    break;
                }
                sum += rarityProbability[key];
            }
            UnityEngine.Debug.Assert(UnityEngine.Mathf.Approximately(sum,1.0f),"商店物品概率合集不为1.0");
            UnityEngine.Debug.Assert(flag,"商店物品不包含所有的稀有度");
        }
    }
}
