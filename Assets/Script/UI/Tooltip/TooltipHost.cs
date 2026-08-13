using UnityEngine;
using Managers;
using UI.Item;

namespace UI.Tooltip
{
    /// <summary>Thin wrapper over TooltipWindow that hides UIManager call details.</summary>
    public static class TooltipHost
    {
        private static TooltipWindow _window;

        /// <summary>Shows a tooltip from an item descriptor.</summary>
        public static void Show(IItemDescriptor desc, Vector2 screenPosition)
        {
            if (desc == null || UIManager.Instance == null) return;
            _window = UIManager.Instance.OpenPanel<TooltipWindow>(
                new TooltipWindow.TooltipData(desc, screenPosition), UILayer.Topmost);
        }

        /// <summary>Shows a tooltip from an item id when no runtime instance exists.</summary>
        public static void Show(string id, Vector2 screenPosition)
        {
            if (string.IsNullOrEmpty(id) || UIManager.Instance == null) return;
            _window = UIManager.Instance.OpenPanel<TooltipWindow>(
                new TooltipWindow.TooltipData(id, screenPosition), UILayer.Topmost);
        }

        /// <summary>Repositions the tooltip at the cursor.</summary>
        public static void Move(Vector2 screenPosition)
        {
            if (_window != null)
            {
                _window.MoveTo(screenPosition);
            }
        }

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
