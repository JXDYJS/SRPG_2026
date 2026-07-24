using System;
using System.Collections.Generic;
using Map;

namespace Core.Data.Persistent
{
    /// <summary>
    /// SaveData — 存档根对象
    ///
    /// 存放内容（持久化，使用 Newtonsoft.Json 序列化）：
    ///   - version：存档兼容性检查
    ///   - party：玩家队伍角色数据
    ///   - relics：已收集藏品 ID 列表
    ///   - gold / highestClearedStage：进度数据
    ///   - currentStageId：当前关卡 ID
    ///   - seed：地图随机种子
    ///   - nodeMapData：节点地图数据
    ///
    /// 扩展方式：直接在本类添加字段即可，旧存档自动用默认值
    /// </summary>
    [Serializable]
    public class SaveData
    {
        public string version = "1.0";
        public string saveTime;
        public string currentStageId;

        public List<CharacterSaveData> party = new List<CharacterSaveData>();
        public List<string> relics = new List<string>();

        public int gold;
        public int highestClearedStage;

        public int seed;
        public NodeMapData nodeMapData;
    }
}
