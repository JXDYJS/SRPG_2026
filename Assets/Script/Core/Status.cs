using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using Global;

namespace Status
{
    namespace state
    {
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

            // ================ 独立乘区系统 ================
            private class ModifierZone
            {
                public int priority;
                public List<StatModifier> modifiers = new List<StatModifier>();
            }
            private Dictionary<string, ModifierZone> _zones = new Dictionary<string, ModifierZone>();
            private const int DEFAULT_ZONE_PRIORITY = 0;

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

                // 1. 按 priority 升序处理独立乘区
                foreach (var zone in _zones.Values.OrderBy(z => z.priority))
                {
                    float flatSum = 0;
                    float percentSum = 0;
                    foreach (var mod in zone.modifiers)
                    {
                        if (mod.Type == StatModType.Flat)
                            flatSum += mod.Value;
                        else if (mod.Type == StatModType.Percent)
                            percentSum += mod.Value;
                    }
                    value = (value + flatSum) * (1 + percentSum);
                }

                // 2. 默认乘区（最后生效）
                float legacyFlat = 0;
                float legacyPercent = 0;
                foreach (var mod in modifiers)
                {
                    if (mod.Type == StatModType.Flat)
                        legacyFlat += mod.Value;
                    else if (mod.Type == StatModType.Percent)
                        legacyPercent += mod.Value;
                }
                value = (value + legacyFlat) * (1 + legacyPercent);

                return value;
            }
            public float getValue()
            {
                if (!isDirty)
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

            /// <summary>
            /// 设置/更新乘区优先级。乘区不存在则自动创建。
            /// </summary>
            public void SetZonePriority(string zoneName, int priority)
            {
                if (!_zones.TryGetValue(zoneName, out var zone))
                {
                    zone = new ModifierZone();
                    _zones[zoneName] = zone;
                }
                zone.priority = priority;
            }

            /// <summary>
            /// 向指定乘区添加修饰器。乘区不存在则自动创建（默认 priority=0）。
            /// </summary>
            public void addModifier(StatModifier mod, string zoneName)
            {
                if (!_zones.TryGetValue(zoneName, out var zone))
                {
                    zone = new ModifierZone { priority = DEFAULT_ZONE_PRIORITY };
                    _zones[zoneName] = zone;
                }
                zone.modifiers.Add(mod);
                isDirty = true;
            }

            /// <summary>
            /// 从指定乘区移除修饰器。
            /// </summary>
            public void removeModifier(StatModifier mod, string zoneName)
            {
                if (_zones.TryGetValue(zoneName, out var zone))
                {
                    zone.modifiers.Remove(mod);
                    isDirty = true;
                }
            }

            public void SetBaseValue(float newValue)
            {
                baseValue = newValue;
                isDirty = true;
                OnValueChanged?.Invoke();
            }

            public void MarkDirty()
            {
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
            public Stat moveRange;
            public Stat maxMP;

            public event Action<int> OnHPChanged;
            public event Action<int> OnMPChanged;

            private int _currentHP;
            public int currentHP
            {
                get => _currentHP;
                set
                {
                    if (_currentHP != value)
                    {
                        _currentHP = value;
                        OnHPChanged?.Invoke(_currentHP);
                    }
                }
            }

            private int _currentMP;
            public int currentMP
            {
                get => _currentMP;
                set
                {
                    if (_currentMP != value)
                    {
                        _currentMP = value;
                        OnMPChanged?.Invoke(_currentMP);
                    }
                }
            }

            public StatSystem(int maxHP, int ATK, int DEF, int RES, int SPD, int MOV = 0, int maxMP = 0)
            {
                this.maxHP = new Stat(maxHP);
                this.ATK = new Stat(ATK);
                this.DEF = new Stat(DEF);
                this.RES = new Stat(RES);
                this.Speed = new Stat(SPD);
                this.moveRange = new Stat(MOV);
                this.maxMP = new Stat(maxMP);
                _currentHP = maxHP;
                _currentMP = maxMP;
            }
            public StatSystem(CharacterData characterData)
            {
                maxHP = new Stat(characterData.BaseMaxHP);
                ATK = new Stat(characterData.BaseATK);
                DEF = new Stat(characterData.BaseDEF);
                RES = new Stat(characterData.BaseRES);
                Speed = new Stat(characterData.Speed);
                moveRange = new Stat(characterData.MoveRange);
                maxMP = new Stat(characterData.BaseMaxMP);
                _currentHP = characterData.BaseMaxHP;
                _currentMP = characterData.BaseMaxMP;
            }

            /// <summary>
            /// 重新计算所有属性值，确保缓存值正确
            /// </summary>
            public void RecalculateAll()
            {
                maxHP.getValue();
                ATK.getValue();
                DEF.getValue();
                RES.getValue();
                Speed.getValue();
                moveRange.getValue();
                maxMP.getValue();
            }
            /// <summary>
            /// 在属性变化的时候触发
            /// </summary>
            /// <param name="action"></param>
            public void onChanged(Action action)
            {
                Stat[] lists = { maxHP, ATK, DEF, RES, Speed, moveRange, maxMP };
                foreach (var stat in lists)
                {
                    stat.OnValueChanged += () =>
                    {
                        action.Invoke();
                    };
                }
            }
            private List<(string, Stat)> _statList = null;
            public List<(string, Stat)> statList
            {
                get
                {
                    if (_statList == null) _statList = new List<(string, Stat)>
                    {
                        ("MaxHP", maxHP),
                        ("ATK",ATK ),
                        ("DEF",DEF),
                        ("RES",RES),
                        ("Speed",Speed),
                        ("MoveRange",moveRange),
                        ("MaxMP",maxMP)
                    };
                    return _statList;
                }
            }
        }
    }
    namespace damage
    {
        using Character.instance;
        using UnityEngine.Rendering;
        using GamePlay.Units;
        using Modifier;
        using GamePlay.Relics;
        using Core.Data;
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
                // 秒杀指令：Player 阵营攻击直接造成巨额伤害
                if (Data.CommandConfig.playerOneShotKill
                    && damageInfo.sourceUnit != null
                    && damageInfo.sourceUnit.Faction == FactionType.Player)
                {
                    damageInfo.damage = 99999;
                }

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