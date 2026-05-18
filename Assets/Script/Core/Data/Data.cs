using Core.Data.Runtime;

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
        // ── Config：只读，程序启动时初始化，打包后不变 ──
        public static readonly ConfigData Config = new ConfigData();

        // ── Runtime：每局战斗创建/销毁 ──
        public static RuntimeData Runtime { get; private set; }

        // ── Persistent：存档/读档 ──
        public static PersistentData Persistent { get; private set; }

        // ── CommandConfig：命令配置 ──
        public static readonly CommandConfigData CommandConfig = new CommandConfigData();

        /// <summary>战斗开始时调用</summary>
        public static void CreateRuntime()
        {
            Runtime = new RuntimeData();
        }

        /// <summary>战斗结束时调用</summary>
        public static void DestroyRuntime()
        {
            Runtime = null;
        }

        /// <summary>创建新存档</summary>
        public static void CreatePersistent()
        {
            Persistent = new PersistentData();
        }
    }

    // ======================== 容器类 ========================

    public class ConfigData
    {
        public readonly AIConfigData AIConfig = new AIConfigData();
        public readonly BattleConfigData BattleConfig = new BattleConfigData();
        public readonly BalanceConfigData BalanceConfig = new BalanceConfigData();
    }

    public class RuntimeData
    {
        public readonly BattleRuntimeData Battle = new BattleRuntimeData();
        public readonly AIRuntimeData AI = new AIRuntimeData();
    }

    // PersistentData 后续实现序列化，先留空壳
    public class PersistentData
    {
        // public void Save(string path) { ... }
        // public static PersistentData Load(string path) { ... }
    }
}
