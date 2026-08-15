using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using Character.data;
using Character.instance;
using Command;
using Core.Data;
using GamePlay.Buff;
using GamePlay.Event;
using GamePlay.Relics;
using GamePlay.Units;
using Global;
using Managers;
using Status.damage;
using Status.state;
using UnityEngine;

namespace DebugSystem
{
    /// <summary>
    /// Zero-dependency relic test harness. Run "testRelics" in the debug console
    /// during play mode (or call Test_Relic.RunAll() from code). Prints per-case
    /// PASS/FAIL and a summary. Never touches the real save: the save path is
    /// redirected to a temp file and run state (relics/gold/stock) is restored.
    ///
    /// Note: an asmdef-based Unity Test Runner suite is not possible while the
    /// game code lives in Assembly-CSharp (asmdefs cannot reference predefined
    /// assemblies), so this harness lives in the game assembly itself.
    /// </summary>
    public static class Test_Relic
    {
        private static int _pass;
        private static int _fail;
        private static int _skip;
        private static readonly List<string> _failures = new List<string>();

        private static readonly PropertyInfo CharacterProp =
            typeof(MapUnit).GetProperty("Character", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance);
        private static readonly FieldInfo SavePathField =
            typeof(PersistentData).GetField("SavePath", BindingFlags.NonPublic | BindingFlags.Static);
        private static readonly FieldInfo ItemStockField =
            typeof(RunManager).GetField("_itemStock", BindingFlags.NonPublic | BindingFlags.Instance);

        private static List<RelicBase> _savedRelics;
        private static List<string> _savedPersistentRelics;
        private static int _savedGold;
        private static Dictionary<string, int> _savedStock;
        private static string _origSavePath;
        private static string _testSavePath;

        private static MapUnit _player;
        private static MapUnit _enemy;

        public static void RunAll()
        {
            _pass = _fail = _skip = 0;
            _failures.Clear();

            EnsureManagers();
            SnapshotState();
            try
            {
                _player = CreateUnit("1", FactionType.Player);
                _enemy = CreateUnit("2", FactionType.Enemy);

                bool luaReady = Lua.LuaManager.Instance?.LuaEnv != null;
                bool economyReady = Data.Persistent?.Data != null;
                if (!luaReady) Debug.LogWarning("[TestRelic] LuaEnv 未初始化，Lua 藏品用例将跳过（进入游戏完成启动后重试）");
                if (!economyReady) Debug.LogWarning("[TestRelic] Data.Persistent 未就绪，经济用例将跳过");

                TestResolution(luaReady);
                TestStatPassives();
                TestBattleStartHooks();
                TestDamageHooks(luaReady);
                TestCombatEvents();
                TestTurnHooks(luaReady);
                TestEconomy(economyReady);
                TestIntegration(luaReady);
            }
            finally
            {
                RestoreState();
                if (_player != null) UnityEngine.Object.Destroy(_player.gameObject);
                if (_enemy != null) UnityEngine.Object.Destroy(_enemy.gameObject);
            }

            if (_fail == 0)
            {
                Debug.Log($"[TestRelic] 全部通过: {_pass} 项 (跳过 {_skip})");
            }
            else
            {
                Debug.LogError($"[TestRelic] 失败 {_fail} 项 / 通过 {_pass} 项 (跳过 {_skip})");
                foreach (string f in _failures)
                {
                    Debug.LogError($"[TestRelic] FAIL: {f}");
                }
            }
        }

        // ==================== helpers ====================

        private static void EnsureManagers()
        {
            if (UndoSystem.Instance == null) new GameObject("Test_UndoSystem").AddComponent<UndoSystem>();
            if (UnitManager.Instance == null) new GameObject("Test_UnitManager").AddComponent<UnitManager>();
            if (RunManager.Instance == null) new GameObject("Test_RunManager").AddComponent<RunManager>();
        }

        private static void SnapshotState()
        {
            RunManager rm = RunManager.Instance;
            _savedRelics = rm != null ? new List<RelicBase>(rm.Relics) : new List<RelicBase>();
            _savedPersistentRelics = Data.Persistent?.Data != null ? new List<string>(Data.Persistent.Data.relics) : null;
            _savedGold = rm != null ? rm.Gold : 0;
            var stock = rm != null ? (Dictionary<string, int>)ItemStockField.GetValue(rm) : null;
            _savedStock = stock == null ? new Dictionary<string, int>() : new Dictionary<string, int>(stock);
            _origSavePath = (string)SavePathField.GetValue(null);
            _testSavePath = Path.Combine(Path.GetTempPath(), $"RelicTests_{Guid.NewGuid():N}.json");
            SavePathField.SetValue(null, _testSavePath);
        }

        private static void RestoreState()
        {
            RunManager rm = RunManager.Instance;
            if (rm != null)
            {
                rm.Relics.Clear();
                rm.Relics.AddRange(_savedRelics);
                if (Data.Persistent?.Data != null)
                {
                    Data.Persistent.Data.relics.Clear();
                    if (_savedPersistentRelics != null) Data.Persistent.Data.relics.AddRange(_savedPersistentRelics);
                    Data.Persistent.Data.progress.gold.Value = _savedGold;
                }
                ItemStockField.SetValue(rm, _savedStock);
            }
            SavePathField.SetValue(null, _origSavePath);
            if (_testSavePath != null && File.Exists(_testSavePath))
            {
                File.Delete(_testSavePath);
            }
        }

        private static MapUnit CreateUnit(string characterId, FactionType faction)
        {
            var go = new GameObject($"RelicTest_{characterId}");
            MapUnit unit = go.AddComponent<MapUnit>();
            CharacterData cd = CharacterData.LoadByID(characterId);
            if (cd == null)
            {
                Debug.LogError($"[TestRelic] CharacterData '{characterId}' 不存在");
                return unit;
            }
            var ci = new CharacterInstance(cd);
            CharacterProp.SetValue(unit, ci);
            unit.Faction = faction;
            ci.statSystem.currentHP = (int)ci.statSystem.maxHP.getValue();
            ci.statSystem.currentMP = (int)ci.statSystem.maxMP.getValue();
            return unit;
        }

        private static RelicBase Need(string relicId)
        {
            RelicBase relic = RelicManager.CreateRelicFromID(relicId);
            if (relic == null) Check($"获取藏品 {relicId}", false, "无法创建");
            return relic;
        }

        private static DamageInfo Info(float damage, MapUnit source, MapUnit target, DamageType type)
        {
            return new DamageInfo(damage, source, target, type, DamageMethod.Normal);
        }

        private static Stat GetStat(MapUnit unit, string name)
        {
            return name switch
            {
                "ATK" => unit.Character.statSystem.ATK,
                "DEF" => unit.Character.statSystem.DEF,
                "RES" => unit.Character.statSystem.RES,
                "MoveRange" => unit.Character.statSystem.moveRange,
                "MaxHP" => unit.Character.statSystem.maxHP,
                "MaxMP" => unit.Character.statSystem.maxMP,
                _ => null,
            };
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

        // ==================== test groups ====================

        private static void TestResolution(bool luaReady)
        {
            foreach (KeyValuePair<string, TableData.RelicConfig> kv in Data.Table.RelicConfigs)
            {
                bool isLua = kv.Key == "r_moon_stone" || kv.Key == "r_star_shard";
                if (isLua && !luaReady)
                {
                    _skip++;
                    continue;
                }
                RelicBase relic = RelicManager.CreateRelicFromID(kv.Key);
                Check($"解析 {kv.Key} ({kv.Value.name})", relic != null && relic.ID == kv.Key,
                    relic == null ? "创建失败" : "ID 回读错误");
            }
        }

        private static void TestStatPassives()
        {
            (string id, string statName, float delta)[] cases =
            {
                ("r_sword", "ATK", 2f),
                ("r_plating", "DEF", 2f),
                ("r_mage_robe", "RES", 2f),
                ("r_boots", "MoveRange", 1f),
                ("r_enchanting", "ATK", 1f),
            };
            foreach ((string id, string statName, float delta) in cases)
            {
                RelicBase relic = RelicManager.CreateRelicFromID(id);
                if (relic == null)
                {
                    Check($"被动 {id}", false, "无法创建");
                    continue;
                }
                Stat stat = GetStat(_player, statName);
                float before = stat.getValue();
                relic.OnApply(_player);
                float after = stat.getValue();
                Check($"被动 {id} +{delta} {statName}", Mathf.Abs(after - (before + delta)) < 0.001f,
                    $"期望 {before + delta} 实际 {after}");
                relic.OnRemove(_player);
                Check($"被动 {id} 还原", Mathf.Abs(stat.getValue() - before) < 0.001f,
                    $"期望 {before} 实际 {stat.getValue()}");
            }

            RelicBase pouch = RelicManager.CreateRelicFromID("r_gold_pouch");
            if (pouch != null)
            {
                float atk = _player.Character.statSystem.ATK.getValue();
                pouch.OnApply(_player);
                pouch.OnRemove(_player);
                Check("翡翠袋被动为空", Mathf.Abs(_player.Character.statSystem.ATK.getValue() - atk) < 0.001f);
            }
        }

        private static void TestBattleStartHooks()
        {
            RelicBase beacon = Need("r_beacon");
            if (beacon != null)
            {
                beacon.OnBattleStart(_player);
                Check("信标授予 Power buff", BuffManager.FindBuffByID(_player, "power") != null);
            }

            RelicBase banner = Need("r_war_banner");
            if (banner != null)
            {
                banner.OnBattleStart(_player);
                Check("战旗授予 Strength buff", BuffManager.FindBuffByID(_player, "strength") != null);
            }

            int max = (int)_player.Character.statSystem.maxHP.getValue();
            RelicBase symbol = Need("r_holy_symbol");
            if (symbol != null)
            {
                _player.Character.statSystem.currentHP = (int)(max * 0.5f);
                int before = _player.Character.statSystem.currentHP;
                symbol.OnBattleStart(_player);
                int expected = Mathf.Min(max, before + Mathf.Max(1, Mathf.RoundToInt(max * 0.1f)));
                Check("圣徽开局回血", _player.Character.statSystem.currentHP == expected,
                    $"期望 {expected} 实际 {_player.Character.statSystem.currentHP}");
            }

            RelicBase apple = Need("r_golden_apple");
            if (apple != null)
            {
                int maxBefore = (int)_player.Character.statSystem.maxHP.getValue();
                _player.Character.statSystem.currentHP = maxBefore;
                apple.OnBattleStart(_player);
                Check("金苹果 +10 最大生命", (int)_player.Character.statSystem.maxHP.getValue() == maxBefore + 10,
                    $"期望 {maxBefore + 10} 实际 {(int)_player.Character.statSystem.maxHP.getValue()}");
                Check("金苹果即时 +10 血", _player.Character.statSystem.currentHP == maxBefore + 10,
                    $"期望 {maxBefore + 10} 实际 {_player.Character.statSystem.currentHP}");
                apple.OnBattleEnd(_player);
                Check("金苹果战斗结束还原", (int)_player.Character.statSystem.maxHP.getValue() == maxBefore,
                    $"期望 {maxBefore} 实际 {(int)_player.Character.statSystem.maxHP.getValue()}");
            }
        }

        private static void TestDamageHooks(bool luaReady)
        {
            // (id, type, expected result for 10 base damage)
            (string id, DamageType type, float expected)[] amplify =
            {
                ("r_blaze_core", DamageType.Fire, 15f),
                ("r_ice_crystal", DamageType.Ice, 15f),
                ("r_magic_wand", DamageType.Magic, 13f),
                ("r_berserker_axe", DamageType.Physical, 14f),
            };
            foreach ((string id, DamageType type, float expected) in amplify)
            {
                RelicBase relic = RelicManager.CreateRelicFromID(id);
                if (relic == null)
                {
                    Check($"伤害 {id}", false, "无法创建");
                    continue;
                }
                float d = 10f;
                relic.OnOutgoingDamage(ref d, Info(d, _player, _enemy, type));
                Check($"伤害 {id} ({type})", Mathf.Abs(d - expected) < 0.001f, $"期望 {expected} 实际 {d}");
            }

            RelicBase scale = Need("r_dragon_scale");
            if (scale != null)
            {
                float d = 10f;
                scale.OnIncomingDamage(ref d, Info(d, _enemy, _player, DamageType.Physical));
                Check("龙鳞减伤 30%", Mathf.Abs(d - 7f) < 0.001f, $"实际 {d}");
            }

            RelicBase heart = Need("r_chaos_heart");
            if (heart != null)
            {
                float d = 10f;
                heart.OnOutgoingDamage(ref d, Info(d, _player, _enemy, DamageType.Physical));
                Check("混沌之心输出翻倍", Mathf.Abs(d - 20f) < 0.001f, $"实际 {d}");
                d = 10f;
                heart.OnIncomingDamage(ref d, Info(d, _enemy, _player, DamageType.Physical));
                Check("混沌之心减伤减半", Mathf.Abs(d - 5f) < 0.001f, $"实际 {d}");
            }

            RelicBase turtle = Need("r_turtle");
            if (turtle != null)
            {
                float d = 10f;
                turtle.OnIncomingDamage(ref d, Info(d, _enemy, _player, DamageType.Physical));
                Check("龟壳减伤 2", Mathf.Abs(d - 8f) < 0.001f, $"实际 {d}");
            }

            if (luaReady)
            {
                RelicBase star = Need("r_star_shard");
                if (star != null)
                {
                    float d = 5f;
                    star.OnOutgoingDamage(ref d, Info(d, _player, _enemy, DamageType.Physical));
                    Check("星之碎片 +2 伤害", Mathf.Abs(d - 7f) < 0.001f, $"实际 {d}");
                }
            }
            else
            {
                _skip++;
            }
        }

        private static void TestCombatEvents()
        {
            int max = (int)_player.Character.statSystem.maxHP.getValue();
            RelicBase fang = Need("r_vampire_fang");
            if (fang != null)
            {
                _player.Character.statSystem.currentHP = (int)(max * 0.5f);
                int before = _player.Character.statSystem.currentHP;
                fang.OnHit(Info(100f, _player, _enemy, DamageType.Physical));
                int expected = Mathf.Min(max, before + Mathf.RoundToInt(100f * 0.3f));
                Check("吸血鬼之牙吸血 30%", _player.Character.statSystem.currentHP == expected,
                    $"期望 {expected} 实际 {_player.Character.statSystem.currentHP}");
            }

            int enemyHp = _enemy.Character.statSystem.currentHP;
            RelicBase cactus = Need("r_cactus");
            if (cactus != null)
            {
                cactus.OnBeHurt(Info(10f, _enemy, _player, DamageType.Physical));
                Check("仙人掌反弹 2 伤害", _enemy.Character.statSystem.currentHP == enemyHp - 2,
                    $"期望 {enemyHp - 2} 实际 {_enemy.Character.statSystem.currentHP}");
            }

            RelicBase thorn = Need("r_thorned_armor");
            if (thorn != null)
            {
                int hp = _enemy.Character.statSystem.currentHP;
                thorn.OnBeHurt(Info(100f, _enemy, _player, DamageType.Physical));
                Check("荆棘铠甲反弹 50%", _enemy.Character.statSystem.currentHP == hp - 50,
                    $"期望 {hp - 50} 实际 {_enemy.Character.statSystem.currentHP}");
            }

            RelicBase honey = Need("r_honey");
            if (honey != null)
            {
                var healInfo = Info(10f, _player, _player, DamageType.Heal);
                honey.OnBeHealed(healInfo);
                Check("蜂蜜瓶放大治疗 30%", Mathf.Abs(healInfo.damage - 13f) < 0.001f, $"实际 {healInfo.damage}");
            }

            RelicBase totem = Need("r_totem");
            if (totem != null)
            {
                _player.Character.statSystem.currentHP = 10;
                totem.OnBattleStart(_player);
                float first = 50f;
                totem.OnIncomingDamage(ref first, Info(first, _enemy, _player, DamageType.Physical));
                Check("不死图腾保留 1 血", Mathf.Abs(first - 9f) < 0.001f, $"实际 {first}");
                float second = 50f;
                totem.OnIncomingDamage(ref second, Info(second, _enemy, _player, DamageType.Physical));
                Check("不死图腾仅生效一次", Mathf.Abs(second - 50f) < 0.001f, $"实际 {second}");
            }
        }

        private static void TestTurnHooks(bool luaReady)
        {
            int maxMp = (int)_player.Character.statSystem.maxMP.getValue();
            RelicBase crystal = Need("r_mana_crystal");
            if (crystal != null)
            {
                _player.Character.statSystem.currentMP = (int)(maxMp * 0.5f);
                int before = _player.Character.statSystem.currentMP;
                crystal.OnTurnStart(_player);
                int recover = Mathf.Max(1, Mathf.RoundToInt(maxMp * 0.25f));
                int expected = Mathf.Min(maxMp, before + recover);
                Check("魔力水晶回蓝 25%", _player.Character.statSystem.currentMP == expected,
                    $"期望 {expected} 实际 {_player.Character.statSystem.currentMP}");
            }

            if (luaReady)
            {
                int max = (int)_player.Character.statSystem.maxHP.getValue();
                _player.Character.statSystem.currentHP = max - 10;
                RelicBase moon = Need("r_moon_stone");
                if (moon != null)
                {
                    moon.OnTurnStart(_player);
                    Check("月之石每回合回血 3", _player.Character.statSystem.currentHP == max - 7,
                        $"期望 {max - 7} 实际 {_player.Character.statSystem.currentHP}");
                }
            }
            else
            {
                _skip++;
            }
        }

        private static void TestEconomy(bool economyReady)
        {
            if (!economyReady)
            {
                _skip += 3;
                return;
            }
            RunManager rm = RunManager.Instance;
            int gold0 = rm.Gold;

            RelicBase ring = Need("r_emerald_ring");
            if (ring != null)
            {
                ring.OnKill(Info(1f, _player, _enemy, DamageType.Physical));
                Check("翡翠戒指击杀 +10 金币", rm.Gold == gold0 + 10, $"期望 {gold0 + 10} 实际 {rm.Gold}");
            }

            RelicBase midas = Need("r_midas_touch");
            if (midas != null)
            {
                midas.OnKill(Info(1f, _player, _enemy, DamageType.Physical));
                Check("点金之手击杀 +30 金币", rm.Gold == gold0 + 40, $"期望 {gold0 + 40} 实际 {rm.Gold}");
            }

            RelicBase clover = Need("r_lucky_clover");
            if (clover != null)
            {
                var info = Info(1f, _player, _enemy, DamageType.Physical);
                for (int i = 0; i < 50; i++)
                {
                    clover.OnKill(info);
                }
                int max = gold0 + 40 + 50 * 15;
                Check("幸运四叶草金币范围", rm.Gold >= gold0 + 40 && rm.Gold <= max,
                    $"gold={rm.Gold} 范围 [{gold0 + 40}, {max}]");
            }
        }

        private static void TestIntegration(bool luaReady)
        {
            RunManager rm = RunManager.Instance;

            // Modifier pipeline integration
            RelicBase heart = RelicManager.CreateRelicFromID("r_chaos_heart");
            if (heart != null)
            {
                rm.Relics.Add(heart);
                _player.SetModifiersDirty();
                var info = Info(10f, _player, _enemy, DamageType.True);
                float result = CombatCalculator.CalculateDamage(info);
                Check("混沌之心经修饰器管线翻倍", Mathf.Abs(result - 20f) < 0.001f, $"实际 {result}");
                rm.Relics.Remove(heart);
            }

            if (!luaReady)
            {
                _skip += 4;
            }
            else
            {
                // Full battle lifecycle with every relic
                try
                {
                    foreach (KeyValuePair<string, TableData.RelicConfig> kv in Data.Table.RelicConfigs)
                    {
                        RelicBase relic = RelicManager.CreateRelicFromID(kv.Key);
                        if (relic != null) rm.Relics.Add(relic);
                    }
                    _player.OnBattleStart();
                    _player.OnTurnStart();
                    _player.OnTurnEnd();
                    _player.OnBattleEnd();
                    Check("全套藏品战斗生命周期无异常", true);
                }
                catch (Exception e)
                {
                    Check("全套藏品战斗生命周期无异常", false, e.Message);
                }
                finally
                {
                    rm.Relics.Clear();
                }

                // Shop generation
                for (int i = 0; i < 5; i++)
                {
                    Map.ShopNode node = Map.ShopNode.genShopNode();
                    Check($"商店生成 #{i} 有槽位", node.itemSlots != null && node.itemSlots.Count > 0);
                    if (node.itemSlots == null) continue;
                    foreach (Map.ShopSlotData slot in node.itemSlots)
                    {
                        RelicBase relic = RelicManager.CreateRelicFromID(slot.itemId);
                        Check($"商店物品可创建 {slot.itemId}", relic != null, "无法创建");
                        Check($"商店价格合法 {slot.itemId}", slot.price > 0, $"price={slot.price}");
                    }
                }

                // Event actions
                int beforeRelics = rm.Relics.Count;
                try
                {
                    EventActions.GiveRandomRelic();
                    Check("遗物事件入 Run", rm.Relics.Count == beforeRelics + 1,
                        $"期望 {beforeRelics + 1} 实际 {rm.Relics.Count}");
                }
                catch (Exception e)
                {
                    Check("遗物事件入 Run", false, e.Message);
                }

                EventActions.GiveRandomPotion();
                int total = rm.GetItemStock("it_potion_hp")
                            + rm.GetItemStock("it_potion_atk")
                            + rm.GetItemStock("it_potion_atk_aoe")
                            + rm.GetItemStock("it_fire_potion");
                Check("药水事件入库存", total >= 1, $"stock={total}");

                try
                {
                    EventActions.GiveRandomReward();
                    Check("随机奖励事件无异常", true);
                }
                catch (Exception e)
                {
                    Check("随机奖励事件无异常", false, e.Message);
                }
            }
        }
    }
}
