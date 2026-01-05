using UnityEngine;

namespace MapSystem
{
    public class MapInteraction : MonoBehaviour
    {
        [Header("引用")]
        public MapManager mapManager;
        public Camera mainCam;

        [Header("调试")]
        public bool showCursor = true;
        private Vector3 currentCursorPos;

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
        }

        void Update()
        {
                // 1. 发射射线
        Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        // === 新增：在 Scene 窗口画出红色的激光线 ===
        // 这条线会从摄像机射向鼠标指的方向，长度 20 米
        Debug.DrawRay(ray.origin, ray.direction * 20f, Color.red); 
        // ==========================================

        if (Physics.Raycast(ray, out hit, 1000f))
        {
            // 打中了！
            // 更新黄框位置
            Vector3 localPoint = hit.point + hit.normal * 0.01f;
            int x = Mathf.RoundToInt(localPoint.x / mapManager.cellSize);
            int z = Mathf.RoundToInt(localPoint.z / mapManager.cellSize);

            currentCursorPos = new Vector3(x * mapManager.cellSize, hit.point.y, z * mapManager.cellSize);

            // 检测点击
            if (Input.GetMouseButtonDown(0))
            {
                Debug.Log($"<color=green>点击成功！打中了: {hit.collider.name}</color>");
                OnTileClicked(x, z);
            }
        }
        else
        {
            // 没打中！
            // 如果你点击鼠标，它会告诉你为什么没反应
            if (Input.GetMouseButtonDown(0))
            {
                Debug.LogWarning("<color=red>点击无效：射线就像射进了空气，没碰到任何 Collider！</color>");
            }
        }
        }

        // 点击逻辑
        void OnTileClicked(int x, int z)
        {
            // 问 MapManager 要数据
            if (mapManager.logicalGrid == null) return;

            // 注意：要用我们之前在 LogicalGrid 里写的 GetCell 方法
            // 如果你之前没写 GetCell，直接用 mapManager.logicalGrid.cells.ContainsKey 判断也行
            if (mapManager.logicalGrid.cells.TryGetValue(new Vector2Int(x, z), out LogicalCell cell))
            {
                Debug.Log($"<color=cyan>选中格子 [{x}, {z}]</color> | " +
                          $"高度: {cell.floorHeight} | " +
                          $"能走: {cell.canWalk} | " +
                          $"是水: {cell.canSwim}");
            }
            else
            {
                Debug.Log($"<color=red>格子 [{x}, {z}] 没有数据 (可能是空的)</color>");
            }
        }

        // 画一个简单的框框跟随鼠标，方便看
        void OnDrawGizmos()
        {
            if (showCursor && Application.isPlaying)
            {
                Gizmos.color = Color.yellow;
                Gizmos.DrawWireCube(currentCursorPos, new Vector3(1, 1, 1));
            }
        }
    }
}