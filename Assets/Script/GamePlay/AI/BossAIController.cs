using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Buff;
using GamePlay.Grid;
using GamePlay.Skill;
using GamePlay.Units;

namespace GamePlay.AI
{
    /// <summary>
    /// Scripted boss AI: a prioritized rule list checked before the scoring pipeline.
    /// Attach to a boss MapUnit prefab; AITaskSystem detects it via GetComponent.
    /// The first rule whose condition holds produces a forced AIAction; otherwise the
    /// boss falls back to normal scoring AI. Execution reuses AIPlan/AITaskExecutor.
    /// </summary>
    [RequireComponent(typeof(MapUnit))]
    public class BossAIController : MonoBehaviour
    {
        [Header("Boss 规则列表（按列表顺序评估，第一个命中的规则生效）")]
        public List<BossAIRule> Rules = new List<BossAIRule>();

        private int _turnsElapsed;
        private readonly Dictionary<BossAIRule, int> _ruleCooldowns = new Dictionary<BossAIRule, int>();

        /// <summary>Number of this boss's own turns acted (drives TurnsElapsedAtLeast).</summary>
        public int TurnsElapsed => _turnsElapsed;

        /// <summary>
        /// Called once per boss turn. Returns a forced action when a rule fires,
        /// or null to let the normal AI decide.
        /// </summary>
        public AIAction TryGetScriptedAction(MapUnit unit, AITaskContext ctx)
        {
            if (unit == null || !unit.IsAlive || unit.Character == null)
            {
                return null;
            }

            _turnsElapsed++;
            TickCooldowns();

            if (Rules == null)
            {
                return null;
            }

            foreach (BossAIRule rule in Rules)
            {
                if (rule == null || !rule.Enabled || rule.ForcedSkill == null)
                {
                    continue;
                }
                if (IsOnCooldown(rule))
                {
                    continue;
                }
                if (!EvaluateCondition(unit, ctx, rule))
                {
                    continue;
                }

                AIAction action = BuildAction(unit, ctx, rule);
                if (action == null)
                {
                    continue; // Not castable (no target / out of range / not owned); try next rule
                }

                SetCooldown(rule);
                Debug.Log($"[BossAI] {unit.name} 规则触发: {rule.RuleName} ({rule.ConditionType} → {rule.ActionType})");
                return action;
            }

            return null;
        }

        // ================ Condition evaluation ================

        private bool EvaluateCondition(MapUnit unit, AITaskContext ctx, BossAIRule rule)
        {
            switch (rule.ConditionType)
            {
                case BossAIConditionType.Always:
                    return true;

                case BossAIConditionType.SelfHPRatioBelow:
                    return GetHPPercent(unit) < rule.ConditionParam;

                case BossAIConditionType.SelfHPRatioAbove:
                    return GetHPPercent(unit) > rule.ConditionParam;

                case BossAIConditionType.TurnsElapsedAtLeast:
                    return _turnsElapsed >= (int)rule.ConditionParam;

                case BossAIConditionType.AllyCountAtMost:
                    return CountAlive(ctx.Allies) <= (int)rule.ConditionParam;

                case BossAIConditionType.EnemiesInSkillRangeAtLeast:
                    return CountEnemiesInSkillRange(unit, ctx, rule.ForcedSkill) >= (int)rule.ConditionParam;

                case BossAIConditionType.HasBuff:
                    return !string.IsNullOrEmpty(rule.ConditionStringParam)
                        && BuffManager.FindBuffByID(unit, rule.ConditionStringParam) != null;

                default:
                    return false;
            }
        }

        private static int CountAlive(List<MapUnit> units)
        {
            if (units == null)
            {
                return 0;
            }
            int count = 0;
            foreach (MapUnit u in units)
            {
                if (u != null && u.IsAlive)
                {
                    count++;
                }
            }
            return count;
        }

        /// <summary>Enemies castable from the current tile or any reachable free tile.</summary>
        private static int CountEnemiesInSkillRange(MapUnit unit, AITaskContext ctx, SkillDataSO skill)
        {
            if (unit == null || ctx == null || skill == null)
            {
                return 0;
            }

            int count = 0;
            foreach (MapUnit enemy in ctx.Enemies)
            {
                if (enemy == null || !enemy.IsAlive)
                {
                    continue;
                }
                if (AttackRangeSystem.CanCastTo(unit.gridPosition, enemy.gridPosition, skill))
                {
                    count++;
                    continue;
                }
                foreach (Vector3Int tile in ctx.ReachableTiles)
                {
                    if (tile == unit.gridPosition)
                    {
                        continue;
                    }
                    if (UnitManager.Instance.GetUnitAt(tile) != null)
                    {
                        continue;
                    }
                    if (AttackRangeSystem.CanCastTo(tile, enemy.gridPosition, skill))
                    {
                        count++;
                        break;
                    }
                }
            }
            return count;
        }

        // ================ Action building ================

        private AIAction BuildAction(MapUnit unit, AITaskContext ctx, BossAIRule rule)
        {
            SkillDataSO skill = rule.ForcedSkill;
            if (skill == null)
            {
                return null;
            }

            // Config guard: the forced skill must be in the unit's skill bar.
            if (!unit.GetActiveSkills().Contains(skill))
            {
                Debug.LogWarning($"[BossAI] {unit.name} 规则 {rule.RuleName} 的技能 {skill.SkillName} 不在单位技能栏中");
                return null;
            }

            if (skill.Cost > 0 && !unit.Character.HasEnoughMP(skill.Cost))
            {
                return null;
            }

            if (rule.ActionType == BossAIActionType.CastSkillOnDensestEnemy)
            {
                return BuildDensestAction(unit, ctx, skill);
            }

            MapUnit target = SelectTarget(unit, ctx, rule.ActionType);
            if (target == null)
            {
                return null;
            }

            // Self-cast bypasses range checks (CastMinRange=1 would block adjacent self-cast).
            bool inRange = target == unit
                        || AttackRangeSystem.CanCastTo(unit.gridPosition, target.gridPosition, skill);
            Vector3Int? castPos = null;
            if (!inRange)
            {
                castPos = FindBestCastPosition(unit, ctx, skill, target);
                if (castPos == null)
                {
                    return null; // Cannot reach cast range this turn; rule does not fire
                }
            }

            bool offensive = skill.IsOffensiveSkill();
            bool lethal = offensive && target != unit
                && BattleValueEvaluator.EstimateDamageValue(unit, skill, target)
                   >= target.Character.statSystem.currentHP;

            return new AIAction
            {
                Category = lethal ? AICategory.Execute : offensive ? AICategory.Damage : AICategory.HealBuff,
                Score = 100f, // Sentinel: scripted actions always outrank scored candidates
                Skill = skill,
                TargetUnit = target,
                TargetPos = castPos
            };
        }

        private static MapUnit SelectTarget(MapUnit unit, AITaskContext ctx, BossAIActionType actionType)
        {
            switch (actionType)
            {
                case BossAIActionType.CastSkillOnSelf:
                    return unit;

                case BossAIActionType.CastSkillOnWeakestEnemy:
                    return GetWeakest(ctx.Enemies);

                case BossAIActionType.CastSkillOnClosestEnemy:
                    return GetClosest(unit, ctx.Enemies);

                case BossAIActionType.CastSkillOnRandomEnemy:
                    return GetRandom(ctx.Enemies);

                case BossAIActionType.CastSkillOnWeakestAlly:
                    return GetWeakest(ctx.Allies);

                default:
                    return null;
            }
        }

        /// <summary>Picks the cast position + target enemy whose AoE coverage is the largest.</summary>
        private AIAction BuildDensestAction(MapUnit unit, AITaskContext ctx, SkillDataSO skill)
        {
            List<Vector3Int> candidates = new List<Vector3Int> { unit.gridPosition };
            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile == unit.gridPosition)
                {
                    continue;
                }
                if (UnitManager.Instance.GetUnitAt(tile) == null)
                {
                    candidates.Add(tile);
                }
            }

            Vector3Int? bestPos = null;
            MapUnit bestTarget = null;
            int bestHits = -1;
            float bestThreat = float.MaxValue;

            foreach (Vector3Int pos in candidates)
            {
                foreach (MapUnit enemy in ctx.Enemies)
                {
                    if (enemy == null || !enemy.IsAlive)
                    {
                        continue;
                    }
                    if (!AttackRangeSystem.CanCastTo(pos, enemy.gridPosition, skill))
                    {
                        continue;
                    }

                    int hits = CountAOEHits(unit, ctx, skill, pos, enemy);
                    float threat = ctx.ThreatMap.GetScore(pos);
                    if (hits > bestHits || (hits == bestHits && threat < bestThreat))
                    {
                        bestHits = hits;
                        bestThreat = threat;
                        bestPos = pos;
                        bestTarget = enemy;
                    }
                }
            }

            if (bestPos == null || bestTarget == null || bestHits <= 0)
            {
                return null;
            }

            return new AIAction
            {
                Category = AICategory.Damage,
                Score = 100f, // Sentinel: scripted actions always outrank scored candidates
                Skill = skill,
                TargetUnit = bestTarget,
                TargetPos = bestPos.Value == unit.gridPosition ? (Vector3Int?)null : bestPos
            };
        }

        /// <summary>Number of valid targets covered by the skill's AoE when cast at primaryTarget.</summary>
        private static int CountAOEHits(MapUnit caster, AITaskContext ctx, SkillDataSO skill,
                                        Vector3Int castPos, MapUnit primaryTarget)
        {
            if (skill == null || skill.Phases == null)
            {
                return 0;
            }

            int hits = 0;
            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase == null || phase.Effects == null || phase.Effects.Count == 0)
                {
                    continue;
                }
                List<Vector3Int> aoe = AttackRangeSystem.GetAoERange3D(castPos, primaryTarget.gridPosition, phase);
                foreach (Vector3Int tile in aoe)
                {
                    MapUnit hitUnit = UnitManager.Instance.GetUnitAt(tile);
                    if (hitUnit == null || !hitUnit.IsAlive)
                    {
                        continue;
                    }
                    if (!AttackRangeSystem.IsTargetValidForPhase(hitUnit, phase, caster.Faction, caster))
                    {
                        continue;
                    }
                    hits++;
                }
            }
            return hits;
        }

        /// <summary>Lowest-threat reachable tile from which the skill can hit the target; null if none.</summary>
        private static Vector3Int? FindBestCastPosition(MapUnit unit, AITaskContext ctx,
                                                        SkillDataSO skill, MapUnit target)
        {
            Vector3Int? bestPos = null;
            float bestThreat = float.MaxValue;

            foreach (Vector3Int tile in ctx.ReachableTiles)
            {
                if (tile == unit.gridPosition)
                {
                    continue;
                }
                if (UnitManager.Instance.GetUnitAt(tile) != null)
                {
                    continue;
                }
                if (!AttackRangeSystem.IsWithinCastDistance(tile, target.gridPosition, skill))
                {
                    continue;
                }
                if (!AttackRangeSystem.CanCastTo(tile, target.gridPosition, skill))
                {
                    continue;
                }

                float threat = ctx.ThreatMap.GetScore(tile);
                if (threat < bestThreat)
                {
                    bestThreat = threat;
                    bestPos = tile;
                }
            }

            return bestPos;
        }

        // ================ Target helpers ================

        private static MapUnit GetWeakest(List<MapUnit> units)
        {
            MapUnit best = null;
            float lowestRatio = float.MaxValue;
            foreach (MapUnit u in units)
            {
                if (u == null || !u.IsAlive || u.Character == null)
                {
                    continue;
                }
                float ratio = (float)u.Character.statSystem.currentHP / u.Character.statSystem.maxHP.getValue();
                if (ratio < lowestRatio)
                {
                    lowestRatio = ratio;
                    best = u;
                }
            }
            return best;
        }

        private static MapUnit GetClosest(MapUnit unit, List<MapUnit> units)
        {
            MapUnit best = null;
            int bestDist = int.MaxValue;
            foreach (MapUnit u in units)
            {
                if (u == null || !u.IsAlive)
                {
                    continue;
                }
                int dist = Mathf.Abs(unit.gridPosition.x - u.gridPosition.x)
                         + Mathf.Abs(unit.gridPosition.z - u.gridPosition.z);
                if (dist < bestDist)
                {
                    bestDist = dist;
                    best = u;
                }
            }
            return best;
        }

        private static MapUnit GetRandom(List<MapUnit> units)
        {
            if (units == null || units.Count == 0)
            {
                return null;
            }
            return units[Random.Range(0, units.Count)];
        }

        private static float GetHPPercent(MapUnit unit)
        {
            if (unit == null || unit.Character == null)
            {
                return 1f;
            }
            return (float)unit.Character.statSystem.currentHP
                 / unit.Character.statSystem.maxHP.getValue();
        }

        // ================ Cooldown state ================

        private bool IsOnCooldown(BossAIRule rule)
        {
            return _ruleCooldowns.TryGetValue(rule, out int cd) && cd > 0;
        }

        private void SetCooldown(BossAIRule rule)
        {
            _ruleCooldowns[rule] = rule.CooldownTurns;
        }

        private void TickCooldowns()
        {
            List<BossAIRule> keys = new List<BossAIRule>(_ruleCooldowns.Keys);
            foreach (BossAIRule rule in keys)
            {
                _ruleCooldowns[rule] = Mathf.Max(0, _ruleCooldowns[rule] - 1);
            }
        }
    }
}
