using UnityEngine;
using Managers;
using UI.Item;

namespace UI.Tooltip
{
    /// <summary>
    /// TooltipHost — TooltipWindow 的薄封装，屏蔽 UIManager 调用细节。
    ///
    /// 单一实例（面板按类型缓存），悬停时 Show、离开时 Hide、移动时 Move 跟随光标。
    /// </summary>
    public static class TooltipHost
    {
        private static TooltipWindow _window;

        /// <summary>以统一描述弹出（SimpleSlot 悬停等已有描述的场景）</summary>
        public static void Show(IItemDescriptor desc, Vector2 screenPosition)
        {
            if (desc == null || UIManager.Instance == null) return;
            _window = UIManager.Instance.OpenPanel<TooltipWindow>(
                new TooltipWindow.TooltipData(desc, screenPosition), UILayer.Topmost);
        }

        /// <summary>以 string id 弹出（仅持有 id、无运行时实例的场景）</summary>
        public static void Show(string id, Vector2 screenPosition)
        {
            if (string.IsNullOrEmpty(id) || UIManager.Instance == null) return;
            _window = UIManager.Instance.OpenPanel<TooltipWindow>(
                new TooltipWindow.TooltipData(id, screenPosition), UILayer.Topmost);
        }

        /// <summary>光标移动时重定位（OnPointerMove 高频调用）</summary>
        public static void Move(Vector2 screenPosition)
        {
            if (_window != null)
            {
                _window.MoveTo(screenPosition);
            }
        }

        /// <summary>隐藏并关闭</summary>
        public static void Hide()
        {
            _window = null;
            if (UIManager.Instance != null)
            {
                UIManager.Instance.ClosePanel<TooltipWindow>();
            }
        }
    }
}
