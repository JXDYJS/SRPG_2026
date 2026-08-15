using System.Collections.Generic;
using Managers;
using UnityEngine;

namespace GamePlay.Event
{
    /// <summary>Static event actions; config tables reference them as "EventActions.MethodName".</summary>
    public static class EventActions
    {
        private static readonly string[] PotionPool =
        {
            "it_potion_hp",
            "it_potion_atk",
            "it_potion_atk_aoe",
            "it_fire_potion"
        };

        public static void GainGold()
        {
            RunManager.Instance.AddGold(50);
        }

        public static void GainGold30()
        {
            RunManager.Instance.AddGold(30);
        }

        public static void GainGold40()
        {
            RunManager.Instance.AddGold(40);
        }

        public static void GainGold100()
        {
            RunManager.Instance.AddGold(100);
        }

        public static void GiveRelic()
        {
            RunManager.Instance.GiveItem("r_beacon");
        }

        public static bool CanAffordBet50()
        {
            return RunManager.Instance.Gold >= 50;
        }

        public static bool CanAfford30()
        {
            return RunManager.Instance.Gold >= 30;
        }

        public static bool CanAfford50()
        {
            return RunManager.Instance.Gold >= 50;
        }

        /// <summary>Grants a random relic the party does not own yet.</summary>
        public static void GiveRandomRelic()
        {
            string relicId = PickRandomRelicId();
            if (relicId == null)
            {
                EventFlow.ResultText = "The altar stays silent. Nothing happens.";
                return;
            }
            RunManager.Instance.GiveItem(relicId);
            EventFlow.ResultText = "You received a relic!";
        }

        /// <summary>Grants one random potion from the available pool.</summary>
        public static void GiveRandomPotion()
        {
            string potionId = PotionPool[Random.Range(0, PotionPool.Length)];
            RunManager.Instance.GiveItem(potionId);
            EventFlow.ResultText = "You received a potion!";
        }

        /// <summary>Grants two random potions.</summary>
        public static void GiveTwoPotions()
        {
            string a = PotionPool[Random.Range(0, PotionPool.Length)];
            string b = PotionPool[Random.Range(0, PotionPool.Length)];
            RunManager.Instance.GiveItem(a);
            RunManager.Instance.GiveItem(b);
            EventFlow.ResultText = "You filled two bottles with... something.";
        }

        /// <summary>Weighted reward: 45% relic, 35% potion, 20% gold.</summary>
        public static void GiveRandomReward()
        {
            float roll = Random.value;
            if (roll < 0.45f)
            {
                GiveRandomRelic();
            }
            else if (roll < 0.8f)
            {
                GiveRandomPotion();
            }
            else
            {
                RunManager.Instance.AddGold(50);
                EventFlow.ResultText = "You found 50 gold!";
            }
        }

        public static void BuyRandomRelic()
        {
            if (!RunManager.Instance.TrySpendGold(50))
            {
                EventFlow.ResultText = "Not enough gold to buy anything.";
                return;
            }
            GiveRandomRelic();
        }

        public static void BuyRandomPotion()
        {
            if (!RunManager.Instance.TrySpendGold(30))
            {
                EventFlow.ResultText = "Not enough gold to buy anything.";
                return;
            }
            GiveRandomPotion();
        }

        /// <summary>Stake 30 gold for a 50% chance at a random relic.</summary>
        public static void GambleRelic()
        {
            if (!RunManager.Instance.TrySpendGold(30))
            {
                EventFlow.ResultText = "Not enough gold to gamble.";
                return;
            }

            if (Random.value < 0.5f)
            {
                GiveRandomRelic();
                EventFlow.ResultText = "The altar accepts your offering and rewards you!";
            }
            else
            {
                EventFlow.ResultText = "The altar swallows your gold. Nothing in return.";
            }
        }

        public static void Bet50()
        {
            if (!RunManager.Instance.TrySpendGold(50))
            {
                EventFlow.ResultText = "Not enough gold to place the bet.";
                return;
            }

            bool win = Random.value < 0.5f;
            if (win)
            {
                RunManager.Instance.AddGold(100);
                EventFlow.ResultText = "The dice rolled high, you win! 100 gold returned.";
            }
            else
            {
                EventFlow.ResultText = "The dice rolled low, you lost the 50 gold.";
            }
        }

        /// <summary>Random relic id from the config table, excluding owned ones and the pouch filler.</summary>
        private static string PickRandomRelicId()
        {
            var owned = new HashSet<string>();
            if (RunManager.Instance != null)
            {
                foreach (var relic in RunManager.Instance.Relics)
                {
                    owned.Add(relic.ID);
                }
            }

            var pool = new List<string>();
            foreach (var cfg in Core.Data.Data.Table.RelicConfigs.Values)
            {
                if (cfg.id == GamePlay.Relics.RelicPouchOfEmeralds.ITEM_ID) continue;
                if (owned.Contains(cfg.id)) continue;
                pool.Add(cfg.id);
            }

            if (pool.Count == 0)
            {
                foreach (var cfg in Core.Data.Data.Table.RelicConfigs.Values)
                {
                    if (cfg.id != GamePlay.Relics.RelicPouchOfEmeralds.ITEM_ID)
                    {
                        pool.Add(cfg.id);
                    }
                }
            }

            return pool.Count > 0 ? pool[Random.Range(0, pool.Count)] : null;
        }
    }
}
