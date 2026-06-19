using UnityEngine.EventSystems;

namespace GamePlay.InputSystem
{
    /// <summary>
    /// 输入相关工具方法。统一入口，避免各处重复调用底层 API。
    /// </summary>
    public static class InputUtil
    {
        /// <summary>
        /// 鼠标是否悬停在 UI 上（会阻挡游戏世界点击）。
        /// 统一封装 EventSystem.current.IsPointerOverGameObject()，
        /// 自动处理 EventSystem 为 null 的情况。
        /// </summary>
        public static bool IsPointerOverUI
        {
            get
            {
                return EventSystem.current != null
                    && EventSystem.current.IsPointerOverGameObject();
            }
        }
    }
}
