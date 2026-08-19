using UnityEngine;
using GamePlay.InputSystem;
using Core.System;

namespace DevTools
{
    /// <summary>
    /// Quick runtime HUD for verifying ActionMapRouter state.
    /// Attach to any GameObject in your scene. Toggle with F1.
    /// Tells you, live:
    ///   - router stack depth
    ///   - Actions.Gameplay.enabled
    ///   - Actions.UI.enabled
    ///   - current InputLock depth
    /// </summary>
    public class RouterDebugHUD : MonoBehaviour
    {
        public KeyCode toggleKey = KeyCode.F1;
        public bool startVisible = true;
        private bool _visible;

        void Awake() { _visible = startVisible; }

        void Update()
        {
            if (Input.GetKeyDown(toggleKey)) _visible = !_visible;
        }

        void OnGUI()
        {
            if (!_visible) return;
            var actions = InputManager.Actions;
            if (actions == null)
            {
                GUI.Box(new Rect(8, 8, 480, 60), "ActionMapRouter HUD: Actions null");
                return;
            }

            const int W = 520, H = 200;
            GUILayout.BeginArea(new Rect(8, 8, W, H), GUI.skin.box);
            GUILayout.Label("<b>ActionMapRouter HUD</b>   (toggle: " + toggleKey + ")", new GUIStyle(GUI.skin.label) { richText = true, fontSize = 14 });
            GUILayout.Label("stack depth   : " + ActionMapRouter.Depth);
            GUILayout.Label("is UI active  : " + ActionMapRouter.IsUIActive);
            GUILayout.Label("Gameplay map  : " + (actions.Gameplay.enabled ? "<color=#5EE05E>ON</color>" : "<color=#E05E5E>OFF</color>"));
            GUILayout.Label("UI map        : " + (actions.UI.enabled ? "<color=#5EE05E>ON</color>" : "<color=#E05E5E>OFF</color>"));
            GUILayout.Label("InputLock cnt : " + GamePlay.InputSystem.InputLock.LockCount);
            GUILayout.Label("Debug map     : " + (actions.Debug.enabled ? "ON" : "OFF"));
            GUILayout.Label("Time.timeScale: " + Time.timeScale);
            GUILayout.EndArea();
        }
    }
}
