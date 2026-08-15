using GamePlay.Buff;
using GamePlay.Units;

namespace GamePlay.Relics
{
    /// <summary>War Banner: at battle start, all allies gain 1 stack of Strength.</summary>
    public class RelicWarBanner : RelicBase
    {
        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            BuffManager.ApplyBuffToUnit(owner, "Strength", 1);
        }
    }
}
