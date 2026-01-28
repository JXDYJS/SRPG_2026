using UnityEngine;
using Status.damage;
using GamePlay.unit;

namespace Modifier
{
    using Status.damage;
        public interface IDamageModifier
        {
            int Priority { get; }
            void OnOutgoingDamage(ref float value,DamageInfo damageInfo);
            void OnIncomingDamage(ref float value,DamageInfo damageInfo);
        }

        public interface IDefenseModifier
        {
            int Priority { get; }
            void OnDefense(ref float value,DamageInfo damageInfo);
        }

        public interface IResistanceModifier
        {
            int Priority { get; }
            void OnResistance(ref float value,DamageInfo damageInfo);
        }
        public interface ITurnModifier
        {
            int Priority { get; }
            void OnTurnStart(MapUnit owner);
            void OnTurnEnd(MapUnit owner);
        }

        public interface IBattleModifier
        {
            int Priority { get; }
            void OnBattleStart(MapUnit owner);
            void OnBattleEnd(MapUnit owner);
        }

        public interface IApplyModifier
        {
            int Priority { get; }
            void OnApply(MapUnit owner);
            void OnRemove(MapUnit owner);
        }

        public interface ICombatEventModifier
        {
            void OnHit(DamageInfo damageInfo);
            void OnBeHurt(DamageInfo damageInfo);
            void OnKill(DamageInfo damageInfo);
            void OnDie(DamageInfo damageInfo);
        }


        public abstract class CombatModifier : ScriptableObject, IDamageModifier, IDefenseModifier, IResistanceModifier, ITurnModifier, IBattleModifier, IApplyModifier, ICombatEventModifier
        {
            [Header("基础描述")]
            public string ID;
            public string Name;
            public Sprite Icon;
            [TextArea] public string Description;

            public virtual int Priority => 0;

            public virtual void OnOutgoingDamage(ref float damage, DamageInfo info) { }
            public virtual void OnIncomingDamage(ref float damage, DamageInfo info) { }
            public virtual void OnDefense(ref float value, DamageInfo info) { }
            public virtual void OnResistance(ref float value, DamageInfo info) { }
            public virtual void OnTurnStart(MapUnit owner) { }
            public virtual void OnTurnEnd(MapUnit owner) { }
            public virtual void OnBattleStart(MapUnit owner) { }
            public virtual void OnBattleEnd(MapUnit owner) { }
            public virtual void OnApply(MapUnit owner) { }
            public virtual void OnRemove(MapUnit owner) { }
            public virtual void OnHit(DamageInfo damageInfo) { }
            public virtual void OnBeHurt(DamageInfo damageInfo) { }
            public virtual void OnKill(DamageInfo damageInfo) { }
            public virtual void OnDie(DamageInfo damageInfo) { }
        }
}
