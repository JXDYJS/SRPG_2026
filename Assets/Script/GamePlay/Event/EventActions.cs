using Managers;
using UnityEngine;

namespace GamePlay.Event
{
    /// <summary>Static event actions; config tables reference them as "EventActions.MethodName".</summary>
    public static class EventActions
    {
        public static void GainGold()
        {
            RunManager.Instance.AddGold(50);
        }

        public static void GiveRelic()
        {
            RunManager.Instance.GiveItem("r_beacon");
        }

        public static bool CanAffordBet50()
        {
            return RunManager.Instance.Gold >= 50;
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
    }
}
