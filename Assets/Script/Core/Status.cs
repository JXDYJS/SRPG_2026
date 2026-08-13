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
            Flat,   // Fixed value (e.g. ATK +10)
            Percent // Percentage (e.g. ATK +50%, i.e. 0.5)
        }

        [System.Serializable]
        public class StatModifier
        {
            public float Value;
            public StatModType Type;
            public object Source; // Optional origin (buff/equip) for debugging

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

            /// <summary>Sets zone priority, auto-creating the zone if missing.</summary>
            public void SetZonePriority(string zoneName, int priority)
            {
                if (!_zones.TryGetValue(zoneName, out var zone))
                {
                    zone = new ModifierZone();
                    _zones[zoneName] = zone;
                }
                zone.priority = priority;
            }

            /// <summary>Adds a modifier to a zone, auto-creating it with default priority.</summary>
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

            public MapUnit sourceUnit;
            public MapUnit targetUnit;
            public DamageMethod damageMethod;

            public DamageInfo(float damage, MapUnit source, MapUnit target, DamageType damageType, DamageMethod damageMethod)
            {
                this.damage = damage;
                this.sourceUnit = source; // MapUnit (body)
                this.targetUnit = target; // MapUnit (body)
                this.source = source?.Character; // Character (soul)
                this.target = target?.Character; // Character (soul)
                this.damageType = damageType;
                this.damageMethod = damageMethod;
            }
        }

        public static class CombatCalculator
        {
            public static float CalculateDamage(DamageInfo damageInfo)
            {
                // One-shot kill: Player faction attacks deal massive damage
                if (Data.CommandConfig.playerOneShotKill
                    && damageInfo.sourceUnit != null
                    && damageInfo.sourceUnit.Faction == FactionType.Player)
                {
                    damageInfo.damage = 99999;
                }

                float finalDamage = damageInfo.damage;

                var sourceMods = damageInfo.sourceUnit?.GetModifiers() ?? new List<CombatModifier>();
                var targetMods = damageInfo.targetUnit?.GetModifiers() ?? new List<CombatModifier>();

                foreach (var mod in sourceMods)
                {
                    mod.OnOutgoingDamage(ref finalDamage, damageInfo);
                }

                float effectiveDefense = 0;
                bool applyMitigation = false;

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

                    default:
                        applyMitigation = false;
                        break;
                }
                if (applyMitigation)
                {
                    foreach (var mod in targetMods) mod.OnDefense(ref effectiveDefense, damageInfo);
                    foreach (var mod in sourceMods) mod.OnDefense(ref effectiveDefense, damageInfo);

                    if (damageInfo.damageType == DamageType.Physical)
                    {
                        finalDamage = Math.Max(0, finalDamage - effectiveDefense);
                    }
                    else if (damageInfo.damageType == DamageType.Magic)
                    {
                        float resFactor = Mathf.Clamp01(effectiveDefense / 100f);
                        finalDamage *= (1.0f - resFactor);
                    }
                }

                foreach (var mod in targetMods)
                {
                    mod.OnIncomingDamage(ref finalDamage, damageInfo);
                }

                damageInfo.damage = Math.Max(0, finalDamage);
                return damageInfo.damage;
            }
        }
    }
}
