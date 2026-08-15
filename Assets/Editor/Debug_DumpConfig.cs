using System;
using System.IO;
using Core.Data;
using Core.Data.Persistent;
using Map;
using Newtonsoft.Json;
using UnityEditor;
using UnityEngine;

namespace DebugSystem
{
    /// <summary>
    /// EditMode diagnostic dumps (Tools menu). No play mode needed: reads
    /// Data.Table and the save file directly, so config/map state can be
    /// inspected without entering the game.
    /// </summary>
    public static class Debug_DumpConfig
    {
        private static readonly JsonSerializerSettings JsonSettings =
            new() { TypeNameHandling = TypeNameHandling.Auto };

        [MenuItem("Tools/Debug/Dump EventConfigs")]
        public static void DumpEventConfigs()
        {
            Debug.Log($"[Dump] 事件配置共 {Data.Table.EventConfigs.Count} 个");
            foreach (var kv in Data.Table.EventConfigs)
            {
                int screenCount = kv.Value.screens?.Count ?? 0;
                int optionCount = 0;
                if (kv.Value.screens != null)
                {
                    foreach (var screen in kv.Value.screens)
                    {
                        optionCount += screen.options?.Count ?? 0;
                    }
                }
                Debug.Log($"[Dump] {kv.Key} title='{kv.Value.title}' startScreen='{kv.Value.startScreen}' " +
                          $"screens={screenCount} options={optionCount}");
            }
        }

        [MenuItem("Tools/Debug/Dump Save Map")]
        public static void DumpSaveMap()
        {
            string path = Path.Combine(Application.persistentDataPath, "SaveData.json");
            if (!File.Exists(path))
            {
                Debug.Log("[Dump] 无存档文件: " + path);
                return;
            }

            SaveData save = JsonConvert.DeserializeObject<SaveData>(File.ReadAllText(path), JsonSettings);
            if (save?.nodeMapData == null)
            {
                Debug.Log("[Dump] 存档无地图数据");
                return;
            }

            NodeMapData map = save.nodeMapData;
            Debug.Log($"[Dump] 存档地图 layers={map.layerCount} playerLayer={save.currentPlayerLayer} playerRow={save.currentPlayerRow}");
            for (int i = 0; i < map.layerCount; i++)
            {
                foreach (BaseNode n in map.layers[i])
                {
                    string levelInfo = n is BattleNode bn ? $"level={bn.level}" : n is EventNode en ? $"event={en.eventId}" : "";
                    Debug.Log($"[Dump] L{i} type={n.type} col={n.col} row={n.row} lock={n.isLock} {levelInfo} conns=[{string.Join(",", n.connections)}]");
                }
            }
        }

        [MenuItem("Tools/Debug/Verify Event Option Prefab")]
        public static void VerifyEventOptionPrefab()
        {
            const string panelPath = "Assets/UI/Event/EventChoicePanel.prefab";
            var panelPrefab = AssetDatabase.LoadAssetAtPath<UI.Panel.EventChoicePanel>(panelPath);
            if (panelPrefab == null)
            {
                Debug.LogError($"[Verify] EventChoicePanel prefab 加载失败: {panelPath}");
                return;
            }
            Debug.Log($"[Verify] optionContainer={(panelPrefab.optionContainer != null)} " +
                      $"optionPrefab={(panelPrefab.optionPrefab != null)} " +
                      $"titleText={(panelPrefab.titleText != null)} " +
                      $"resultView={(panelPrefab.resultView != null)} " +
                      $"confirmButton={(panelPrefab.confirmButton != null)}");

            if (panelPrefab.optionPrefab != null)
            {
                var slot = panelPrefab.optionPrefab.GetComponent<UI.Slot.EventOptionSlot>();
                Debug.Log($"[Verify] optionPrefab name='{panelPrefab.optionPrefab.name}' " +
                          $"EventOptionSlot={(slot != null ? "OK" : "NULL")}");
                if (slot != null)
                {
                    Debug.Log($"[Verify] slot.titleText={(slot.titleText != null)} " +
                              $"descText={(slot.descText != null)} button={(slot.button != null)}");
                }
            }
        }
    }
}
