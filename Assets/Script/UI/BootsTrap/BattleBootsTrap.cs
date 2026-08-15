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

        // Pre-init the Lua VM so the first require of all Lua modules happens here, not on the runtime frame
        private void WarmUpLua()
        {
            _ = LuaManager.Instance;
        }

        /// <summary>
        /// Restores the run: party/relics from save, map (saved or freshly generated),
        /// then opens the map window and restores the player position.
        /// </summary>
        private async UniTask RestoreRunAsync()
        {
            if (RunManager.Instance != null)
            {
                await RunManager.Instance.PopulateFromSaveData(Data.Persistent?.Data?.party);
            }

            bool freshMap = Data.Persistent?.Data?.nodeMapData == null;
            NodeMapData map = freshMap ? NodeMapData.GenerateMap() : Data.Persistent.Data.nodeMapData;
            if (freshMap && Data.Persistent?.Data != null)
            {
                Data.Persistent.Data.nodeMapData = map;
                Data.Persistent.Data.seed = Random.Range(int.MinValue, int.MaxValue);
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
                // Persist after unlocking so a fresh map is never saved all-locked.
                Data.Persistent?.Save();
            }
        }
    }
}
