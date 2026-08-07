using Managers;
using UnityEngine;

namespace GamePlay.Event
{
    /// <summary>
    /// 事件 action 静态实现 — 无参 void/bool，信息从全局单例获取。
    /// 配表 action/condition 列写 "EventActions.方法名"。
    /// 奖励统一走 RunManager.GiveItem / AddGold / TrySpendGold。
    /// </summary>
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
                EventFlow.ResultText = "金币不足，无法下注。";
                return;
            }

            bool win = Random.value < 0.5f;
            if (win)
            {
                RunManager.Instance.AddGold(100);
                EventFlow.ResultText = "骰子滚出大点，你赢了！返还 100 金币。";
            }
            else
            {
                EventFlow.ResultText = "骰子滚出小点，你输了，50 金币打了水漂。";
            }
        }
    }
}
