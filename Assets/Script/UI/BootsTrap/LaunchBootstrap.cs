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
            await UpdateManager.CheckAndUpdate(window);

            // Lua is Addressable; init only after catalog update, otherwise stale content is prefetched
            await LuaManager.Instance.InitializeAsync();

            window.Close();
            UIManager.Instance.OpenPanel<LaunchWindow>();
        }
    }
}
