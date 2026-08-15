using Managers;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Emerald Ring: gain 10 gold for every kill.</summary>
    public class RelicEmeraldRing : RelicBase
    {
        private const int GOLD_PER_KILL = 10;

        public override void OnKill(DamageInfo info)
        {
            RunManager.Instance?.AddGold(GOLD_PER_KILL);
        }
    }
}
