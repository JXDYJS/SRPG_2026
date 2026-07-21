using GamePlay.Units;
using Status.damage;
using Global;

namespace GamePlay.Grid
{
    public static class TileEffects
    {
        public static void FireDamage(MapUnit unit, MapObject mapObject, int damage, string damageTypeStr)
        {
            if (unit == null || unit.Character?.statSystem?.currentHP <= 0)
                return;

            var damageType = DamageType.Fire;
            if (!string.IsNullOrEmpty(damageTypeStr))
                System.Enum.TryParse(damageTypeStr, out damageType);

            var info = new DamageInfo(
                damage, null, unit, damageType, DamageMethod.Environment
            );
            CombatCalculator.CalculateDamage(info);
            unit.TakeDamage(info);
        }
    }
}
