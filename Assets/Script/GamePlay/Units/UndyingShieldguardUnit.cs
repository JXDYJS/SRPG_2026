using System.Collections.Generic;
using UnityEngine;
using Modifier;
using GamePlay.Buff;
using Global;
using Status.damage;

namespace GamePlay.Units
{
    public class UndyingShieldguardUnit : MapUnit
    {
        private bool _forcedKillContext;

        private bool HasVow
        {
            get
            {
                var vow = BuffManager.FindBuffByID(this, "vow");
                return vow != null && vow.Stacks > 0;
            }
        }

        private bool IsUndying
        {
            get
            {
                var undying = BuffManager.FindBuffByID(this, "undying_will");
                return undying != null && undying.Stacks > 0;
            }
        }

        public override void TakeDamage(DamageInfo info)
        {
            if (IsUndying && info.damageMethod != DamageMethod.ForceKill)
            {
                var sourceMods = info.sourceUnit?.GetModifiers() ?? new List<CombatModifier>();
                foreach (var mod in sourceMods)
                    mod.OnHit(info);
                foreach (var mod in GetModifiers())
                    mod.OnBeHurt(info);
                return;
            }

            _forcedKillContext = info.damageMethod == DamageMethod.ForceKill;
            base.TakeDamage(info);
            _forcedKillContext = false;
        }

        protected override void Die()
        {
            if (_forcedKillContext)
            {
                base.Die();
                return;
            }

            if (HasVow)
            {
                var vowBuff = BuffManager.FindBuffByID(this, "vow");
                if (vowBuff != null)
                    RemoveBuff(vowBuff);
                Character.statSystem.currentHP = 0;
                var undyingBuff = BuffManager.CreateBuffFromID("undying_will", 3);
                if (undyingBuff != null)
                    AddBuff(undyingBuff);
                Debug.Log($"{GetUnitName()} 假死触发: vow已消费, HP钳制0, undying_will 3层");
                return;
            }

            base.Die();
        }

        public override void OnTurnStart()
        {
            base.OnTurnStart();

            var undyingBuff = BuffManager.FindBuffByID(this, "undying_will");
            if (undyingBuff != null)
            {
                if (Character.statSystem.currentHP > 0)
                {
                    RemoveBuff(undyingBuff);
                    Debug.Log($"{GetUnitName()} 被治疗复活: undying_will已移除");
                }
            }
            else if (Character.statSystem.currentHP == 0)
            {
                Debug.Log($"{GetUnitName()} 假死层数归零, 真死");
                base.Die();
            }
        }
    }
}
