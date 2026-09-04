using Cysharp.Threading.Tasks;
using Lua;
using Managers;
using UI.Panel;
using UnityEngine;

namespace UI.BootsTrap
{
    /// <summary>
    /// Main-menu scene launcher. Runs version check and hot update in LoadWindow,
    /// then opens the main menu LaunchWindow.
    /// </summary>
    public class LaunchBootstrap : MonoBehaviour
    {
        void Start()
        {
            if (UIManager.Instance?.Background == null)
            {
                Debug.LogError("UIRoot 未就绪");
                return;
            }

            UIManager.Instance.OpenPanel<LoadWindow>().Init(RunStartupFlow);
        }

        private async UniTask RunStartupFlow(LoadWindow window)
        {
            // True = content ready or server unreachable (local content). False = a required
            // bundle could not be downloaded after retries — stay on the load screen.
            bool canProceed = await UpdateManager.CheckAndUpdate(window);

            if (!canProceed)
            {
                window.SetFailed("更新失败，请检查网络后重新启动游戏");
                return;
            }

            // Lua is Addressable; init only after catalog update, otherwise stale content is prefetched
            await LuaManager.Instance.InitializeAsync();

            // Bake block face tiles during the load bar; independent of any scene.
            window.SetProgress(0.6f);
            Render.VoxelFaceBaker.BakeAll();
            window.SetProgress(0.8f);

            window.Close();
            UIManager.Instance.OpenPanel<LaunchWindow>();
        }
    }
}
