using System.Collections.Generic;
using Core.System;

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
            /// <summary>Block Gameplay while open (default for popups).</summary>
            Modal,
            /// <summary>Keep Gameplay alive (e.g. lightweight tooltips).</summary>
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

        /// <summary>Push a panel entry. Idempotent only if the same PanelId+Mode is on top.</summary>
        public static void Push(string panelId, UIInputMode mode = UIInputMode.Modal)
        {
            if (_stack.Count > 0 && _stack.Peek().PanelId == panelId && _stack.Peek().Mode == mode)
            {
                return;
            }
            _stack.Push(new Entry(panelId, mode));
            ApplyStack();
        }

        /// <summary>Pop a panel entry by PanelId. Safe to call with arbitrary order; walks the stack
        /// when the entry is not on top (defensive against exception-path closes).</summary>
        public static void Pop(string panelId)
        {
            if (_stack.Count == 0) return;

            if (_stack.Peek().PanelId == panelId)
            {
                _stack.Pop();
                ApplyStack();
                return;
            }

            // Defensive: drain + filter into a new stack to remove non-top entries
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

        /// <summary>Reset all UI ownership (used on scene unload / end of battle).</summary>
        public static void ClearAll()
        {
            if (_stack.Count == 0) return;
            _stack.Clear();
            ApplyStack();
        }

        private static void ApplyStack()
        {
            var actions = InputManager.Actions;
            if (actions == null) return;

            bool hasEntries = _stack.Count > 0;
            if (hasEntries)
            {
                actions.UI.Enable();
            }
            else
            {
                actions.UI.Disable();
            }

            // Block Gameplay only when top of stack demands modal ownership.
            bool topIsModal = hasEntries && _stack.Peek().Mode == UIInputMode.Modal;
            if (topIsModal)
            {
                actions.Gameplay.Disable();
            }
            else
            {
                actions.Gameplay.Enable();
            }

            // Debug map stays live unless explicitly disabled by a future Modal mode.
            actions.Debug.Enable();
        }
    }
}
