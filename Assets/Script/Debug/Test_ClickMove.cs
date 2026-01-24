using System.Collections.Generic;
using UnityEngine;

namespace MapSystem
{
    public class Test_ClickMove : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;
        public MapUnit playerUnit; // 记得把你的 Player 拖进来
        public Camera mainCam;

        [Header("调试开关")]
        public bool showPathGizmos = true;
        private List<Vector2Int> currentDebugPath; // 用于在 Scene 窗口画红线

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;

            // 延迟初始化：因为 MapManager 需要先 LoadMap (Awake/Start顺序问题)
            // 0.2秒后把角色放到 (0,0)
            Invoke(nameof(InitPlayer), 0.2f);
        }

        void InitPlayer()
        {
            if (playerUnit != null && mapManager != null)
            {
                // 设置出生点 (0, 0)
                playerUnit.Setup(mapManager, 0, 0);
                Debug.Log("测试玩家已生成在 (0,0)");
            }
        }

        void Update()
        {
            if (Input.GetMouseButtonDown(0))
            {
                HandleClick();
            }
        }

        void HandleClick()
        {
            if (mapManager == null || playerUnit == null) return;
            if (playerUnit.isMoving) 
            {
                Debug.Log("角色正在移动中，请稍后...");
                return;
            }

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit, 1000f))
            {
                // 1. 计算点击的目标格子 (使用内缩算法，防止点到侧面算错)
                Vector3 localPoint = hit.point - hit.normal * 0.01f;
                int targetX = Mathf.RoundToInt(localPoint.x / mapManager.cellSize);
                int targetZ = Mathf.RoundToInt(localPoint.z / mapManager.cellSize);

                // 2. 准备终点
                Vector2Int targetPos = new Vector2Int(targetX, targetZ);

                // 3. 调用 A* 寻路
                // 关键点：传入 playerUnit.stats，让算法知道这一跳能不能跳过去
                List<Vector2Int> path = AStar.FindPath(
                    playerUnit.gridPosition, 
                    targetPos, 
                    mapManager.logicalGrid, 
                    playerUnit.stats
                );

                // 4. 结果处理
                if (path != null && path.Count > 0)
                {
                    Debug.Log($"路径找到！长度: {path.Count}");
                    currentDebugPath = path; // 存下来画图用
                    playerUnit.MoveAlongPath(path);
                }
                else
                {
                    Debug.LogWarning($"<color=red>无法到达 [{targetX}, {targetZ}]</color> (可能是障碍、高度差太大或悬空)");
                }
            }
        }

        // 画出路径线，方便调试
        void OnDrawGizmos()
        {
            if (!showPathGizmos || currentDebugPath == null || mapManager == null) return;

            Gizmos.color = Color.red;
            for (int i = 0; i < currentDebugPath.Count - 1; i++)
            {
                Vector2Int current = currentDebugPath[i];
                Vector2Int next = currentDebugPath[i + 1];

                // 为了好看，把线稍微抬高 1 米
                Vector3 p1 = new Vector3(current.x, 1.5f, current.y) * mapManager.cellSize;
                Vector3 p2 = new Vector3(next.x, 1.5f, next.y) * mapManager.cellSize;

                // 如果你想线贴着地面走，需要去 grid 里查高度，这里为了性能直接画在半空
                Gizmos.DrawLine(p1, p2);
                Gizmos.DrawSphere(p2, 0.2f);
            }
        }
    }
}