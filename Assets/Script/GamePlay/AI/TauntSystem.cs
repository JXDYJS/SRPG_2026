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
    /// Taunt system: narrows target selection to taunting enemies via IsTaunt buffs.
    /// </summary>
    public static class TauntSystem
    {
        /// <summary>True if the unit is alive and has a taunt buff.</summary>
        public static bool IsTaunting(MapUnit unit)
        {
            if (unit == null || unit.Character == null) return false;
            if (unit.CurrentState == UnitState.Dead) return false;
            return unit.ActiveBuffs.Exists(b => b != null && b.IsTaunt);
        }

        /// <summary>True if the skill is single-target offensive (AoE/Global exempt).</summary>
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

        /// <summary>Returns all alive enemy units taunting the attacker.</summary>
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

        /// <summary>Returns the first taunting enemy reachable after moving, else null.</summary>
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

        /// <summary>For single-target offensive skills only, returns the taunting target in range; else null.</summary>
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

        /// <summary>Returns taunting enemies occupying any candidate tile.</summary>
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
