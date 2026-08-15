using Managers;
using Status.damage;
using UnityEngine;

namespace GamePlay.Relics
{
    /// <summary>Lucky Clover: 20% chance to find 15 gold after a kill.</summary>
    public class RelicLuckyClover : RelicBase
    {
        private const float DROP_CHANCE = 0.2f;
        private const int GOLD_AMOUNT = 15;

        public override void OnKill(DamageInfo info)
        {
            if (RunManager.Instance == null) return;
            if (Random.value < DROP_CHANCE)
            {
                RunManager.Instance.AddGold(GOLD_AMOUNT);
                Debug.Log($"[RelicLuckyClover] 幸运四叶草触发，获得 {GOLD_AMOUNT} 金币");
            }
        }
    }
}
