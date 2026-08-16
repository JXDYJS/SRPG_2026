using System;
using System.Collections.Generic;
using UnityEngine;
using Status.state;

namespace DebugSystem
{
    /// <summary>
    /// Stat arithmetic tests: base value dirtying, zone priority order, the legacy
    /// modifier list applying after zones, and cache/event behavior. Run
    /// "runAllTests" in the debug console during play mode.
    /// </summary>
    public static class Test_Stat
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

            TestBaseValueDirtying();
            TestFlatAndPercent();
            TestZonePriorityOrder();
            TestLegacyAppliesLast();
            TestCacheAndEvents();
            TestRemoveModifier();

            if (_fail == 0)
            {
                Debug.Log($"[TestStat] 全部通过: {_pass} 项 (跳过 {_skip})");
            }
            else
            {
                Debug.LogError($"[TestStat] 失败 {_fail} 项 / 通过 {_pass} 项 (跳过 {_skip})");
                foreach (string f in _failures)
                {
                    Debug.LogError($"[TestStat] FAIL: {f}");
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

        private static bool NearlyEqual(float a, float b)
        {
            return Mathf.Abs(a - b) < 0.001f;
        }

        // ==================== test groups ====================

        private static void TestBaseValueDirtying()
        {
            Stat s = new Stat(10f);
            Check("初始值", NearlyEqual(s.getValue(), 10f), $"实际 {s.getValue()}");

            s.SetBaseValue(25f);
            Check("SetBaseValue 后重算", NearlyEqual(s.getValue(), 25f), $"实际 {s.getValue()}");
        }

        private static void TestFlatAndPercent()
        {
            Stat s = new Stat(10f);
            s.addModifier(new StatModifier(10f, StatModType.Flat));
            s.addModifier(new StatModifier(0.5f, StatModType.Percent));
            // (10 + 10) * 1.5 = 30
            Check("平值+百分比", NearlyEqual(s.getValue(), 30f), $"实际 {s.getValue()}");
        }

        private static void TestZonePriorityOrder()
        {
            Stat s = new Stat(10f);
            s.addModifier(new StatModifier(100f, StatModType.Flat), "late");
            s.SetZonePriority("late", 100);
            s.addModifier(new StatModifier(1f, StatModType.Percent), "early");
            s.SetZonePriority("early", -100);
            // early (percent x2) then late (flat +100): 10 * 2 + 100 = 120
            Check("先百分比后平值", NearlyEqual(s.getValue(), 120f), $"实际 {s.getValue()}");

            s.SetZonePriority("late", -100);
            s.SetZonePriority("early", 100);
            // late (flat +100) then early (percent x2): (10 + 100) * 2 = 220
            Check("优先级反转生效", NearlyEqual(s.getValue(), 220f), $"实际 {s.getValue()}");
        }

        private static void TestLegacyAppliesLast()
        {
            Stat s = new Stat(10f);
            s.addModifier(new StatModifier(0.5f, StatModType.Percent), "z");
            s.addModifier(new StatModifier(5f, StatModType.Flat)); // legacy list
            // legacy applies after zones: 10 * 1.5 + 5 = 20 (not (10+5)*1.5 = 22.5)
            Check("legacy 最后生效", NearlyEqual(s.getValue(), 20f), $"实际 {s.getValue()}");
        }

        private static void TestCacheAndEvents()
        {
            Stat s = new Stat(10f);
            int events = 0;
            s.OnValueChanged += () => events++;

            s.getValue(); // first recalc fires one event
            Check("首次计算触发事件", events == 1, $"事件 {events}");

            s.getValue(); // cached, no recalculation
            Check("缓存命中不重算", events == 1, $"事件 {events}");

            s.addModifier(new StatModifier(5f, StatModType.Flat));
            Check("加修饰器后重算", NearlyEqual(s.getValue(), 15f) && events == 2,
                $"值 {s.getValue()} 事件 {events}");

            s.SetBaseValue(30f);
            Check("SetBaseValue 立即触发事件", events == 3, $"事件 {events}");
            Check("SetBaseValue 后重算", NearlyEqual(s.getValue(), 35f) && events == 4,
                $"值 {s.getValue()} 事件 {events}");

            s.SetBaseValue(40f);
            Check("SetBaseValue 再次立即触发事件", events == 5, $"事件 {events}");
            Check("SetBaseValue 后重算", NearlyEqual(s.getValue(), 45f) && events == 6,
                $"值 {s.getValue()} 事件 {events}");
        }

        private static void TestRemoveModifier()
        {
            Stat s = new Stat(10f);
            StatModifier mod = new StatModifier(5f, StatModType.Flat);
            s.addModifier(mod);
            Check("添加后", NearlyEqual(s.getValue(), 15f), $"实际 {s.getValue()}");

            s.removeModifier(mod);
            Check("移除后", NearlyEqual(s.getValue(), 10f), $"实际 {s.getValue()}");
        }
    }
}
