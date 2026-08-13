using System.Collections.Generic;
using UnityEngine;

namespace GamePlay.InputSystem
{
    /// <summary>Global stack-based input lock for blocking game input (supports nesting).</summary>
    public static class InputLock
    {
        private static readonly List<string> _lockStack = new List<string>();

        public static bool IsLocked => _lockStack.Count > 0;

        public static int LockCount => _lockStack.Count;

        /// <summary>Pushes an input lock; blocks all game input while held.</summary>
        public static void PushLock(string reason)
        {
            _lockStack.Add(reason);
            Debug.Log($"[InputLock] Push '{reason}' (depth={_lockStack.Count})");
        }

        public static void PopLock(string reason)
        {
            if (_lockStack.Remove(reason))
            {
                Debug.Log($"[InputLock] Pop '{reason}' (depth={_lockStack.Count})");
            }
            else
            {
                Debug.LogWarning($"[InputLock] Pop '{reason}' failed: not found in stack");
            }
        }

        public static void Clear()
        {
            if (_lockStack.Count > 0)
            {
                Debug.LogWarning($"[InputLock] Clear: removed {_lockStack.Count} locks");
                _lockStack.Clear();
            }
        }
    }
}
