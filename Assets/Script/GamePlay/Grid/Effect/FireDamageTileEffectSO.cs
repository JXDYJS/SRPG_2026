using UnityEngine;
using GamePlay.Units;
using Status.damage;
using Global;
using GamePlay.Grid;

[CreateAssetMenu(fileName = "FireDamageTileEffect", menuName = "TileEffects/Damage")]
public class FireDamageTileEffectSO : TileEffectSO
{
    public int damageAmount = 1;
    public DamageType damageType = DamageType.Fire;

    public override void onApply(MapUnit unit, MapObject mapObject)
    {
        if (unit == null || !unit.IsAlive) return;

        DamageInfo info = new DamageInfo(
            damageAmount,
            null, // No source unit for environmental damage.
            unit,
            damageType,
            DamageMethod.Environment
        );
        
        CombatCalculator.CalculateDamage(info);
        unit.TakeDamage(info);
        
        Debug.Log("FireDamage:");
    }
}