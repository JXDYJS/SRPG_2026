using System;
using System.Collections.Generic;

namespace Core.Data.Persistent
{
    /// <summary>
    /// SaveData — 存档根对象
    ///
    /// 存放内容（持久化，使用 Newtonsoft.Json 序列化）：
    ///   - 版本号（存档兼容性检查）
    ///   - 存档时间戳
    ///   - 玩家进度、队伍状态、资源等
    ///
    /// 序列化方式：JsonConvert.SerializeObject / DeserializeObject
    /// 存储路径：Application.persistentDataPath / "SaveData.json"
    /// </summary>
    [Serializable]
    public class SaveData
    {
        public string version = "1.0";
        public string saveTime;
        public int slotIndex;

        public PlayerProgressData playerProgress = new PlayerProgressData();

        // 后续扩展：队伍数据、关卡解锁、成就等
    }
}
