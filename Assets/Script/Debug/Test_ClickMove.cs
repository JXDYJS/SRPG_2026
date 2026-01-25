using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.unit; // 确保引用了 MapUnit 所在的命名空间
using Managers;

namespace GamePlay
{
    public class Test_ClickMove : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;
        public MapUnit playerUnit;
        public Camera mainCam;

        [Header("调试开关")]
        public bool showPathGizmos = true;
        private List<Vector2Int> currentDebugPath;

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
            Invoke(nameof(InitPlayer), 0.2f);
        }

        void InitPlayer()
        {
            if (playerUnit != null && mapManager != null)
            {
                CharacterData testData = ScriptableObject.CreateInstance<CharacterData>();
                testData.CharacterName = "测试勇者";
                testData.BaseMaxHP = 100;
                testData.BaseATK = 10;
                testData.BaseDEF = 2;
                testData.MoveRange = 3;

                CharacterInstance testCharacter = new CharacterInstance(testData);

                // 调用 Setup
                playerUnit.Setup(testCharacter, mapManager, 0, 0);

                Debug.Log($"测试玩家已生成，HP: {playerUnit.Character.statSystem.currentHP}");
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
                Debug.Log("角色正在移动中...");
                return;
            }

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit, 1000f))
            {
                Vector3 localPoint = hit.point - hit.normal * 0.01f;
                int targetX = Mathf.RoundToInt(localPoint.x / mapManager.cellSize);
                int targetZ = Mathf.RoundToInt(localPoint.z / mapManager.cellSize);
                Vector2Int targetPos = new Vector2Int(targetX, targetZ);

                // 【修复点在此】将 playerUnit.stats 改为 playerUnit.moveStats
                List<Vector2Int> path = AStar.FindPath(
                    playerUnit.gridPosition, 
                    targetPos, 
                    mapManager.logicalGrid, 
                    playerUnit.moveStats // <--- 这里改了
                );

                if (path != null && path.Count > 0)
                {
                    Debug.Log($"路径找到！长度: {path.Count}");
                    currentDebugPath = path;
                    playerUnit.MoveAlongPath(path);
                }
                else
                {
                    Debug.LogWarning($"无法到达 [{targetX}, {targetZ}]");
                }
            }
        }

        void OnDrawGizmos()
        {
            if (!showPathGizmos || currentDebugPath == null || mapManager == null) return;
            Gizmos.color = Color.red;
            for (int i = 0; i < currentDebugPath.Count - 1; i++)
            {
                Vector2Int current = currentDebugPath[i];
                Vector2Int next = currentDebugPath[i + 1];
                Vector3 p1 = new Vector3(current.x, 1.5f, current.y) * mapManager.cellSize;
                Vector3 p2 = new Vector3(next.x, 1.5f, next.y) * mapManager.cellSize;
                Gizmos.DrawLine(p1, p2);
                Gizmos.DrawSphere(p2, 0.2f);
            }
        }
    }
}