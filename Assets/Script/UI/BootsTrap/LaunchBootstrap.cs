using Cysharp.Threading.Tasks;
using Lua;
using Managers;
using UI.Panel;
using UnityEngine;

namespace UI.BootsTrap
{
    /// <summary>
    /// LaunchBootstrap — 主菜单场景启动器。
    /// UIRoot/UIManager 由 BeforeSceneLoad 自动初始化。
    /// 启动先拉起 LoadWindow 跑版本检查 + 热更新，确认无问题后再进入主菜单 LaunchWindow。
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

        /// <summary>启动流程：版本检查 → 热更新 → Lua 预取 → 进入主菜单。</summary>
        private async UniTask RunStartupFlow(LoadWindow window)
        {
            await UpdateManager.CheckAndUpdate(window);

            // Lua 已 Addressable 化，必须在 catalog 更新后初始化，否则预取到旧内容
            await LuaManager.Instance.InitializeAsync();

            window.Close();
            UIManager.Instance.OpenPanel<LaunchWindow>();
        }
    }
}
