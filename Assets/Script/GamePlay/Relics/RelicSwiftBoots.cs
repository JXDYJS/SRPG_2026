using GamePlay.Units;
using Status.state;

namespace GamePlay.Relics
{
    /// <summary>Passive: all allies gain +1 MoveRange.</summary>
    public class RelicSwiftBoots : RelicStatBonusBase
    {
        protected override float BonusValue => 1f;
        protected override Stat TargetStat(MapUnit owner) => owner.Character.statSystem.moveRange;
    }
}
