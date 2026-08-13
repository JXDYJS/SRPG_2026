using GamePlay.Buff;
using GamePlay.Units;

namespace GamePlay.Relics
{
    /// <summary>
    /// Beacon: at battle start, all allies gain 1 stack of 'Power' (ATK +1, no decay)
    /// </summary>
    public class RelicBeacon : RelicBase
    {
        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            BuffManager.ApplyBuffToUnit(owner, "power", 1);
        }
    }
}
