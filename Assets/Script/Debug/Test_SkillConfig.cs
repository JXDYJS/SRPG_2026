using System;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.Buff;
using GamePlay.Skill;

namespace DebugSystem
{
    /// <summary>
    /// Validates every SkillDataSO asset under Resources: phase/effect well-formedness,
    /// range/cost sanity, buff IDs resolvable, script-mode function names present.
    /// Run "runAllTests" in the debug console during play mode. Data-driven skills
    /// fail mostly in data, so this suite is the first line of defense.
    /// </summary>
    public static class Test_SkillConfig
    {
        private static int _pass;
        private static int _fail;
        private static int _skip;
        private static readonly List<string> _failures = new List<string>();

        public static int PassCount => _pass;
        public static int FailCount => _fail;
        public static int SkipCount => _skip;

        public static void RunAll()
        {
            _pass = _fail = _skip = 0;
            _failures.Clear();

            SkillDataSO[] skills = Resources.LoadAll<SkillDataSO>("");
            Check("枚举到技能配置", skills != null && skills.Length > 0, $"实际 {skills?.Length ?? 0} 个");
            if (skills == null)
            {
                PrintSummary();
                return;
            }

            // Buff resolution may go through Lua; skip resolution when the env is down.
            bool luaReady = Lua.LuaManager.Instance?.LuaEnv != null;
            if (!luaReady)
            {
                Debug.LogWarning("[TestSkillConfig] LuaEnv 未初始化，BuffID 解析检查将跳过");
            }

            foreach (SkillDataSO skill in skills)
            {
                ValidateSkill(skill, luaReady);
            }

            PrintSummary();
        }

        private static void PrintSummary()
        {
            if (_fail == 0)
            {
                Debug.Log($"[TestSkillConfig] 全部通过: {_pass} 项 (跳过 {_skip})");
            }
            else
            {
                Debug.LogError($"[TestSkillConfig] 失败 {_fail} 项 / 通过 {_pass} 项 (跳过 {_skip})");
                foreach (string f in _failures)
                {
                    Debug.LogError($"[TestSkillConfig] FAIL: {f}");
                }
            }
        }

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

        private static void ValidateSkill(SkillDataSO skill, bool luaReady)
        {
            if (skill == null)
            {
                Check("技能资源为空", false, "LoadAll 返回 null 元素");
                return;
            }
            string id = skill.SkillName;

            bool hasPhases = skill.Phases != null && skill.Phases.Count > 0;
            Check($"阶段非空 {id}", hasPhases, $"Phases={skill.Phases?.Count ?? 0}");
            if (!hasPhases)
            {
                return;
            }

            // Self-cast skills (TargetType.Self) legitimately leave range fields at 0:
            // AttackRangeSystem bypasses range checks when casting on self.
            bool isSelfCast = skill.TargetType == TargetType.Self;
            if (!isSelfCast)
            {
                Check($"射程合法 {id}",
                    skill.CastMaxRange >= 1 && skill.CastMinRange >= 0 && skill.CastMinRange <= skill.CastMaxRange,
                    $"min={skill.CastMinRange} max={skill.CastMaxRange}");
                Check($"垂直射程 {id}", skill.CastVerticalRange >= 1, $"={skill.CastVerticalRange}");
            }
            Check($"消耗非负 {id}", skill.Cost >= 0, $"={skill.Cost}");
            Check($"AI 优先级 {id}", skill.AIPriority >= 0f && skill.AIPriority <= 5f, $"={skill.AIPriority}");

            if (skill.CastRangeMode == SkillPhaseCastRangeMode.Script)
            {
                Check($"脚本射程函数 {id}", !string.IsNullOrEmpty(skill.CastRangeFuncName),
                    "CastRangeMode=Script 但函数名为空");
            }
            if (skill.isCustomSkill)
            {
                Check($"自定义行为 {id}", skill.CustomBehavior != null, "isCustomSkill 但 CustomBehavior 为空");
            }

            for (int p = 0; p < skill.Phases.Count; p++)
            {
                SkillPhase phase = skill.Phases[p];
                string label = $"{id}#{p}";

                bool hasEffects = phase.Effects != null && phase.Effects.Count > 0;
                Check($"阶段效果 {label}", hasEffects, $"Effects={phase.Effects?.Count ?? 0}");
                if (!hasEffects)
                {
                    continue;
                }

                Check($"AoE 半径 {label}", phase.AoERadius >= 0, $"={phase.AoERadius}");
                Check($"AoE 垂直 {label}", phase.AoEVerticalRange >= 0, $"={phase.AoEVerticalRange}");

                if (phase.ExecuteMode == SkillPhaseExecuteMode.Script)
                {
                    Check($"脚本执行函数 {label}", !string.IsNullOrEmpty(phase.ExecuteFuncName),
                        "ExecuteMode=Script 但函数名为空");
                }

                for (int e = 0; e < phase.Effects.Count; e++)
                {
                    SkillEffect effect = phase.Effects[e];
                    string elabel = $"{label} 效果#{e}";

                    switch (effect.EffectType)
                    {
                        case EffectType.AddBuff:
                        case EffectType.RemoveBuff:
                            Check($"BuffID 非空 {elabel}", !string.IsNullOrEmpty(effect.BuffID),
                                "AddBuff/RemoveBuff 必须填 BuffID");
                            if (!string.IsNullOrEmpty(effect.BuffID) && luaReady)
                            {
                                BuffBase buff = BuffManager.CreateBuffFromID(effect.BuffID, 1);
                                Check($"BuffID 可解析 {elabel} '{effect.BuffID}'", buff != null,
                                    "CreateBuffFromID 返回 null");
                            }
                            else if (!string.IsNullOrEmpty(effect.BuffID))
                            {
                                _skip++;
                            }
                            break;

                        case EffectType.Damage:
                        case EffectType.Heal:
                            Check($"倍率非负 {elabel}", effect.Multiplier >= 0f, $"Multiplier={effect.Multiplier}");
                            break;
                    }
                }
            }
        }
    }
}
