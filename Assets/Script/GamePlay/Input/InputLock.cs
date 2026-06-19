using System.Collections.Generic;
using UnityEngine;

namespace GamePlay.InputSystem
{
    /// <summary>
    /// 全局输入锁。任何系统在需要屏蔽游戏世界输入时调用 PushLock，
    /// 完成后调用 PopLock。锁是栈式的，支持嵌套。
    /// 用于解决跨控制器（部署/战斗/过场）的输入互斥问题，
    /// 避免各控制器之间硬编码互相感知。
    /// </summary>
    public static class InputLock
    {
        private static readonly List<string> _lockStack = new List<string>();

        /// <summary>当前是否有任何输入锁处于激活状态</summary>
        public static bool IsLocked => _lockStack.Count > 0;

        /// <summary>当前锁的数量（用于调试）</summary>
        public static int LockCount => _lockStack.Count;

        /// <summary>压入一个输入锁。持有期间，所有游戏世界输入将被屏蔽。</summary>
        /// <param name="reason">锁的标识（如 "Deployment"、"AI_Turn"），用于调试和配对 Pop</param>
        public static void PushLock(string reason)
        {
            _lockStack.Add(reason);
            Debug.Log($"[InputLock] Push '{reason}' (depth={_lockStack.Count})");
        }

        /// <summary>弹出指定标识的输入锁。</summary>
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

        /// <summary>清除所有输入锁（场景切换/紧急重置时使用）</summary>
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
