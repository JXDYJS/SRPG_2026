using GamePlay.Units;
using Status.state;

namespace GamePlay.Relics
{
    /// <summary>Passive: all allies gain +2 DEF.</summary>
    public class RelicIronPlating : RelicStatBonusBase
    {
        protected override float BonusValue => 2f;
        protected override Stat TargetStat(MapUnit owner) => owner.Character.statSystem.DEF;
    }
}
