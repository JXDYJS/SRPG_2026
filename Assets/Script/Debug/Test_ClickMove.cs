using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.Units;
using Managers;
using Command;
using GamePlay.Grid;
using Global;
using Core.System;
using UnityEngine.InputSystem;

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
        private List<Vector3Int> currentDebugPath;

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
            Invoke(nameof(InitPlayer), 0.2f);
        }

        void OnEnable()
        {
            var gameplay = InputManager.Actions.Gameplay;
            gameplay.Confirm.performed += OnConfirm;
            var debug = InputManager.Actions.Debug;
            debug.Undo.performed += OnUndo;
        }

        void OnDisable()
        {
            var gameplay = InputManager.Actions.Gameplay;
            gameplay.Confirm.performed -= OnConfirm;
            var debug = InputManager.Actions.Debug;
            debug.Undo.performed -= OnUndo;
        }

        void InitPlayer()
        {
            if (playerUnit != null && mapManager != null)
            {
                CharacterData testData = ScriptableObject.CreateInstance<CharacterData>();
                testData.CharacterName = "3D勇者";
                testData.MoveRange = 10;
                testData.BaseMaxHP = 100;
                testData.Height = 2;

                CharacterInstance testCharacter = new CharacterInstance(testData);
                
                playerUnit.Setup(testCharacter, mapManager, 0, 1, 0); 
                playerUnit.SetGridPosition(new Vector3Int(0, 1, 0)); 

                Debug.Log($"测试玩家就绪，位于 {playerUnit.gridPosition}");
            }
        }

        private void OnConfirm(InputAction.CallbackContext ctx)
        {
            HandleClick();
        }

        private void OnUndo(InputAction.CallbackContext ctx)
        {
            if (playerUnit != null && !playerUnit.isMoving)
            {
                Debug.Log(">>> 撤销 3D 移动...");
                UndoSystem.Instance.Undo();
            }
        }

        void HandleClick()
        {
            if (mapManager == null || playerUnit == null || playerUnit.IsBusy) return;

            Vector2 mousePos = InputManager.Actions.Gameplay.Point.ReadValue<Vector2>();
            Ray ray = mainCam.ScreenPointToRay(mousePos);
            if (Physics.Raycast(ray, out RaycastHit hit, 1000f))
            {
                Vector3 hitPoint = hit.point - hit.normal * 0.01f;
                int tx = Mathf.RoundToInt(hitPoint.x / mapManager.cellSize);
                int ty = (int)(hitPoint.y / mapManager.cellSize);
                int tz = Mathf.RoundToInt(hitPoint.z / mapManager.cellSize);
                
                Vector3Int targetPos = new Vector3Int(tx, ty, tz);

                BlockType block = mapManager.logicalGrid.GetBlock(targetPos);
                Debug.Log($"尝试寻路到: {targetPos} (类型: {block})");

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
                
                Vector3 p1 = new Vector3(current.x, current.y + 1.2f, current.z) * mapManager.cellSize;
                Vector3 p2 = new Vector3(next.x, next.y + 1.2f, next.z) * mapManager.cellSize;
                
                Gizmos.DrawLine(p1, p2);
                Gizmos.DrawSphere(p2, 0.1f);
            }
        }
    }
}