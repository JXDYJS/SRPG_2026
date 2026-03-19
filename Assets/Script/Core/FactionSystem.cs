using System.Collections.Generic;
using Character.data;
using GamePlay.Units;
using Global;

namespace Core.System
{
    public static class FactionSystem
    {
        // 静态关系配置
        // true = 敌对, false = 友好/中立
        public static bool IsHostileDefault(FactionType source, FactionType target)
        {
            if (source == target) return false; // 自己人不打自己人

            // 怪物攻击所有人
            if (source == FactionType.Enemy) return true;
            // 所有人攻击怪物
            if (target == FactionType.Enemy) return true;

            // 玩家 vs 中立/守卫 -> 默认不打
            if (source == FactionType.Player && (target == FactionType.Neutral || target == FactionType.Guard)) return false;

            // 守卫 vs 玩家 -> 默认不打
            if (source == FactionType.Guard && target == FactionType.Player) return false;

            return false;
        }

        // --- 核心：综合判断（包含仇恨） ---
        public static bool IsEnemy(MapUnit source, MapUnit target)
        {
            // 1. 先看有没有私仇 (动态)
            if (source.HasGrudgeAgainst(target)) return true;

            // 2. 再看天生阵营 (静态)
            return IsHostileDefault(source.Faction, target.Faction);
        }
    }
}