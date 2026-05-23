using UnityEngine;

namespace UI
{
    public class UIRoot : MonoBehaviour
    {
        private const string BACKGROUND_LAYER = "Background_Layer";
        private const string WINDOW_LAYER = "Window_Layer";
        private const string POPUP_LAYER = "Popup_Layer";
        private const string TOPMOST_LAYER = "Topmost_Layer";

        public Transform Background { get; private set; }
        public Transform Window { get; private set; }
        public Transform Popup { get; private set; }
        public Transform Topmost { get; private set; }

        private void Awake()
        {
            Background = transform.Find(BACKGROUND_LAYER);
            Window = transform.Find(WINDOW_LAYER);
            Popup = transform.Find(POPUP_LAYER);
            Topmost = transform.Find(TOPMOST_LAYER);

            if (Background == null) Debug.LogError($"UIRoot: 未找到子节点 {BACKGROUND_LAYER}");
            if (Window == null) Debug.LogError($"UIRoot: 未找到子节点 {WINDOW_LAYER}");
            if (Popup == null) Debug.LogError($"UIRoot: 未找到子节点 {POPUP_LAYER}");
            if (Topmost == null) Debug.LogError($"UIRoot: 未找到子节点 {TOPMOST_LAYER}");
        }
    }
}
