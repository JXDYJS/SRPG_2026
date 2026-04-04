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
        if (unit == null || unit.Character.statSystem.currentHP <= 0) return;

        // 生成伤害信息并扣血
        DamageInfo info = new DamageInfo(
            damageAmount,
            null, // 地形伤害没有来源单位
            unit,
            damageType,
            DamageMethod.Environment
        );
        
        CombatCalculator.CalculateDamage(info);
        unit.TakeDamage(info);
        
        Debug.Log("FireDamage:");
    }
}