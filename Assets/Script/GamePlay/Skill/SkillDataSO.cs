using UnityEngine;
using Global;
using GamePlay.Units;
using GamePlay.Grid;
using Managers;
using Status.damage;
using System.Collections.Generic;
using GamePlay.Skill.CustomBehaviors;

namespace GamePlay.Skill
{
    [CreateAssetMenu(menuName = "Game/Skill Data")]
    public class SkillDataSO : ScriptableObject
    {
        [Header("基础信息")]
        public string SkillName;
        [TextArea] public string Description;
        public Sprite Icon;

        [Header("目标配置")]
        [Tooltip("技能目标类型")]
        public TargetType TargetType = TargetType.Enemy;

        [Header("施法范围配置 (Cast Range)")]
        [Tooltip("施法形状：决定玩家可以选取哪些格子")]
        public CastPatternType CastPattern = CastPatternType.Diamond;

        [Tooltip("施法最大距离")]
        public int CastMaxRange = 1;

        [Tooltip("施法最小距离 (0或1，大于1则形成环形盲区)")]
        public int CastMinRange = 1;

        [Tooltip("施法垂直高度容忍度")]
        public int CastVerticalRange = 1;

        [Tooltip("施法范围模式：Standard=现有系统, Script=自定义函数")]
        public SkillPhaseCastRangeMode CastRangeMode = SkillPhaseCastRangeMode.Standard;

        [Tooltip("CastRangeMode=Script 时，返回 List<Vector3Int> 的 Lua/C# 函数名")]
        public string CastRangeFuncName = "";

        [Tooltip("弹道轨迹类型 - 决定技能如何穿越空间到达目标")]
        public TrajectoryType Trajectory = TrajectoryType.LineOfSight;

        [Header("弹道配置 (Projectile Configuration)")]
        [Tooltip("弹道是否在碰到第一个目标时停止")]
        public bool StopsAtFirstHit = true;

        [Header("消耗配置")]
        [Tooltip("技能消耗（如MP/TP等）")]
        public int Cost = 0;

        [Header("技能阶段配置")]
        public List<SkillPhase> Phases = new List<SkillPhase>();
        [Header("AI 行为配置")]
        [Tooltip("AI使用技能的行为提示（可多选）。Auto=自动推断（向后兼容）")]
        public AISkillBehavior AIBehavior = AISkillBehavior.Auto;

        [Tooltip("AI使用优先级倍率：0=永不, 0.5=低优先, 1=标准, 2=高优先")]
        [Range(0f, 5f)]
        public float AIPriority = 1f;

        [Header("是否使用自定义")]
        public bool isCustomSkill = false;
        public CustomSkillBehaviorSO CustomBehavior = null;


        /// <summary>Whether the skill is primarily offensive (damage, debuff, control).</summary>
        public bool IsOffensiveSkill()
        {
            if (AIBehavior != AISkillBehavior.Auto)
            {
                return (AIBehavior & (AISkillBehavior.Harm | AISkillBehavior.Debuff | AISkillBehavior.Control)) != 0;
            }

            if (TargetType == TargetType.Enemy ||
                TargetType == TargetType.Player ||
                TargetType == TargetType.ExceptTeammates)
            {
                return true;
            }

            if (Phases != null)
            {
                foreach (SkillPhase phase in Phases)
                {
                    if (phase.Effects == null)
                    {
                        continue;
                    }

                    foreach (SkillEffect effect in phase.Effects)
                    {
                        if (effect.EffectType == EffectType.Damage)
                        {
                            return true;
                        }
                    }
                }
            }

            return false;
        }

        /// <summary>Whether the skill is primarily supportive (heal or buff allies/self).</summary>
        public bool IsSupportiveSkill()
        {
            if (AIBehavior != AISkillBehavior.Auto)
            {
                return (AIBehavior & (AISkillBehavior.Heal | AISkillBehavior.Buff)) != 0;
            }

            if (TargetType == TargetType.Ally ||
                TargetType == TargetType.Teammates ||
                TargetType == TargetType.Self)
            {
                return true;
            }

            if (Phases != null)
            {
                foreach (SkillPhase phase in Phases)
                {
                    if (phase.TargetType == TargetType.Ally ||
                        phase.TargetType == TargetType.Teammates ||
                        phase.TargetType == TargetType.Self)
                    {
                        return true;
                    }

                    if (phase.Effects == null)
                    {
                        continue;
                    }

                    foreach (SkillEffect effect in phase.Effects)
                    {
                        if (effect.EffectType == EffectType.Heal ||
                            effect.EffectType == EffectType.AddBuff)
                        {
                            return true;
                        }
                    }
                }
            }

            return false;
        }

        /// <summary>Whether the skill can target self (self-heal/self-buff).</summary>
        public bool CanTargetSelf()
        {
            if (AIBehavior != AISkillBehavior.Auto)
            {
                return (AIBehavior & (AISkillBehavior.Heal | AISkillBehavior.Buff)) != 0;
            }

            if (TargetType == TargetType.Self)
            {
                return true;
            }

            if (Phases != null)
            {
                foreach (SkillPhase phase in Phases)
                {
                    if (phase.TargetType == TargetType.Self)
                    {
                        return true;
                    }
                }
            }

            return false;
        }

        public SkillDataSO DeepClone()
        {
            SkillDataSO clone = CreateInstance<SkillDataSO>();
            
            clone.SkillName = this.SkillName;
            clone.Description = this.Description;
            clone.Icon = this.Icon;
            clone.TargetType = this.TargetType;
            clone.CastPattern = this.CastPattern;
            clone.CastMaxRange = this.CastMaxRange;
            clone.CastMinRange = this.CastMinRange;
            clone.CastVerticalRange = this.CastVerticalRange;
            clone.CastRangeMode = this.CastRangeMode;
            clone.CastRangeFuncName = this.CastRangeFuncName;
            clone.Trajectory = this.Trajectory;
            clone.StopsAtFirstHit = this.StopsAtFirstHit;
            clone.Cost = this.Cost;
            clone.isCustomSkill = this.isCustomSkill;
            clone.CustomBehavior = this.CustomBehavior;
            clone.AIBehavior = this.AIBehavior;
            clone.AIPriority = this.AIPriority;

            clone.Phases = new List<SkillPhase>();
            foreach (SkillPhase originalPhase in this.Phases)
            {
                SkillPhase phaseClone = new SkillPhase(originalPhase.PhaseName, originalPhase.TargetType);
                
                phaseClone.AoEPattern = originalPhase.AoEPattern;
                phaseClone.AoERadius = originalPhase.AoERadius;
                phaseClone.AoEVerticalRange = originalPhase.AoEVerticalRange;
                phaseClone.OriginType = originalPhase.OriginType;
                
                phaseClone.Effects = new List<SkillEffect>();
                foreach (SkillEffect originalEffect in originalPhase.Effects)
                {
                    SkillEffect effectClone = new SkillEffect();
                    effectClone.EffectType = originalEffect.EffectType;
                    effectClone.FlatBonus = originalEffect.FlatBonus;
                    effectClone.Multiplier = originalEffect.Multiplier;
                    effectClone.Constant = originalEffect.Constant;
                    effectClone.DamageType = originalEffect.DamageType;
                    effectClone.BuffID = originalEffect.BuffID;
                    effectClone.BuffStacks = originalEffect.BuffStacks;
                    effectClone.RemoveMode = originalEffect.RemoveMode;
                    phaseClone.Effects.Add(effectClone);
                }
                
                phaseClone.ExecuteMode = originalPhase.ExecuteMode;
                phaseClone.ExecuteFuncName = originalPhase.ExecuteFuncName;
                
                if (originalPhase.VisualData != null)
                {
                    phaseClone.VisualData = new SkillVisualData();
                    phaseClone.VisualData.Actions = new List<ActionStep>(originalPhase.VisualData.Actions);
                }
                
                clone.Phases.Add(phaseClone);
            }

            return clone;
        }
    }
}
