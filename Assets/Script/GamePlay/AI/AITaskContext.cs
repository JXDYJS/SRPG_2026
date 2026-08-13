using System.Collections.Generic;
using UnityEngine;
using GamePlay.Units;
using GamePlay.Grid;
using GamePlay.Skill;
using Managers;
using Grid;
using Global;

namespace GamePlay.AI
{
    /// <summary>Precomputed data reused within a single AI turn (reachability, threats, team HP).</summary>
    public class AITaskContext
    {
        public readonly MapUnit Unit;
        public readonly HashSet<Vector3Int> ReachableTiles;
        public readonly InfluenceMapLayer ThreatMap;
        public readonly int MoveRange;
        public readonly UnitMoveStats MoveStats;

        // Team HP pools (denominator of the unified value currency)
        public readonly float EnemyTeamHP;
        public readonly float AllyTeamHP;
        public readonly float AvgUnitHP;

        public readonly List<MapUnit> Enemies;
        public readonly List<MapUnit> Allies;

        public readonly List<SkillDataSO> OffensiveSkills;
        public readonly int MaxOffensiveCastRange;
        public readonly int MaxOffensiveSquareRange;
        public readonly bool HasGlobalOffensiveSkill;

        private readonly Dictionary<Vector3Int, float> _opportunityCache = new Dictionary<Vector3Int, float>();

        public AITaskContext(MapUnit unit)
        {
            Unit = unit;
            MoveRange = (int)unit.Character.statSystem.moveRange.getValue();
            MoveStats = unit.moveStats;
            ReachableTiles = AStar.GetReachableTiles(
                unit.gridPosition, MoveRange,
                MapManager.Instance.logicalGrid, unit.moveStats);
            ThreatMap = TacticalMapManager.Instance.ThreatMap;

            Enemies = new List<MapUnit>();
            Allies = new List<MapUnit>();
            List<MapUnit> allAlive = UnitManager.Instance.GetAllAliveUnit();
            foreach (MapUnit other in allAlive)
            {
                if (other == null || !other.IsAlive) continue;
                if (other == unit) continue;
                if (other.Faction == unit.Faction) Allies.Add(other);
                else Enemies.Add(other);
            }

            EnemyTeamHP = ComputeTeamHP(Enemies);
            AllyTeamHP = ComputeTeamHP(Allies);
            AvgUnitHP = ComputeAvgHP(allAlive);

            OffensiveSkills = new List<SkillDataSO>();
            MaxOffensiveCastRange = 0;
            MaxOffensiveSquareRange = 0;
            HasGlobalOffensiveSkill = false;

            List<SkillDataSO> activeSkills = unit.GetActiveSkills();
            if (activeSkills != null)
            {
                foreach (SkillDataSO skill in activeSkills)
                {
                    if (skill == null || !skill.IsOffensiveSkill()) continue;
                    OffensiveSkills.Add(skill);
                    if (skill.CastPattern == CastPatternType.Global)
                    {
                        HasGlobalOffensiveSkill = true;
                    }
                    else if (skill.CastPattern == CastPatternType.Square)
                    {
                        MaxOffensiveSquareRange = Mathf.Max(MaxOffensiveSquareRange, skill.CastMaxRange);
                    }
                    MaxOffensiveCastRange = Mathf.Max(MaxOffensiveCastRange, skill.CastMaxRange);
                }
            }
            OffensiveSkills.Sort((a, b) => b.CastMaxRange.CompareTo(a.CastMaxRange));
        }

        /// <summary>Max direct damage value castable from a position next turn (cached per position).</summary>
        public float GetOpportunityAt(Vector3Int pos)
        {
            if (_opportunityCache.TryGetValue(pos, out float cached))
            {
                return cached;
            }

            float best = 0f;
            foreach (MapUnit enemy in Enemies)
            {
                foreach (SkillDataSO skill in OffensiveSkills)
                {
                    if (skill == null) continue;
                    if (!CanCastFrom(pos, enemy, skill)) continue;
                    float dmg = BattleValueEvaluator.EstimateDamageValue(Unit, skill, enemy);
                    float value = dmg / EnemyTeamHP;
                    if (value > best) best = value;
                }
            }

            _opportunityCache[pos] = best;
            return best;
        }

        private bool CanCastFrom(Vector3Int pos, MapUnit target, SkillDataSO skill)
        {
            // Early reject when both Manhattan and Chebyshev distances exceed range
            int manhattan = Mathf.Abs(pos.x - target.gridPosition.x)
                          + Mathf.Abs(pos.z - target.gridPosition.z);
            int chebyshev = Mathf.Max(Mathf.Abs(pos.x - target.gridPosition.x),
                                      Mathf.Abs(pos.z - target.gridPosition.z));
            if (manhattan > skill.CastMaxRange && chebyshev > skill.CastMaxRange)
            {
                return false;
            }
            return AttackRangeSystem.CanCastTo(pos, target.gridPosition, skill);
        }

        private static float ComputeTeamHP(List<MapUnit> units)
        {
            float sum = 0f;
            foreach (MapUnit u in units)
            {
                if (u == null || u.Character == null) continue;
                sum += u.Character.statSystem.maxHP.getValue();
            }
            return Mathf.Max(1f, sum);
        }

        private static float ComputeAvgHP(List<MapUnit> units)
        {
            if (units == null || units.Count == 0) return 1f;
            float sum = 0f;
            int count = 0;
            foreach (MapUnit u in units)
            {
                if (u == null || u.Character == null) continue;
                sum += u.Character.statSystem.maxHP.getValue();
                count++;
            }
            return count > 0 ? sum / count : 1f;
        }
    }
}
