using Core.Data;

namespace Map
{
    /// <summary>
    /// MapPersistence — 地图进度存档接口
    ///
    /// 职责：把当前节点地图（nodeMapData）与玩家位置（layer/row）写入存档并落盘。
    /// 存档时机：
    ///   - 点击地图节点进入（MapNodeSlot）
    ///   - 结算返回地图解锁下一层（MapPopWindow.NextLevel）
    ///   - 地图界面返回主菜单前（MapPopWindow.QuitToMainMenu）
    ///
    /// 读档侧由 BattleBootstrap 读取 Data.Persistent.Data.nodeMapData /
    /// currentPlayerLayer / currentPlayerRow 恢复地图进度。
    /// </summary>
    public static class MapPersistence
    {
        /// <summary>保存当前地图进度（nodeMapData + 玩家位置），无存档上下文时忽略</summary>
        public static void SaveMap(NodeMapData map, int layer, int row)
        {
            if (Data.Persistent?.Data == null)
            {
                return;
            }

            Data.Persistent.Data.nodeMapData = map;
            Data.Persistent.Data.currentPlayerLayer = layer;
            Data.Persistent.Data.currentPlayerRow = row;
            Data.Persistent.Save();
        }
    }
}
