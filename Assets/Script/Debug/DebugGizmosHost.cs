using UnityEngine;
using Utils;

namespace DebugSystem
{
    /// <summary>
    /// DebugGizmos 渲染宿主 — 懒加载，由 DebugGizmos.EnsureHost() 自动创建
    /// </summary>
    public class DebugGizmosHost : MonoBehaviour
    {
        public static DebugGizmosHost Instance { get; private set; }

        void Awake()
        {
            Instance = this;
        }

        void OnDrawGizmos()
        {
            DebugGizmos.RenderAll();
        }

        void Update()
        {
            if (DebugGizmos.Count > 0)
                DebugGizmos.TickLifetime();
        }
    }
}
