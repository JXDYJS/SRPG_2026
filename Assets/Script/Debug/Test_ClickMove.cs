using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.Unit;
using Managers;
using Command;
using GamePlay.Grid; // 引用 AStar
using Global;
using GamePlay;

namespace DebugSystem
{
    public class Test_ClickMove : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;
        public MapUnit playerUnit;
        public Camera mainCam;

        [Header("调试开关")]
        public bool showPathGizmos = true;
        private List<Vector3Int> currentDebugPath; // 改为 3D 路径

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
            Invoke(nameof(InitPlayer), 0.2f);
        }

        void InitPlayer()
        {
            if (playerUnit != null && mapManager != null)
            {
                // 确保数据已初始化
                CharacterData testData = ScriptableObject.CreateInstance<CharacterData>();
                testData.CharacterName = "3D勇者";
                testData.MoveRange = 10; // 跑远点测试
                testData.BaseMaxHP = 100;
                testData.Height = 2;

                CharacterInstance testCharacter = new CharacterInstance(testData);
                
                // 这里的出生点 (0,0,0) 假设 (0,0,0) 有方块
                // 如果没有，你需要手动指定一个合法的 gridPosition
                playerUnit.Setup(testCharacter, mapManager, 0, 1,0); 
                // 注意：Setup 内部可能还需要适配 3D 坐标的重载，或者你手动 set
                playerUnit.SetGridPosition(new Vector3Int(0, 1, 0)); 

                Debug.Log($"测试玩家就绪，位于 {playerUnit.gridPosition}");
            }
        }

        void Update()
        {
            if (Input.GetMouseButtonDown(0))
            {
                HandleClick();
            }

            // 测试 Undo
            if (Input.GetKeyDown(KeyCode.Z))
            {
                if (!playerUnit.isMoving)
                {
                    Debug.Log(">>> 撤销 3D 移动...");
                    UndoSystem.Instance.Undo();
                }
            }
        }

        void HandleClick()
        {
            if (mapManager == null || playerUnit == null || playerUnit.IsBusy) return;

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit, 1000f))
            {
                // 1. 计算点击的方块坐标 (目标脚底方块)
                Vector3 hitPoint = hit.point - hit.normal * 0.01f;
                int tx = Mathf.RoundToInt(hitPoint.x / mapManager.cellSize);
                int ty = (int)(hitPoint.y / mapManager.cellSize);
                int tz = Mathf.RoundToInt(hitPoint.z / mapManager.cellSize);
                
                Vector3Int targetPos = new Vector3Int(tx, ty, tz);

                // 2. 验证目标是否有效 (是不是空气?)
                BlockType block = mapManager.logicalGrid.GetBlock(targetPos);
                Debug.Log($"尝试寻路到: {targetPos} (类型: {block})");

                // 3. 执行 3D A* 寻路
                List<Vector3Int> path = AStar.FindPath(
                    playerUnit.gridPosition, 
                    targetPos, 
                    mapManager.logicalGrid, 
                    playerUnit.moveStats
                );

                if (path != null && path.Count > 0)
                {
                    Debug.Log($"路径找到！长度: {path.Count}");
                    currentDebugPath = path;

                    // 4. 发送 MoveCommand (确保 MoveCommand 构造函数接受 List<Vector3Int>)
                    var moveCmd = new MoveCommand(playerUnit, path);
                    moveCmd.Execute();
                }
                else
                {
                    Debug.LogWarning("无法到达该位置 (可能太高、被阻挡或距离过远)");
                }
            }
        }

        void OnDrawGizmos()
        {
            if (!showPathGizmos || currentDebugPath == null || mapManager == null) return;
            Gizmos.color = Color.yellow;
            
            for (int i = 0; i < currentDebugPath.Count - 1; i++)
            {
                Vector3Int current = currentDebugPath[i];
                Vector3Int next = currentDebugPath[i + 1];
                
                // 简单的可视化，高度加个 1.5 防止被埋在土里
                Vector3 p1 = new Vector3(current.x, current.y + 1.2f, current.z) * mapManager.cellSize;
                Vector3 p2 = new Vector3(next.x, next.y + 1.2f, next.z) * mapManager.cellSize;
                
                Gizmos.DrawLine(p1, p2);
                Gizmos.DrawSphere(p2, 0.1f);
            }
        }
    }
}