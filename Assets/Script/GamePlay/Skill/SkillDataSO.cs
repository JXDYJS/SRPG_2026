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

        // ================ AI 辅助判定方法 ================

        /// <summary>
        /// 技能是否主要用于对敌（伤害、减益、控制）
        /// </summary>
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

        /// <summary>
        /// 技能是否主要用于支援（治疗或增益友军/自身）
        /// </summary>
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

        /// <summary>
        /// 技能是否可以以自身为目标（自愈/自buff）
        /// </summary>
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

        // ================ 深度复制 ================
        public SkillDataSO DeepClone()
        {
            SkillDataSO clone = CreateInstance<SkillDataSO>();
            
            // 复制基础属性
            clone.SkillName = this.SkillName;
            clone.Description = this.Description;
            clone.Icon = this.Icon;
            clone.TargetType = this.TargetType;
            clone.CastPattern = this.CastPattern;
            clone.CastMaxRange = this.CastMaxRange;
            clone.CastMinRange = this.CastMinRange;
            clone.CastVerticalRange = this.CastVerticalRange;
            clone.Trajectory = this.Trajectory;
            clone.StopsAtFirstHit = this.StopsAtFirstHit;
            clone.Cost = this.Cost;
            clone.isCustomSkill = this.isCustomSkill;
            clone.CustomBehavior = this.CustomBehavior;
            clone.AIBehavior = this.AIBehavior;
            clone.AIPriority = this.AIPriority;

            // 深度复制Phases
            clone.Phases = new List<SkillPhase>();
            foreach (SkillPhase originalPhase in this.Phases)
            {
                SkillPhase phaseClone = new SkillPhase(originalPhase.PhaseName, originalPhase.TargetType);
                
                // 复制phase属性
                phaseClone.AoEPattern = originalPhase.AoEPattern;
                phaseClone.AoERadius = originalPhase.AoERadius;
                phaseClone.AoEVerticalRange = originalPhase.AoEVerticalRange;
                phaseClone.OriginType = originalPhase.OriginType;
                
                // 深度复制Effects
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
                
                // 复制VisualData (都是值类型和引用，不需要深层复制引用对象)
                if (originalPhase.VisualData != null)
                {
                    phaseClone.VisualData = new SkillVisualData();
                    phaseClone.VisualData.CastAnimTrigger = originalPhase.VisualData.CastAnimTrigger;
                    phaseClone.VisualData.CastEffect = originalPhase.VisualData.CastEffect;
                    phaseClone.VisualData.Transit = originalPhase.VisualData.Transit;
                    phaseClone.VisualData.ProjectilePrefab = originalPhase.VisualData.ProjectilePrefab;
                    phaseClone.VisualData.ProjectileSpeed = originalPhase.VisualData.ProjectileSpeed;
                    phaseClone.VisualData.HitTimingMode = originalPhase.VisualData.HitTimingMode;
                    phaseClone.VisualData.HitEventName = originalPhase.VisualData.HitEventName;
                    phaseClone.VisualData.HitDelayTime = originalPhase.VisualData.HitDelayTime;
                    phaseClone.VisualData.EndTimingMode = originalPhase.VisualData.EndTimingMode;
                    phaseClone.VisualData.EndEventName = originalPhase.VisualData.EndEventName;
                    phaseClone.VisualData.EndDelayTime = originalPhase.VisualData.EndDelayTime;
                    phaseClone.VisualData.TargetAreaEffect = originalPhase.VisualData.TargetAreaEffect;
                    phaseClone.VisualData.TargetAreaOffset = originalPhase.VisualData.TargetAreaOffset;
                    phaseClone.VisualData.TargetAreaRotation = originalPhase.VisualData.TargetAreaRotation;
                    phaseClone.VisualData.TargetAreaDuration = originalPhase.VisualData.TargetAreaDuration;
                }
                
                clone.Phases.Add(phaseClone);
            }

            return clone;
        }
    }
}
