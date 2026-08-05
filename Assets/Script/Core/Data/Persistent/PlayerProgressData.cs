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
    ///
    /// 数值字段使用 ObservableValue 容器，可在变化时触发事件供 UI 绑定
    /// </summary>
    [Serializable]
    public class PlayerProgressData
    {
        public ObservableValue<int> gold = new();
        public ObservableValue<int> highestClearedStage = new();
    }
}
