using System.Collections.Generic;
using Character.data;
using GamePlay.Units;
using Global;

namespace Core.System
{
    public static class FactionSystem
    {
        // Static faction relation config: true = hostile, false = friendly/neutral
        public static bool IsHostileDefault(FactionType source, FactionType target)
        {
            if (source == target) return false;

            if (source == FactionType.Enemy) return true;
            if (target == FactionType.Enemy) return true;

            if (source == FactionType.Player && (target == FactionType.Neutral || target == FactionType.Guard)) return false;

            if (source == FactionType.Guard && target == FactionType.Player) return false;

            return false;
        }

        public static bool IsEnemy(MapUnit source, MapUnit target)
        {
            if (source.HasGrudgeAgainst(target)) return true;

            return IsHostileDefault(source.Faction, target.Faction);
        }
    }
}