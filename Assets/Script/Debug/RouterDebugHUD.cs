using System.Reflection;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.InputSystem;
using Core.System;

namespace DevTools
{
    /// <summary>
    /// Quick runtime HUD for verifying ActionMapRouter state.
    /// Attach to any GameObject in your scene. Toggle with F1.
    /// </summary>
    public class RouterDebugHUD : MonoBehaviour
    {
        public KeyCode toggleKey = KeyCode.F1;
        public bool startVisible = true;
        private bool _visible;

        private static readonly FieldInfo _stackField =
            typeof(ActionMapRouter).GetField("_stack", BindingFlags.NonPublic | BindingFlags.Static);
        private static readonly FieldInfo _entryPanelId =
            typeof(ActionMapRouter).GetNestedType("Entry", BindingFlags.NonPublic)?.GetField("PanelId");
        private static readonly FieldInfo _entryMode =
            typeof(ActionMapRouter).GetNestedType("Entry", BindingFlags.NonPublic)?.GetField("Mode");

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

            const int W = 520, H = 360;
            GUILayout.BeginArea(new Rect(8, 8, W, H), GUI.skin.box);
            GUILayout.Label("<b>ActionMapRouter HUD</b>   (toggle: " + toggleKey + ")", new GUIStyle(GUI.skin.label) { richText = true, fontSize = 14 });
            GUILayout.Label("stack depth   : " + ActionMapRouter.Depth);
            GUILayout.Label("is UI active  : " + ActionMapRouter.IsUIActive);
            GUILayout.Label("Gameplay map  : " + (actions.Gameplay.enabled ? "<color=#5EE05E>ON</color>" : "<color=#E05E5E>OFF</color>"));
            GUILayout.Label("UI map        : " + (actions.UI.enabled ? "<color=#5EE05E>ON</color>" : "<color=#E05E5E>OFF</color>"));
            GUILayout.Label("InputLock cnt : " + GamePlay.InputSystem.InputLock.LockCount);
            GUILayout.Label("Debug map     : " + (actions.Debug.enabled ? "ON" : "OFF"));
            GUILayout.Label("Time.timeScale: " + Time.timeScale);

            // Stack dump (top → bottom)
            GUILayout.Space(6);
            GUILayout.Label("<b>Stack entries (top → bottom):</b>", new GUIStyle(GUI.skin.label) { richText = true });
            DumpStack();

            GUILayout.EndArea();
        }

        private static void DumpStack()
        {
            if (_stackField == null || _entryPanelId == null || _entryMode == null)
            {
                GUILayout.Label("  (reflection: stack field not found)");
                return;
            }
            var raw = _stackField.GetValue(null) as System.Collections.IEnumerable;
            if (raw == null) { GUILayout.Label("  (reflection: stack null)"); return; }

            // Stack enumerates top→bottom; copy so we can show in order
            var entries = new List<string>();
            foreach (var e in raw)
            {
                string id = _entryPanelId.GetValue(e) as string ?? "?";
                object mode = _entryMode.GetValue(e);
                entries.Add("  " + id + " (" + mode + ")");
            }
            if (entries.Count == 0) GUILayout.Label("  <empty>");
            else foreach (var s in entries) GUILayout.Label(s);
        }
    }
}
