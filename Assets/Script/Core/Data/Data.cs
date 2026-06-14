using Core.Data.Runtime;
using Core.Data.Persistent;
using UnityEngine;

namespace Core.Data
{
    /// <summary>
    /// Data — 全局数据根节点（静态单例）
    ///
    /// 访问约定：
    ///   Data.Config.AIConfig.threatNormalizeBase    // 配置
    ///   Data.Runtime.Battle.CurrentRound            // 运行时
    ///   Data.Persistent.Save()                      // 持久化
    /// </summary>
    public static class Data
    {
        public static readonly ConfigData Config = new ConfigData();
        public static RuntimeData Runtime { get; private set; }
        public static PersistentData Persistent { get; private set; }

        public static readonly CommandConfigData CommandConfig = new CommandConfigData();

        public static void CreateRuntime()
        {
            Runtime = new RuntimeData();
        }

        public static void DestroyRuntime()
        {
            Runtime = null;
        }

        /// <summary>尝试加载存档，若不存在则创建新存档</summary>
        public static void CreatePersistent()
        {
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

    // ======================== 容器类 ========================

    public class ConfigData
    {
        public readonly AIConfigData AIConfig = new AIConfigData();
        public readonly BattleConfigData BattleConfig = new BattleConfigData();
        public readonly BalanceConfigData BalanceConfig = new BalanceConfigData();
        public readonly ViewConfigData ViewConfig = new ViewConfigData();
    }

    public class RuntimeData
    {
        public readonly BattleRuntimeData Battle = new BattleRuntimeData();
        public readonly AIRuntimeData AI = new AIRuntimeData();
    }

    public class PersistentData
    {
        public SaveData Data;

        private static readonly string SavePath =
            global::System.IO.Path.Combine(Application.persistentDataPath, "SaveData.json");

        /// <summary>持久化存档到磁盘</summary>
        public void Save()
        {
            Data.saveTime = global::System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            string json = Newtonsoft.Json.JsonConvert.SerializeObject(Data, Newtonsoft.Json.Formatting.Indented);
            global::System.IO.File.WriteAllText(SavePath, json);
            Debug.Log($"[PersistentData] Saved to {SavePath}");
        }

        /// <summary>从磁盘加载存档，若文件不存在则返回 null</summary>
        public static PersistentData Load()
        {
            if (!global::System.IO.File.Exists(SavePath))
            {
                Debug.Log("[PersistentData] No save file found");
                return null;
            }
            string json = global::System.IO.File.ReadAllText(SavePath);
            SaveData data = Newtonsoft.Json.JsonConvert.DeserializeObject<SaveData>(json);
            Debug.Log($"[PersistentData] Loaded save: version={data.version}, stage={data.currentStageId}, party={data.party.Count}");
            return new PersistentData { Data = data };
        }

        /// <summary>重置存档（新游戏）</summary>
        public static void Reset()
        {
            if (global::System.IO.File.Exists(SavePath))
            {
                global::System.IO.File.Delete(SavePath);
            }
            Debug.Log("[PersistentData] Save file deleted");
        }
    }
}
