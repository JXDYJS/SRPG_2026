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
        using GamePlay.unit;

        public enum DamageType
        {
            Physical,
            Magic,
            Fire,
            Poison,
            Ice,
            True,
        }

        public interface IDamageModifier
        {
            int Priority { get; }
            void OnOutgoingDamage(DamageInfo damageInfo);
            void OnIncomingDamage(DamageInfo damageInfo);
        }
        public class DamageInfo
        {
            public float damage;
            public CharacterInstance source;
            public CharacterInstance target;
            public DamageType damageType;
            
            // 【新增】现场目击者 (用于获取藏品和Buff列表)
            public MapUnit sourceUnit;
            public MapUnit targetUnit;

            // 更新构造函数
            public DamageInfo(float damage, MapUnit source, MapUnit target, DamageType damageType)
            {
                this.damage = damage;
                this.sourceUnit = source; // 记录肉体
                this.targetUnit = target; // 记录肉体
                this.source = source?.Character; // 顺便记录灵魂
                this.target = target?.Character; // 顺便记录灵魂
                this.damageType = damageType;
            }
        }

        public static class CombatCalculator
        {
            public static float CalculateDamage(DamageInfo damageInfo)
            {
                float finalDamage = damageInfo.damage;

                switch(damageInfo.damageType)
                {
                    case DamageType.Physical:
                        // 物理：减法公式 (至少为0)
                        float def = damageInfo.target.statSystem.DEF.getValue();
                        finalDamage = Math.Max(0, finalDamage - def);
                        break;
                        
                    case DamageType.Magic:
                        // 魔法：百分比减伤
                        float res = damageInfo.target.statSystem.RES.getValue();
                        finalDamage = finalDamage * (1.0f - (res / 100f));
                        break;
                        
                    case DamageType.Fire:
                    case DamageType.Poison:
                    case DamageType.Ice:
                    case DamageType.True:
                        // 元素/真实：无视双抗
                        break;
                }
                
                damageInfo.damage = finalDamage;


                return Math.Max(0, damageInfo.damage);
            }
        }
    }
}