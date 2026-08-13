using UnityEngine;
using Managers;
using GamePlay;
using Global;
using GamePlay.InputSystem;
using Core.System;
using UnityEngine.InputSystem;

namespace GamePlay.Grid
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
            if (mainCam == null) return;

            Vector2 mousePos = InputManager.Actions.Gameplay.Point.ReadValue<Vector2>();
            Ray ray = mainCam.ScreenPointToRay(mousePos);
            RaycastHit hit;

            Debug.DrawRay(ray.origin, ray.direction * 20f, Color.red); 

            if (Physics.Raycast(ray, out hit, 1000f))
            {
                Vector3 hitPoint = hit.point - hit.normal * 0.01f;
                
                int x = Mathf.RoundToInt(hitPoint.x / mapManager.cellSize);
                int y = (int)(hitPoint.y / mapManager.cellSize);
                int z = Mathf.RoundToInt(hitPoint.z / mapManager.cellSize);

                Vector3Int clickPos = new Vector3Int(x, y, z);
                
                currentCursorPos = new Vector3(x * mapManager.cellSize, y * mapManager.cellSize, z * mapManager.cellSize);
            }

            if (InputManager.Actions.Gameplay.Confirm.WasPressedThisFrame())
            {
                if (InputUtil.IsPointerOverUI) return;

                if (Physics.Raycast(ray, out hit, 1000f))
                {
                    Vector3 hitPoint = hit.point - hit.normal * 0.01f;
                    int x = Mathf.RoundToInt(hitPoint.x / mapManager.cellSize);
                    int y = (int)(hitPoint.y / mapManager.cellSize);
                    int z = Mathf.RoundToInt(hitPoint.z / mapManager.cellSize);
                    OnTileClicked(new Vector3Int(x, y, z));
                }
            }
        }

        void OnTileClicked(Vector3Int pos)
        {
            if (mapManager.logicalGrid == null) return;

            BlockType type = mapManager.logicalGrid.GetBlock(pos);
            
            if (type != BlockType.Air)
            {
                Debug.Log($"<color=cyan>选中方块 {pos}</color> | 类型: {type}");
                
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
                Gizmos.DrawWireCube(currentCursorPos + new Vector3(0, 0.5f, 0), new Vector3(1, 1, 1) * mapManager.cellSize);
            }
        }
    }
}