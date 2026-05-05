using System;

namespace Core.Data.Persistent
{
    /// <summary>
    /// PlayerProgressData — 玩家进度存档
    ///
    /// 存放内容：
    ///   - 已解锁关卡
    ///   - 已解锁职业
    ///   - 资源（金币、材料等）
    ///   - 角色等级/经验
    /// </summary>
    [Serializable]
    public class PlayerProgressData
    {
        public int gold;
        public int highestClearedStage;
    }
}
