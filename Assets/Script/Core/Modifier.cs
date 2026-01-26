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


        public abstract class CombatModifier : ScriptableObject, IDamageModifier, IDefenseModifier, IResistanceModifier, ITurnModifier, IBattleModifier
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

        }
}
