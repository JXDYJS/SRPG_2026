using UnityEngine.EventSystems;

namespace GamePlay.InputSystem
{
    /// <summary>Input helpers; unified entry to avoid duplicating low-level API calls.</summary>
    public static class InputUtil
    {
        /// <summary>True when the pointer is over UI; null-safe EventSystem check.</summary>
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
