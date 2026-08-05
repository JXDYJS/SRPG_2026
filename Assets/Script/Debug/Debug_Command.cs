using UnityEngine;
using System.Linq;
using Utils;
using Grid;
using IngameDebugConsole;
using Core.Data;
using System.Reflection;
using System;
using Managers;
using Global;
using GamePlay.Units;
using GamePlay.Buff;

namespace DebugSystem
{
    public static class Debug_Command
    {
        [ConsoleMethod("highlight", "Mark tile x y z with default red")]
        public static void HighlightTile(int x, int y, int z)
        {
            var pos = new Vector3Int(x, y, z);
            DebugGizmos.MarkTile(pos);
            Debug.Log($"[Debug] highlighted ({x},{y},{z})");
        }

        [ConsoleMethod("highlight_c", "Mark tile x y z r g b a with custom color")]
        public static void HighlightTileColor(int x, int y, int z, float r, float g, float b, float a)
        {
            var pos = new Vector3Int(x, y, z);
            DebugGizmos.MarkTile(pos, new Color(r, g, b, a));
            Debug.Log($"[Debug] highlighted ({x},{y},{z}) color=({r:F2},{g:F2},{b:F2},{a:F2})");
        }

        [ConsoleMethod("clear", "Clear all debug tile highlights")]
        public static void ClearHighlights()
        {
            DebugGizmos.Clear();
            Debug.Log("[Debug] cleared all highlights");
        }

        [ConsoleMethod("threatmap", "Show threat map heatmap (auto maxScore)")]
        public static void ThreatMap()
        {
            ThreatMap(100f);
        }

        [ConsoleMethod("threatmap", "Show threat map heatmap with given maxScore")]
        public static void ThreatMap(float maxScore)
        {
            var tmm = TacticalMapManager.Instance;
            if (tmm == null) { Debug.LogError("TacticalMapManager not found"); return; }

            DebugGizmos.Clear();
            tmm.RebuildThreatMapSnapshot();
            var scores = tmm.ThreatMap.GetAllScores().ToList();

            float actualMax = scores.Count > 0 ? scores.Max(kv => kv.Value) : 0f;
            float usedMax = Mathf.Max(maxScore, actualMax);

            DebugGizmos.MarkTiles(scores, Color.red, usedMax);
            Debug.Log($"[Debug] threatmap rendered: {DebugGizmos.Count} tiles, max={actualMax:F1}");
        }
        [ConsoleMethod("listAllThreats", "List all threats in the map")]
        public static void ListAllThreats()
        {
            var tmm = TacticalMapManager.Instance;
            if (tmm == null) { Debug.LogError("TacticalMapManager not found"); return; }

            var scores = tmm.ThreatMap.GetAllScores().ToList();
            Debug.Log($"[Debug] found {scores.Count} threats in the map");
            foreach (var kv in scores)
            {
                Debug.Log($"[Debug] ({kv.Key})={kv.Value:F1}");
            }
        }

        [ConsoleMethod("playerInvincible", "Set player invincible")]
        public static void PlayerInvincible(bool invincible)
        {
            Data.CommandConfig.playerInvincible = invincible;
        }

        [ConsoleMethod("oneShotKill", "Set player one-shot kill")]
        public static void OneShotKill(bool enable)
        {
            Data.CommandConfig.playerOneShotKill = enable;
        }
        [ConsoleMethod("openPanel","Open a Panel")]
        public static void OpenPanel(string name)
        {
            string fullName = $"UI.Panel.{name}";
            Type panelType = Type.GetType(fullName);
            if(panelType == null)
            {
                Debug.LogError("not find panel");
                return;
            }
            UIManager.Instance.OpenPanel(panelType);
        }
        [ConsoleMethod("KillAllEnemy","kill all enemy")]
        public static void KillAllEnemy()
        {
            foreach(var unit in UnitManager.Instance.GetAllAliveUnit())
            {
                if(unit.Faction == Global.FactionType.Enemy)
                {
                    unit.TakeDamage(new(999999999f,
                        new(),
                        unit,
                        DamageType.True,
                        DamageMethod.Normal));
                }
            }
        }

        [ConsoleMethod("listUnits", "List all alive units (index/name/faction/position/state)")]
        public static void ListUnits()
        {
            var units = UnitManager.Instance.GetAllAliveUnit();
            Debug.Log($"[Debug] listUnits: 共 {units.Count} 个存活单位");
            for (int i = 0; i < units.Count; i++)
            {
                var unit = units[i];
                if (unit == null) continue;
                Debug.Log($"[Debug] [{i}] go={unit.name} char={unit.GetUnitName()} faction={unit.Faction} pos={unit.gridPosition} state={unit.CurrentState} buffs={unit.ActiveBuffs.Count}");
            }
        }

        [ConsoleMethod("addBuff", "Add buff to unit at grid (x,y,z), stacks=1")]
        public static void AddBuff(string buffID, int x, int y, int z)
        {
            AddBuff(buffID, x, y, z, 1);
        }

        [ConsoleMethod("addBuff", "Add/remove buff to unit at grid (x,y,z); stacks<0 removes by amount")]
        public static void AddBuff(string buffID, int x, int y, int z, int stacks)
        {
            if (string.IsNullOrEmpty(buffID))
            {
                Debug.LogError("[Debug] addBuff: buffID 为空");
                return;
            }

            var pos = new Vector3Int(x, y, z);
            var unit = UnitManager.Instance != null ? UnitManager.Instance.GetUnitAt(pos) : null;
            if (unit == null)
            {
                Debug.LogError($"[Debug] addBuff: 位置 {pos} 没有单位，先执行 listUnits 查看坐标");
                return;
            }

            BuffManager.ApplyBuffToUnit(unit, buffID, stacks);
            var after = BuffManager.FindBuffByID(unit, buffID);
            Debug.Log($"[Debug] addBuff: {unit.GetUnitName()}@{pos} {(stacks >= 0 ? "添加" : "移除")} {buffID} stacks={stacks} → 当前层数={after?.Stacks ?? 0}");
        }

        [ConsoleMethod("giveitem", "Give item by id (gold / r_* relic); amount for currency")]
        public static void GiveItem(string itemId)
        {
            GiveItem(itemId, 1);
        }

        [ConsoleMethod("giveitem", "Give item by id with amount (currency)")]
        public static void GiveItem(string itemId, int amount)
        {
            if (RunManager.Instance == null)
            {
                Debug.LogError("[Debug] giveitem: RunManager 不存在");
                return;
            }
            bool ok = RunManager.Instance.GiveItem(itemId, amount);
            Debug.Log(ok ? $"[Debug] giveitem: 获得 {itemId} x{amount}" : $"[Debug] giveitem: 失败，未知物品 '{itemId}'");
        }
    }
}
