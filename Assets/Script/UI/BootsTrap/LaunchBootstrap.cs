using Managers;
using UI.Panel;
using UnityEngine;

namespace UI.BootsTrap
{
    /// <summary>
    /// LaunchBootstrap — 主菜单场景启动器。
    /// UIRoot/UIManager 由 BeforeSceneLoad 自动初始化，这里只需在 Start 拉起 LaunchWindow。
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
            UIManager.Instance.OpenPanel<LaunchWindow>();
        }
    }
}
