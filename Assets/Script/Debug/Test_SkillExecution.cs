using System;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using Global;
using Command;
using Character.data;
using Character.instance;
using Core.Data;
using Managers;
using GamePlay.Skill;
using GamePlay.Units;
using Status.state;

namespace DebugSystem
{
    /// <summary>
    /// Smoke test for the skill execution pipeline. Constructs controlled dummy units
    /// (zero defense, no buffs/relics, ATK=10), calls SkillExecutor.ExecuteSequence
    /// directly — the synchronous logic layer, no visuals — and verifies HP changes
    /// against the formula (ATK + FlatBonus) * Multiplier + Constant.
    ///
    /// Skips LineOfSight/SkyDrop trajectories (they read the real MapManager grid),
    /// skills with MoveCaster effects (they mutate the unit registry), and
    /// script-mode skills while the Lua env is not initialized. Test units are
    /// injected into UnitManager's registries directly (RegisterUnit would fire
    /// real MapObject enter/exit events) at positions with clearance from real units,
    /// and everything is restored afterwards.
    /// </summary>
    public static class Test_SkillExecution
    {
        private static int _pass;
        private static int _fail;
        private static int _skip;
        private static readonly List<string> _failures = new List<string>();

        public static int PassCount => _pass;
        public static int FailCount => _fail;
        public static int SkipCount => _skip;

        private const int ATK = 10;
        private const int MaxHP = 200;
        private const int MaxMP = 50;
        private const int Clearance = 5;

        private static readonly PropertyInfo CharacterProp =
            typeof(MapUnit).GetProperty("Character", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance);
        private static readonly FieldInfo UnitPositionsField =
            typeof(UnitManager).GetField("unitPositions", BindingFlags.NonPublic | BindingFlags.Instance);
        private static readonly FieldInfo AllUnitsField =
            typeof(UnitManager).GetField("allUnits", BindingFlags.NonPublic | BindingFlags.Instance);

        private static MapUnit _caster;
        private static MapUnit _enemy;
        private static MapUnit _ally;

        private static bool _savedOneShotKill;
        private static bool _savedInvincible;

        public static void RunAll()
        {
            _pass = _fail = _skip = 0;
            _failures.Clear();

            EnsureManagers();
            SnapshotConfig();
            try
            {
                CreateDummies();
                bool luaReady = Lua.LuaManager.Instance?.LuaEnv != null;
                if (!luaReady)
                {
                    Debug.LogWarning("[TestSkillExecution] LuaEnv 未初始化，Script 模式技能将跳过");
                }

                SkillDataSO[] skills = Resources.LoadAll<SkillDataSO>("");
                Check("枚举到技能配置", skills != null && skills.Length > 0, $"实际 {skills?.Length ?? 0} 个");
                if (skills != null)
                {
                    foreach (SkillDataSO skill in skills)
                    {
                        RunSkillCase(skill, luaReady);
                    }
                }
            }
            finally
            {
                RestoreConfig();
                DestroyDummies();
            }

            if (_fail == 0)
            {
                Debug.Log($"[TestSkillExecution] 全部通过: {_pass} 项 (跳过 {_skip})");
            }
            else
            {
                Debug.LogError($"[TestSkillExecution] 失败 {_fail} 项 / 通过 {_pass} 项 (跳过 {_skip})");
                foreach (string f in _failures)
                {
                    Debug.LogError($"[TestSkillExecution] FAIL: {f}");
                }
            }
        }

        // ==================== helpers ====================

        private static void Check(string name, bool ok, string detail = "")
        {
            if (ok)
            {
                _pass++;
                return;
            }
            _fail++;
            _failures.Add($"{name}: {detail}");
        }

        private static void EnsureManagers()
        {
            if (UndoSystem.Instance == null) new GameObject("Test_UndoSystem").AddComponent<UndoSystem>();
            if (UnitManager.Instance == null) new GameObject("Test_UnitManager").AddComponent<UnitManager>();
        }

        private static void SnapshotConfig()
        {
            _savedOneShotKill = Data.CommandConfig.playerOneShotKill;
            _savedInvincible = Data.CommandConfig.playerInvincible;
            // Determinism: damage formula must not be warped by debug toggles.
            Data.CommandConfig.playerOneShotKill = false;
            Data.CommandConfig.playerInvincible = false;
        }

        private static void RestoreConfig()
        {
            Data.CommandConfig.playerOneShotKill = _savedOneShotKill;
            Data.CommandConfig.playerInvincible = _savedInvincible;
        }

        private static Dictionary<Vector3Int, MapUnit> Positions()
        {
            return (Dictionary<Vector3Int, MapUnit>)UnitPositionsField.GetValue(UnitManager.Instance);
        }

        private static List<MapUnit> AllUnits()
        {
            return (List<MapUnit>)AllUnitsField.GetValue(UnitManager.Instance);
        }

        /// <summary>Picks a spot with clearance from every registered unit (test vs real).</summary>
        private static Vector3Int PickFreePosition()
        {
            Dictionary<Vector3Int, MapUnit> positions = Positions();
            for (int x = 0; x < 24; x++)
            {
                for (int z = 0; z < 24; z++)
                {
                    Vector3Int pos = new Vector3Int(x, 0, z);
                    bool tooClose = false;
                    foreach (Vector3Int occ in positions.Keys)
                    {
                        if (Mathf.Abs(occ.x - pos.x) + Mathf.Abs(occ.z - pos.z) < Clearance)
                        {
                            tooClose = true;
                            break;
                        }
                    }
                    if (!tooClose)
                    {
                        return pos;
                    }
                }
            }
            return new Vector3Int(30, 0, 30); // fallback; a 24x24 map is always free somewhere
        }

        private static MapUnit CreateDummy(string name, FactionType faction)
        {
            var go = new GameObject($"SkillTest_{name}");
            MapUnit unit = go.AddComponent<MapUnit>();
            CharacterData cd = CharacterData.LoadByID("1");
            if (cd == null)
            {
                Check($"角色数据 {name}", false, "CharacterData '1' 不存在");
                return unit;
            }

            var ci = new CharacterInstance(cd);
            ci.statSystem = new StatSystem(MaxHP, ATK, 0, 0, 5, 3, MaxMP);
            ci.statSystem.currentHP = MaxHP;
            ci.statSystem.currentMP = MaxMP;
            CharacterProp.SetValue(unit, ci);
            unit.Faction = faction;
            unit.gridPosition = PickFreePosition();

            // Inject directly: RegisterUnit -> UpdateUnitPosition would fire real
            // MapObject enter/exit events and log against the real map.
            Positions()[unit.gridPosition] = unit;
            AllUnits().Add(unit);
            return unit;
        }

        private static void CreateDummies()
        {
            _caster = CreateDummy("Caster", FactionType.Player);
            _enemy = CreateDummy("Enemy", FactionType.Enemy);
            _ally = CreateDummy("Ally", FactionType.Player);
        }

        private static void DestroyDummies()
        {
            if (UnitManager.Instance == null)
            {
                return;
            }
            Dictionary<Vector3Int, MapUnit> positions = Positions();
            List<MapUnit> allUnits = AllUnits();
            foreach (MapUnit unit in new[] { _caster, _enemy, _ally })
            {
                if (unit == null)
                {
                    continue;
                }
                if (positions.TryGetValue(unit.gridPosition, out MapUnit occupant) && occupant == unit)
                {
                    positions.Remove(unit.gridPosition);
                }
                allUnits.Remove(unit);
                UnityEngine.Object.Destroy(unit.gameObject);
            }
        }

        private static void ResetHp()
        {
            foreach (MapUnit unit in new[] { _caster, _enemy, _ally })
            {
                if (unit?.Character == null)
                {
                    continue;
                }
                unit.Character.statSystem.currentHP = MaxHP;
                unit.Character.statSystem.currentMP = MaxMP;
            }
        }

        private static int GetHp(MapUnit unit)
        {
            return unit.Character.statSystem.currentHP;
        }

        private static bool TargetsEnemy(SkillDataSO skill)
        {
            switch (skill.TargetType)
            {
                case TargetType.Enemy:
                case TargetType.Player:
                case TargetType.ExceptTeammates:
                case TargetType.Position:
                case TargetType.AnyUnit:
                    return true;
                default:
                    return false;
            }
        }

        private static bool HasMoveCaster(SkillDataSO skill)
        {
            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.Effects == null)
                {
                    continue;
                }
                foreach (SkillEffect effect in phase.Effects)
                {
                    if (effect.EffectType == EffectType.MoveCaster)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        private static bool HasScriptPhase(SkillDataSO skill)
        {
            foreach (SkillPhase phase in skill.Phases)
            {
                if (phase.ExecuteMode == SkillPhaseExecuteMode.Script && !string.IsNullOrEmpty(phase.ExecuteFuncName))
                {
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// Expected HP after the phase, mirroring SkillExecutor's effect order with
        /// zero defense/resistance: damage subtracts, heal adds capped at MaxHP.
        /// </summary>
        private static int SimulateTargetHp(int hpBefore, SkillPhase phase)
        {
            int hp = hpBefore;
            foreach (SkillEffect effect in phase.Effects)
            {
                if (effect.EffectType == EffectType.Damage)
                {
                    int dmg = effect.CalculateValue(ATK);
                    hp = Mathf.Max(0, hp - dmg);
                }
                else if (effect.EffectType == EffectType.Heal)
                {
                    int heal = effect.CalculateValue(ATK);
                    hp = Mathf.Min(MaxHP, hp + heal);
                }
            }
            return hp;
        }

        // ==================== per-skill case ====================

        private static void RunSkillCase(SkillDataSO skill, bool luaReady)
        {
            if (skill == null || skill.Phases == null || skill.Phases.Count == 0)
            {
                _skip++;
                return;
            }
            if (skill.Trajectory == TrajectoryType.LineOfSight || skill.Trajectory == TrajectoryType.SkyDrop)
            {
                _skip++;
                return;
            }
            if (HasMoveCaster(skill))
            {
                _skip++;
                return;
            }
            if (HasScriptPhase(skill) && !luaReady)
            {
                _skip++;
                return;
            }

            ResetHp();
            Vector3Int castPos = TargetsEnemy(skill) ? _enemy.gridPosition : _ally.gridPosition;
            int hpBeforeCaster = GetHp(_caster);
            int hpBeforeEnemy = GetHp(_enemy);
            int hpBeforeAlly = GetHp(_ally);

            SkillTargetContext ctx = new SkillTargetContext(castPos, null);
            SkillSequenceResult result = SkillExecutor.ExecuteSequence(_caster, ctx, skill);

            Check($"执行返回 {skill.SkillName}", result != null, "ExecuteSequence 返回 null");
            if (result == null)
            {
                return;
            }

            Check($"阶段数一致 {skill.SkillName}",
                result.PhaseResults != null && result.PhaseResults.Count == skill.Phases.Count,
                $"期望 {skill.Phases.Count} 实际 {result.PhaseResults?.Count ?? 0}");
            if (result.PhaseResults == null)
            {
                return;
            }

            for (int p = 0; p < result.PhaseResults.Count; p++)
            {
                PhaseResult phaseResult = result.PhaseResults[p];
                if (phaseResult.TargetResults == null)
                {
                    continue;
                }

                foreach (TargetResult tr in phaseResult.TargetResults)
                {
                    MapUnit target = tr.Target;
                    if (target == null || target.Character == null)
                    {
                        continue;
                    }

                    int hpBefore = target == _caster ? hpBeforeCaster
                        : target == _enemy ? hpBeforeEnemy : hpBeforeAlly;
                    int hpAfter = GetHp(target);
                    int expected = SimulateTargetHp(hpBefore, skill.Phases[p]);
                    Check($"HP 符合预期 {skill.SkillName} 阶段{p} {target.GetUnitName()}",
                        hpAfter == expected, $"期望 {expected} 实际 {hpAfter}");

                    int recordSum = tr.GetTotalValue();
                    Check($"伤害记录一致 {skill.SkillName} 阶段{p} {target.GetUnitName()}",
                        hpBefore - hpAfter == recordSum, $"HP差 {hpBefore - hpAfter} 记录和 {recordSum}");

                    foreach (BuffApplyInfo buffInfo in tr.AppliedBuffs)
                    {
                        Check($"Buff 记录合法 {skill.SkillName} 阶段{p} {buffInfo.BuffID}",
                            !string.IsNullOrEmpty(buffInfo.BuffID) && buffInfo.Stacks != 0,
                            $"BuffID='{buffInfo.BuffID}' Stacks={buffInfo.Stacks}");
                    }
                }
            }
        }
    }
}
