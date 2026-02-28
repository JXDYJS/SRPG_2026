using System;
using System.Collections.Generic;
using UnityEngine;
using Global;

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
                foreach(StatModifier mod
                 in modifiers)
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
                OnValueChanged?.Invoke();
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
            public Stat Speed;
            public int currentHP;

            public StatSystem(int maxHP, int ATK, int DEF, int RES,int SPD)
            {
                this.maxHP = new Stat(maxHP);
                this.ATK = new Stat(ATK);
                this.DEF = new Stat(DEF);
                this.RES = new Stat(RES);
                this.Speed = new Stat(SPD);
                currentHP = maxHP;
            }
            public StatSystem(CharacterData characterData)
            {
                maxHP = new Stat(characterData.BaseMaxHP);
                ATK = new Stat(characterData.BaseATK);
                DEF = new Stat(characterData.BaseDEF);
                RES = new Stat(characterData.BaseRES);
                Speed = new Stat(characterData.Speed);
                currentHP = characterData.BaseMaxHP;
            }
            
        }
    }
    namespace damage
    {
        using Character.instance;
        using UnityEngine.Rendering;
        using GamePlay.unit;
        using Modifier;
        using GamePlay.relics;
        public class DamageInfo
        {
            public float damage;
            public CharacterInstance source;
            public CharacterInstance target;
            public DamageType damageType;
            
            // 【新增】现场目击者 (用于获取藏品和Buff列表)
            public MapUnit sourceUnit;
            public MapUnit targetUnit;
            public DamageMethod damageMethod;

            // 更新构造函数
            public DamageInfo(float damage, MapUnit source, MapUnit target, DamageType damageType, DamageMethod damageMethod)
            {
                this.damage = damage;
                this.sourceUnit = source; // 记录肉体
                this.targetUnit = target; // 记录肉体
                this.source = source?.Character; // 顺便记录灵魂
                this.target = target?.Character; // 顺便记录灵魂
                this.damageType = damageType;
                this.damageMethod = damageMethod;
            }
        }

        public static class CombatCalculator
        {
            public static float CalculateDamage(DamageInfo damageInfo)
            {
                float finalDamage = damageInfo.damage;
                
                var sourceMods = damageInfo.sourceUnit?.GetModifiers() ?? new List<CombatModifier>();
                var targetMods = damageInfo.targetUnit?.GetModifiers() ?? new List<CombatModifier>();

                // =======================================================
                // 阶段 1: 攻击者输出修正
                // =======================================================
                foreach (var mod in sourceMods)
                {
                    mod.OnOutgoingDamage(ref finalDamage, damageInfo);
                }

                // =======================================================
                // 阶段 2: 防御/抗性减免
                // =======================================================
                float effectiveDefense = 0;
                bool applyMitigation = false; // 是否需要进行防御减法

                switch (damageInfo.damageType)
                {
                    case DamageType.Physical:
                        effectiveDefense = damageInfo.target.statSystem.DEF.getValue();
                        applyMitigation = true;
                        break;

                    case DamageType.Magic:
                        effectiveDefense = damageInfo.target.statSystem.RES.getValue();
                        applyMitigation = true;
                        break;
                        
                    // Fire, Poison, True
                    default:
                        applyMitigation = false;
                        break;
                }
                if (applyMitigation)
                {
                    foreach (var mod in targetMods) mod.OnDefense(ref effectiveDefense, damageInfo);
                    foreach (var mod in sourceMods) mod.OnDefense(ref effectiveDefense, damageInfo);

                    // 3. 应用公式
                    if (damageInfo.damageType == DamageType.Physical)
                    {
                        // 物理：减法
                        finalDamage = Math.Max(0, finalDamage - effectiveDefense);
                    }
                    else if (damageInfo.damageType == DamageType.Magic)
                    {
                        // 魔法：百分比 (注意防止抗性超过 100%)
                        float resFactor = Mathf.Clamp01(effectiveDefense / 100f);
                        finalDamage *= (1.0f - resFactor);
                    }
                }

                // =======================================================
                // 阶段 3: 防御者受击修正
                // =======================================================
                foreach (var mod in targetMods)
                {
                    mod.OnIncomingDamage(ref finalDamage, damageInfo);
                }

                // 写回并返回
                damageInfo.damage = Math.Max(0, finalDamage);
                return damageInfo.damage;
            }
        }
    }
}