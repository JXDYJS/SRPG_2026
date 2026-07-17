using UnityEngine;
using System.Linq;
using Utils;
using Grid;
using IngameDebugConsole;
using Core.Data;
using System.Reflection;
using System;
using Managers;

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
    }
}
