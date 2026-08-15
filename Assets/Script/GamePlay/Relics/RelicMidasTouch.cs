using Managers;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Midas Touch: gain 30 gold for every kill. Everything you slay turns to gold.</summary>
    public class RelicMidasTouch : RelicBase
    {
        private const int GOLD_PER_KILL = 30;

        public override void OnKill(DamageInfo info)
        {
            RunManager.Instance?.AddGold(GOLD_PER_KILL);
        }
    }
}
