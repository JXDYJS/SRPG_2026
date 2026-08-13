using Core.Data.Runtime;
using Core.Data.Persistent;
using UnityEngine;
using System;

namespace Core.Data
{
    /// <summary>Start mode: Continue loads the old save (creates if none), NewGame deletes and starts fresh</summary>
    public enum StartMode
    {
        Continue,
        NewGame
    }

    /// <summary>
    /// Global data root (static singleton): Config, Runtime, Persistent.
    /// </summary>
    public static class Data
    {
        public static readonly ConfigData Config = new ConfigData();
        public static RuntimeData Runtime { get; private set; }
        public static PersistentData Persistent { get; private set; }

        public static readonly CommandConfigData CommandConfig = new CommandConfigData();
        public static readonly TableData Table = new();
        public static void CreateRuntime()
        {
            Runtime = new RuntimeData();
        }

        public static void DestroyRuntime()
        {
            Runtime = null;
        }

        /// <summary>
        /// Start mode set by the launch menu before switching scenes; Bootstrap reads and resets it
        /// </summary>
        public static StartMode PendingStartMode = StartMode.Continue;

        /// <summary>Initializes persistent save data (loads or starts fresh per mode)</summary>
        public static void CreatePersistent(StartMode mode = StartMode.Continue)
        {
            if (mode == StartMode.NewGame)
            {
                PersistentData.Reset();
                Persistent = new PersistentData { Data = new SaveData() };
                Debug.Log("[Data] New game started, created new PersistentData");
                return;
            }

            Persistent = PersistentData.Load();
            if (Persistent == null)
            {
                Persistent = new PersistentData { Data = new SaveData() };
                Debug.Log("[Data] No save file found, created new PersistentData");
            }
            else
            {
                Debug.Log("[Data] Save file loaded successfully");
            }
        }
    }


    public class ConfigData
    {
        public readonly AIConfigData AIConfig = new AIConfigData();
        public readonly BattleConfigData BattleConfig = new BattleConfigData();
        public readonly BalanceConfigData BalanceConfig = new BalanceConfigData();
        public readonly ViewConfigData ViewConfig = new ViewConfigData();
        public readonly ShopConfigData shopConfig = new ShopConfigData();
        public readonly EventConfigData eventConfig = new EventConfigData();
    }

    public class RuntimeData
    {
        public readonly BattleRuntimeData Battle = new BattleRuntimeData();
    }

    /// <summary>Save summary for the launch UI (does not hold the full save)</summary>
    public class SaveSummary
    {
        public bool Exists;
        public string SaveTime;
        public string CurrentStageId;
        public int Gold;
        public int PartyCount;
        public int PlayerLayer;
        public int PlayerRow;
    }

    public class PersistentData
    {
        public SaveData Data;

        private static readonly string SavePath =
            global::System.IO.Path.Combine(Application.persistentDataPath, "SaveData.json");

        private static readonly Newtonsoft.Json.JsonSerializerSettings _jsonSettings =
            new() { TypeNameHandling = Newtonsoft.Json.TypeNameHandling.Auto };

        /// <summary>Whether a save file exists</summary>
        public static bool HasSaveFile()
        {
            return global::System.IO.File.Exists(SavePath);
        }

        /// <summary>
        /// Reads the save summary for the launch UI; Exists=false if missing or corrupt
        /// </summary>
        public static SaveSummary LoadSummary()
        {
            SaveSummary summary = new SaveSummary { Exists = false };
            try
            {
                if (!global::System.IO.File.Exists(SavePath))
                {
                    return summary;
                }
                string json = global::System.IO.File.ReadAllText(SavePath);
                SaveData data = Newtonsoft.Json.JsonConvert.DeserializeObject<SaveData>(json, _jsonSettings);
                if (data == null)
                {
                    Debug.LogWarning("[PersistentData] LoadSummary: 存档反序列化为 null");
                    return summary;
                }
                summary.Exists = true;
                summary.SaveTime = data.saveTime;
                summary.CurrentStageId = data.currentStageId;
                summary.Gold = data.progress?.gold?.Value ?? 0;
                summary.PartyCount = data.party?.Count ?? 0;
                summary.PlayerLayer = data.currentPlayerLayer;
                summary.PlayerRow = data.currentPlayerRow;
                return summary;
            }
            catch (global::System.Exception e)
            {
                Debug.LogWarning($"[PersistentData] LoadSummary 失败: {e.Message}");
                return summary;
            }
        }

        /// <summary>Persists save data to disk</summary>
        public void Save()
        {
            Data.saveTime = global::System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            string json = Newtonsoft.Json.JsonConvert.SerializeObject(Data, Newtonsoft.Json.Formatting.Indented, _jsonSettings);
            global::System.IO.File.WriteAllText(SavePath, json);
            Debug.Log($"[PersistentData] Saved to {SavePath}");
        }

        /// <summary>Loads the save from disk; null if missing or corrupt</summary>
        public static PersistentData Load()
        {
            if (!global::System.IO.File.Exists(SavePath))
            {
                Debug.Log("[PersistentData] No save file found");
                return null;
            }
            try
            {
                string json = global::System.IO.File.ReadAllText(SavePath);
                SaveData data = Newtonsoft.Json.JsonConvert.DeserializeObject<SaveData>(json, _jsonSettings);
                Debug.Log($"[PersistentData] Loaded save: version={data.version}, stage={data.currentStageId}, party={data.party.Count}");
                return new PersistentData { Data = data };
            }
            catch (global::System.Exception e)
            {
                Debug.LogError($"[PersistentData] 存档加载失败: {e.Message}");
                return null;
            }
        }

        /// <summary>Deletes save data (new game)</summary>
        public static void Reset()
        {
            if (global::System.IO.File.Exists(SavePath))
            {
                global::System.IO.File.Delete(SavePath);
            }
            Debug.Log("[PersistentData] Save file deleted");
        }
        public void Watch<_T>(Action<_T> action,params ObservableValue<_T>[] observableValues)
        {
            foreach(var obs in observableValues)
            {
                obs.OnValueChanged += action;
            }
        }
        public void UnWatch<_T>(Action<_T> action,params ObservableValue<_T>[] observableValues)
        {
            foreach(var obs in observableValues)
            {
                obs.OnValueChanged -= action;
            }
        }
        
    }
}
