using UnityEngine;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>
    /// Totem of Undying 不死图腾 — 每场战斗抵挡一次致命伤害，保留 1 点生命。
    /// 遗物为全局共享实例，故每场战斗全队共可抵挡一次（OnBattleStart 重置）。
    /// </summary>
    public class RelicTotemOfUndying : RelicBase
    {
        private bool _usedThisBattle;

        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            _usedThisBattle = false;
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            if (_usedThisBattle) return;
            if (info.targetUnit == null || info.targetUnit.Character == null) return;

            int hp = info.targetUnit.Character.statSystem.currentHP;
            if (damage >= hp)
            {
                damage = Mathf.Max(0, hp - 1);
                _usedThisBattle = true;
                Debug.Log($"[RelicTotem] {info.targetUnit.name} 触发不死图腾！保留 1 点生命");
            }
        }
    }
}
