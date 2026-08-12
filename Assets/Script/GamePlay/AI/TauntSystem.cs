using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;
using Global;

namespace GamePlay.AI
{
    /// <summary>
    /// 嘲讽系统 — 数据驱动（依赖 taunt Buff 标记，阵营无关，未来敌方/Boss 可复用）。
    ///
    /// 设计原则：嘲讽与"施法范围"完全解耦，单向数据流。
    /// - 施法范围层（GetCastRange3D / CanCastTo / CastRangeFuncName）保持纯几何，无嘲讽意识；
    /// - 本类属于"后置选择过滤层"，消费施法范围/可达性结果，把"可选择目标"收窄到嘲讽者。
    ///
    /// 生效规则：
    /// 1. 阵营敌对：只约束对【对方阵营】的单体进攻行为（队友治疗/增益天然豁免）；
    /// 2. 只约束进攻型（IsOffensiveSkill），Heal/Buff/Self 豁免；
    /// 3. 只约束单体（AoE / Global 技能豁免，与玩家侧决策一致）；
    /// 4. 强制目标必须"移动后可用单体进攻打到"才生效，否则退回自由索敌。
    /// </summary>
    public static class TauntSystem
    {
        /// <summary>
        /// 单位是否处于嘲讽状态（存活且携带带 IsTaunt 标记的 Buff）
        /// </summary>
        public static bool IsTaunting(MapUnit unit)
        {
            if (unit == null || unit.Character == null) return false;
            if (unit.CurrentState == UnitState.Dead) return false;
            return unit.ActiveBuffs.Exists(b => b != null && b.IsTaunt);
        }

        /// <summary>
        /// 技能是否为"单体进攻型"（进攻 + 所有阶段都是单体）。
        /// 这是嘲讽约束的适用对象；AoE / Global 技能豁免。
        /// </summary>
        public static bool IsSingleTargetOffensiveSkill(SkillDataSO skill)
        {
            if (skill == null || !skill.IsOffensiveSkill()) return false;

            if (skill.Phases == null || skill.Phases.Count == 0)
            {
                return true;
            }

            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase == null) continue;
                if (phase.AoEPattern != AoEPatternType.SingleTarget)
                {
                    return false;
                }
            }

            return true;
        }

        /// <summary>
        /// 获取攻击者全部"存活且带嘲讽"的敌方单位
        /// </summary>
        public static List<MapUnit> GetTauntingEnemies(MapUnit attacker)
        {
            List<MapUnit> result = new List<MapUnit>();
            if (attacker == null) return result;

            foreach (MapUnit unit in UnitManager.Instance.GetAllAliveUnit())
            {
                if (unit == null || unit == attacker) continue;
                if (unit.Faction == attacker.Faction) continue;
                if (!IsTaunting(unit)) continue;

                result.Add(unit);
            }

            return result;
        }

        /// <summary>
        /// AI 侧强制目标：返回攻击者"移动 + 单体进攻可达"的嘲讽目标（取第一个），否则返回 null。
        /// 用于 GenerateAttackTasks —— 普攻永远单体，嘲讽者可达时其余玩家的攻击任务全部作废。
        /// </summary>
        public static MapUnit GetForcedTarget(MapUnit attacker, AITaskContext ctx)
        {
            List<MapUnit> taunters = GetTauntingEnemies(attacker);
            if (taunters.Count == 0) return null;

            foreach (MapUnit taunter in taunters)
            {
                if (CanReachWithSingleTargetOffense(attacker, taunter, ctx))
                {
                    return taunter;
                }
            }

            return null;
        }

        /// <summary>
        /// 按技能判定强制目标：仅"单体进攻型"技能返回"该技能移动后可达"的嘲讽目标；
        /// AoE / Global / 辅助技能返回 null（不受嘲讽约束）。
        /// 用于 GenerateSkillTasks —— 只有该技能的目标池需要收窄到嘲讽者，其余技能保留完整目标池。
        /// </summary>
        public static MapUnit GetForcedTargetForSkill(MapUnit attacker, SkillDataSO skill, AITaskContext ctx)
        {
            if (attacker == null || skill == null || ctx == null) return null;
            if (!IsSingleTargetOffensiveSkill(skill)) return null;

            foreach (MapUnit taunter in GetTauntingEnemies(attacker))
            {
                if (IsReachableBySkill(attacker, taunter, skill, ctx))
                {
                    return taunter;
                }
            }

            return null;
        }

        /// <summary>
        /// 玩家侧：在给定的可选格子里是否存在嘲讽目标。
        /// 返回嘲讽目标列表（调用方据此收窄 _validTargetTiles）。
        /// </summary>
        public static List<MapUnit> GetTauntingTargetsInTiles(MapUnit attacker, IEnumerable<Vector3Int> candidateTiles)
        {
            List<MapUnit> result = new List<MapUnit>();
            if (attacker == null || candidateTiles == null) return result;

            HashSet<Vector3Int> tileSet = new HashSet<Vector3Int>(candidateTiles);
            List<MapUnit> taunters = GetTauntingEnemies(attacker);

            foreach (MapUnit taunter in taunters)
            {
                if (tileSet.Contains(taunter.gridPosition))
                {
                    result.Add(taunter);
                }
            }

            return result;
        }

        /// <summary>
        /// 攻击者是否能用"单体进攻手段"（普攻 + 单体进攻技能）在移动后攻击到目标
        /// </summary>
        private static bool CanReachWithSingleTargetOffense(MapUnit attacker, MapUnit target, AITaskContext ctx)
        {
            List<SkillDataSO> stSkills = GetSingleTargetOffensiveSkills(attacker, ctx);
            if (stSkills.Count == 0) return false;

            foreach (SkillDataSO skill in stSkills)
            {
                if (IsReachableBySkill(attacker, target, skill, ctx))
                {
                    return true;
                }
            }

            return false;
        }

        /// <summary>
        /// 攻击者能否用【指定技能】在移动后攻击到目标（可达格 + CanCastTo）
        /// </summary>
        private static bool IsReachableBySkill(MapUnit attacker, MapUnit target, SkillDataSO skill, AITaskContext ctx)
        {
            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile != attacker.gridPosition)
                {
                    MapUnit occupying = UnitManager.Instance.GetUnitAt(tile);
                    if (occupying != null) continue;
                }

                if (AttackRangeSystem.CanCastTo(tile, target.gridPosition, skill))
                {
                    return true;
                }
            }

            return false;
        }

        /// <summary>
        /// 收集攻击者的单体进攻手段：普攻 + 所有单体进攻型主动技能
        /// </summary>
        private static List<SkillDataSO> GetSingleTargetOffensiveSkills(MapUnit attacker, AITaskContext ctx)
        {
            List<SkillDataSO> result = new List<SkillDataSO>();
            if (attacker == null) return result;

            if (attacker.NormalAttackSkill != null)
            {
                result.Add(attacker.NormalAttackSkill);
            }

            if (ctx?.OffensiveSkills != null)
            {
                foreach (SkillDataSO skill in ctx.OffensiveSkills)
                {
                    if (IsSingleTargetOffensiveSkill(skill))
                    {
                        result.Add(skill);
                    }
                }
            }

            return result;
        }
    }
}
