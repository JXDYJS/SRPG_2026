using UnityEngine;
using UI;
using Managers;
using UI.Panel;
using Map;
using Core.Data;
using Lua;

namespace UI.BootsTrap
{
    public class BattleBootstrap : MonoBehaviour
    {
        public TimelinePanel TimelineUI { get; private set; }
        public MapPopWindow MapPopWindow;

        public void Start()
        {
            WarmUpLua();
            Data.CreatePersistent(Data.PendingStartMode);
            Data.PendingStartMode = StartMode.Continue;
            startMapPopWindow();
        }

        // 提前初始化 Lua 虚拟机，将首次 require 全部 Lua 模块的耗时从
        // 运行时第一次查询 Buff/遗物的那一帧转移到进入场景的启动阶段，避免卡顿。
        private void WarmUpLua()
        {
            _ = LuaManager.Instance;
        }

        private void startMapPopWindow()
        {
            if (UIManager.Instance?.Background == null)
            {
                Debug.LogError("UIRoot 未就绪");
                return;
            }
            MapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            MapPopWindow.Init(NodeMapData.GenerateFakeData()); // todo: generate real data
            MapPopWindow.unLockFirstLayer();
        }
    }
}
