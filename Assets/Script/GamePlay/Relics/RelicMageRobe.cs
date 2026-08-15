using GamePlay.Units;
using Status.state;

namespace GamePlay.Relics
{
    /// <summary>Passive: all allies gain +2 RES.</summary>
    public class RelicMageRobe : RelicStatBonusBase
    {
        protected override float BonusValue => 2f;
        protected override Stat TargetStat(MapUnit owner) => owner.Character.statSystem.RES;
    }
}
