using System;
using System.Collections.Generic;
using UnityEngine;

namespace Status
{
    namespace state{
        using Character.data;
        public enum StatModType
        {
            Flat,   // 固定数值 (例如：攻击力 +10)
            Percent // 百分比 (例如：攻击力 +50%，即 0.5)
        }

        [System.Serializable]
        public class StatModifier
        {
            public float Value;
            public StatModType Type;
            public object Source; // (可选) 记录来源，比如是哪个 Buff 或者是哪个装备，方便 Debug

            public StatModifier(float value, StatModType type, object source = null)
            {
                Value = value;
                Type = type;
                Source = source;
            }
        }
        public class Stat
        {
            public float baseValue = 0;
            private readonly List<StatModifier> modifiers = new List<StatModifier>();

            public bool isDirty = true;
            public float cachedValue = 0;

            public event Action OnValueChanged;

            public Stat(float baseValue)
            {
                this.baseValue = baseValue;
            }

            public virtual float calValue()
            {
                float value = baseValue;
                float percentMod = 0;
                foreach(StatModifier mod in modifiers)
                {
                    if(mod.Type == StatModType.Percent)
                    {
                        percentMod += mod.Value;
                    }
                    else if(mod.Type == StatModType.Flat)
                    {
                        value += mod.Value;
                    }
                }
                value *= 1 + percentMod;
                return value;
            }
            public float getValue()
            {
                if(!isDirty)
                {
                    return cachedValue;
                }
                cachedValue = calValue();
                isDirty = false;
                return cachedValue;
            }

            public void addModifier(StatModifier mod)
            {
                modifiers.Add(mod);
                isDirty = true;
            }

            public void removeModifier(StatModifier mod)
            {
                modifiers.Remove(mod);
                isDirty = true;
            }

            public void SetBaseValue(float newValue)
            {
                    baseValue = newValue;
                    isDirty = true;
                    OnValueChanged?.Invoke();
            }
        }

        public class StatSystem
        {
            public Stat maxHP;
            public Stat ATK;
            public Stat DEF;
            public Stat RES;
            public int currentHP;

            public StatSystem(int maxHP, int ATK, int DEF, int RES)
            {
                this.maxHP = new Stat(maxHP);
                this.ATK = new Stat(ATK);
                this.DEF = new Stat(DEF);
                this.RES = new Stat(RES);
                currentHP = maxHP;
            }
            public StatSystem(CharacterData characterData)
            {
                maxHP = new Stat(characterData.BaseMaxHP);
                ATK = new Stat(characterData.BaseATK);
                DEF = new Stat(characterData.BaseDEF);
                RES = new Stat(characterData.BaseRES);
                currentHP = characterData.BaseMaxHP;
            }
            
        }
    }
    namespace damage
    {
        using Character.instance;
        using UnityEngine.Rendering;

        public enum DamageType
        {
            Physical,
            Magic,
            Fire,
            Poison,
            Ice,
            True,
        }
        public class DamageInfo
        {
            public float damage;
            public CharacterInstance source;
            public CharacterInstance target;
            public DamageType damageType;
            public DamageInfo(float damage, CharacterInstance source, CharacterInstance target, DamageType damageType)
            {
                this.damage = damage;
                this.source = source;
                this.target = target;
                this.damageType = damageType;
            }
        }

        public static class CombatCalculator
        {
            public static float CalculateDamage(DamageInfo damageInfo)
            {
                float damage = damageInfo.damage;
                switch(damageInfo.damageType)
                {
                    case DamageType.Physical:
                        // 物理伤害计算
                        break;
                    case DamageType.Magic:
                        // 魔法伤害计算
                        break;
                    case DamageType.Fire:
                        // 火伤害计算
                        break;
                    case DamageType.Poison:
                        // 毒伤害计算
                        break;
                    case DamageType.Ice:
                        // 冰伤害计算
                        break;
                    case DamageType.True:
                        // 真实伤害计算
                        break;
                }
                return damage;
            }
        }
    }
}