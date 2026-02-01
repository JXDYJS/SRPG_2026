using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.unit;
using Managers;
using Command; // 引用 Command 命名空间

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
                testData.MoveRange = 5; // 增加移动力方便测试

                CharacterInstance testCharacter = new CharacterInstance(testData);
                playerUnit.Setup(testCharacter, mapManager, 0, 0);

                Debug.Log($"测试玩家已生成，HP: {playerUnit.Character.statSystem.currentHP}");
            }
        }

        void Update()
        {
            // --- 1. 左键移动 (生成 Command) ---
            if (Input.GetMouseButtonDown(0))
            {
                HandleClick();
            }

            // --- 2. Z键撤销 (测试 Undo) ---
            if (Input.GetKeyDown(KeyCode.Z))
            {
                if (playerUnit.isMoving)
                {
                    Debug.LogWarning("移动中禁止撤销（防止鬼畜）！");
                    return;
                }
                
                Debug.Log(">>> 尝试撤销上一步操作...");
                UndoSystem.Instance.Undo();
            }
        }

        void HandleClick()
        {
            if (mapManager == null || playerUnit == null) return;
            
            // 状态保护：移动中不能再下令
            if (playerUnit.IsBusy) 
            {
                Debug.LogWarning("角色忙碌中...");
                return;
            }

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit, 1000f))
            {
                Vector3 localPoint = hit.point - hit.normal * 0.01f;
                int targetX = Mathf.RoundToInt(localPoint.x / mapManager.cellSize);
                int targetZ = Mathf.RoundToInt(localPoint.z / mapManager.cellSize);
                Vector2Int targetPos = new Vector2Int(targetX, targetZ);

                // 寻路
                List<Vector2Int> path = AStar.FindPath(
                    playerUnit.gridPosition, 
                    targetPos, 
                    mapManager.logicalGrid, 
                    playerUnit.moveStats
                );

                if (path != null && path.Count > 0)
                {
                    Debug.Log($"路径确认，生成移动指令...");
                    currentDebugPath = path;

                    // ==========================================
                    // 【关键修改】使用 Command 模式执行
                    // ==========================================
                    var moveCmd = new MoveCommand(playerUnit, path);
                    moveCmd.Execute(); // 这会自动触发 BeginTransaction -> RegisterDirty -> Commit
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
            Gizmos.color = Color.yellow; // 改成黄色醒目一点
            for (int i = 0; i < currentDebugPath.Count - 1; i++)
            {
                Vector2Int current = currentDebugPath[i];
                Vector2Int next = currentDebugPath[i + 1];
                Vector3 p1 = new Vector3(current.x, 0.5f, current.y) * mapManager.cellSize;
                Vector3 p2 = new Vector3(next.x, 0.5f, next.y) * mapManager.cellSize;
                Gizmos.DrawLine(p1, p2);
                Gizmos.DrawSphere(p2, 0.1f);
            }
        }
    }
}