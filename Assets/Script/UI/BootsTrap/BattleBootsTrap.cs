using UnityEngine;
using UI;
using Managers;
using UI.Panel;
using Map;
using Core.Data;
using Lua;
using Cysharp.Threading.Tasks;

namespace UI.BootsTrap
{
    public class BattleBootstrap : MonoBehaviour
    {
        public TimelinePanel TimelineUI { get; private set; }
        public MapPopWindow MapPopWindow;

        public async void Start()
        {
            WarmUpLua();

            StartMode mode = Data.PendingStartMode;
            Data.CreatePersistent(mode);
            Data.PendingStartMode = StartMode.Continue;

            if (mode == StartMode.NewGame && RunManager.Instance != null)
            {
                RunManager.Instance.ResetRun();
            }

            await RestoreRunAsync();
        }

        // 提前初始化 Lua 虚拟机，将首次 require 全部 Lua 模块的耗时从
        // 运行时第一次查询 Buff/遗物的那一帧转移到进入场景的启动阶段，避免卡顿。
        private void WarmUpLua()
        {
            _ = LuaManager.Instance;
        }

        /// <summary>
        /// 读档恢复流程：
        /// 1. 恢复队伍/遗物（PopulateFromSaveData，需等待 Addressables 技能加载）
        /// 2. 有存档地图则用存档 nodeMapData，否则生成新地图并落盘
        /// 3. 打开地图窗口并恢复玩家位置；新地图才解锁第一层（续档的锁定状态已持久化）
        /// </summary>
        private async UniTask RestoreRunAsync()
        {
            if (RunManager.Instance != null)
            {
                await RunManager.Instance.PopulateFromSaveData(Data.Persistent?.Data?.party);
            }

            bool freshMap = Data.Persistent?.Data?.nodeMapData == null;
            NodeMapData map = freshMap ? NodeMapData.GenerateFakeData() : Data.Persistent.Data.nodeMapData;
            if (freshMap && Data.Persistent?.Data != null)
            {
                Data.Persistent.Data.nodeMapData = map;
                Data.Persistent.Data.seed = Random.Range(int.MinValue, int.MaxValue);
                Data.Persistent.Save();
            }

            if (UIManager.Instance?.Background == null)
            {
                Debug.LogError("UIRoot 未就绪");
                return;
            }

            MapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            MapPopWindow.Init(map);
            MapPopWindow.SetPlayerPosition(
                Data.Persistent?.Data?.currentPlayerLayer ?? 0,
                Data.Persistent?.Data?.currentPlayerRow ?? 0);
            if (freshMap)
            {
                MapPopWindow.unLockFirstLayer();
            }
        }
    }
}
