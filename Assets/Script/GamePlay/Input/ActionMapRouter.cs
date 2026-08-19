using System.Collections.Generic;
using Core.System;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace GamePlay.InputSystem
{
    /// <summary>
    /// Stack-based Input ActionMap router driven by UI panel lifecycle.
    /// Empty stack → Gameplay enabled, UI disabled.
    /// Non-empty stack → UI enabled; Gameplay disabled iff the top entry is <see cref="UIInputMode.Modal"/>.
    /// Panels declare their own mode via <see cref="BaseUIPanel"/> default wiring.
    /// </summary>
    public static class ActionMapRouter
    {
        public enum UIInputMode
        {
            /// <summary>Block Gameplay while open (default for popups and menus).</summary>
            Modal,
            /// <summary>Keep Gameplay alive (e.g. lightweight tooltips and background panels).</summary>
            NonModal
        }

        private struct Entry
        {
            public string PanelId;
            public UIInputMode Mode;
            public Entry(string id, UIInputMode mode) { PanelId = id; Mode = mode; }
        }

        private static readonly Stack<Entry> _stack = new Stack<Entry>();

        /// <summary>True when at least one UI panel owns input focus.</summary>
        public static bool IsUIActive => _stack.Count > 0;

        public static int Depth => _stack.Count;

        /// <summary>
        /// Push a panel entry. Auto-dedups any prior entries with the same PanelId so the stack
        /// never holds ghost entries (defensive: UIManager cache-hit path may call Push twice).
        /// </summary>
        public static void Push(string panelId, UIInputMode mode = UIInputMode.Modal)
        {
            if (string.IsNullOrEmpty(panelId)) return;

            // Defensive dedup: drop any prior entry with the same PanelId so the new push
            // truly represents "this panel is now active".
            if (ContainsPanel(panelId))
            {
                RemoveByPanelId(panelId);
            }
            _stack.Push(new Entry(panelId, mode));
            ApplyStack();
        }

        /// <summary>Pop the top entry if matching; otherwise walk the stack looking for it.</summary>
        public static void Pop(string panelId)
        {
            if (string.IsNullOrEmpty(panelId) || _stack.Count == 0) return;

            if (_stack.Peek().PanelId == panelId)
            {
                _stack.Pop();
                ApplyStack();
                return;
            }
            // Fallback: panel closed via non-top path (exception / direct SetActive elsewhere).
            RemoveByPanelId(panelId);
            // ApplyStack() called inside RemoveByPanelId when something actually changed.
        }

        /// <summary>Reset all UI ownership (called on scene unload).</summary>
        public static void ClearAll()
        {
            if (_stack.Count == 0) return;
            _stack.Clear();
            ApplyStack();
        }

        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        private static void HookSceneLifecycle()
        {
            SceneManager.sceneUnloaded -= OnSceneUnloaded;
            SceneManager.sceneUnloaded += OnSceneUnloaded;
        }

        private static void OnSceneUnloaded(Scene s)
        {
            // Scene switch implies all panels are destroyed; reset the stack defensively.
            ClearAll();
        }

        private static bool ContainsPanel(string panelId)
        {
            foreach (var e in _stack)
            {
                if (e.PanelId == panelId) return true;
            }
            return false;
        }

        private static void RemoveByPanelId(string panelId)
        {
            // Drain into a temp stack, skip first occurrence, push back preserving order.
            var keep = new Stack<Entry>(_stack.Count);
            bool removed = false;
            while (_stack.Count > 0)
            {
                var entry = _stack.Pop();
                if (!removed && entry.PanelId == panelId)
                {
                    removed = true;
                    continue;
                }
                keep.Push(entry);
            }
            while (keep.Count > 0) _stack.Push(keep.Pop());
            if (removed) ApplyStack();
        }

        private static void ApplyStack()
        {
            var actions = InputManager.Actions;
            if (actions == null) return;

            bool hasEntries = _stack.Count > 0;
            if (hasEntries) actions.UI.Enable();
            else actions.UI.Disable();

            bool topIsModal = hasEntries && _stack.Peek().Mode == UIInputMode.Modal;
            if (topIsModal) actions.Gameplay.Disable();
            else actions.Gameplay.Enable();

            // Debug map always live; future Modal mode can disable explicitly.
            actions.Debug.Enable();
        }
    }
}
