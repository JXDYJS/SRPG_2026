using UnityEngine;
using Utils;

namespace DebugSystem
{
    /// <summary>Renders debug gizmos; lazily created via DebugGizmos.EnsureHost().</summary>
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
