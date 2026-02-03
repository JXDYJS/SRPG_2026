using UnityEngine;
using Managers;
using GamePlay;
using GamePlay.Grid; // 确保引用了 BlockType
using Global;
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
            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;

            // 调试线
            Debug.DrawRay(ray.origin, ray.direction * 20f, Color.red); 

            if (Physics.Raycast(ray, out hit, 1000f))
            {
                // 1. 计算精确的 3D 坐标
                // 向法线反方向偏移一点点，确保点在方块内部而不是表面
                Vector3 hitPoint = hit.point - hit.normal * 0.01f;
                
                int x = Mathf.RoundToInt(hitPoint.x / mapManager.cellSize);
                int y = (int)(hitPoint.y / mapManager.cellSize); // 新增 Y 轴
                int z = Mathf.RoundToInt(hitPoint.z / mapManager.cellSize);

                Vector3Int clickPos = new Vector3Int(x, y, z);
                
                // 更新光标位置（吸附到格子中心）
                currentCursorPos = new Vector3(x * mapManager.cellSize, y * mapManager.cellSize, z * mapManager.cellSize);

                // 检测点击
                if (Input.GetMouseButtonDown(0))
                {
                    OnTileClicked(clickPos);
                }
            }
        }

        // 修改：参数改为 Vector3Int
        void OnTileClicked(Vector3Int pos)
        {
            if (mapManager.logicalGrid == null) return;

            // 新的查询方式
            BlockType type = mapManager.logicalGrid.GetBlock(pos);
            
            if (type != BlockType.Air)
            {
                Debug.Log($"<color=cyan>选中方块 {pos}</color> | 类型: {type}");
                
                // 如果你想获取顶部高度（例如为了放东西）
                float topHeight = mapManager.logicalGrid.GetBlockHeight(type);
                Debug.Log($"物理顶部高度 (相对Y): {topHeight}");
            }
            else
            {
                Debug.Log($"<color=red>点击了空气或无效区域 {pos}</color>");
            }
        }

        void OnDrawGizmos()
        {
            if (showCursor && Application.isPlaying)
            {
                Gizmos.color = Color.yellow;
                Gizmos.DrawWireCube(currentCursorPos, new Vector3(1, 1, 1) * mapManager.cellSize);
            }
        }
    }
}