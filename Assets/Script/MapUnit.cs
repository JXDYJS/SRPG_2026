using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MapSystem
{
    public class MapUnit : MonoBehaviour
    {
        [Header("能力设置")]
        public UnitMoveStats stats; // 在Inspector里配置：是飞还是跑？
        public float moveSpeed = 5.0f; // 移动速度

        [Header("当前状态 (只读)")]
        public Vector2Int gridPosition; // 当前逻辑坐标
        public bool isMoving = false;

        // 内部引用
        private MapManager mapManager;

        // ================== 生命周期 ==================

        void Start()
        {
            // 游戏开始时，向 UnitManager 注册我自己
            if (UnitManager.Instance != null)
            {
                UnitManager.Instance.RegisterUnit(this);
            }
        }

        void OnDestroy()
        {
            // 比如角色死亡或被销毁时，从管理器里注销
            if (UnitManager.Instance != null)
            {
                UnitManager.Instance.UnregisterUnit(this);
            }
        }

        // ================== 初始化与定位 ==================

        /// <summary>
        /// 初始化角色，通常由 GameManager 调用
        /// </summary>
        public void Setup(MapManager manager, int startX, int startZ)
        {
            this.mapManager = manager;
            // 瞬移到出生点
            SetGridPosition(startX, startZ);
        }

        /// <summary>
        /// 强制把角色瞬移到某个格子（吸附）
        /// </summary>
        public void SetGridPosition(int x, int z)
        {
            // 1. 记录旧位置，用于更新管理器
            Vector2Int oldPos = gridPosition;
            gridPosition = new Vector2Int(x, z);

            // 2. 通知 UnitManager 我位置变了
            if (UnitManager.Instance != null)
            {
                UnitManager.Instance.UpdateUnitPosition(this, oldPos);
            }

            // 3. 计算世界坐标（处理高度）
            float y = 0;
            if (mapManager != null && mapManager.logicalGrid != null)
            {
                var cell = mapManager.logicalGrid.GetCell(x, z);
                if (cell != null) y = cell.floorHeight;
            }

            // 4. 修改 Transform (假设胶囊体中心在底部或自行调整 +1 偏移)
            transform.position = new Vector3(x * mapManager.cellSize, y, z * mapManager.cellSize);
        }

        // ================== 移动逻辑 ==================

        /// <summary>
        /// 接收一个路径列表，开始移动
        /// </summary>
        public void MoveAlongPath(List<Vector2Int> path)
        {
            if (path == null || path.Count == 0) return;
            
            if (isMoving) StopAllCoroutines(); // 如果正在走，打断它
            StartCoroutine(MoveRoutine(path));
        }

        IEnumerator MoveRoutine(List<Vector2Int> path)
        {
            isMoving = true;

            // 依次走过路径上的每一个点
            foreach (var step in path)
            {
                // 1. 获取这一步的目标世界坐标
                float targetY = 0;
                if (mapManager.logicalGrid != null)
                {
                    var cell = mapManager.logicalGrid.GetCell(step.x, step.y);
                    if (cell != null) targetY = cell.floorHeight;
                }

                Vector3 targetWorldPos = new Vector3(
                    step.x * mapManager.cellSize, 
                    targetY, 
                    step.y * mapManager.cellSize
                );

                // 2. 平滑移动动画 (MoveTowards)
                // 只要距离还大于 0.05 就一直走
                while (Vector3.Distance(transform.position, targetWorldPos) > 0.05f)
                {
                    transform.position = Vector3.MoveTowards(transform.position, targetWorldPos, moveSpeed * Time.deltaTime);
                    yield return null; // 等待下一帧
                }

                // 3. 到达目标格：强制吸附，并更新逻辑坐标
                transform.position = targetWorldPos;
                
                // 更新逻辑坐标
                Vector2Int oldPos = gridPosition;
                gridPosition = step;

                // 只要我换了格子，就告诉管理器 (方便后续做陷阱触发、或者被人阻挡的判定)
                if (UnitManager.Instance != null)
                {
                    UnitManager.Instance.UpdateUnitPosition(this, oldPos);
                }
            }

            isMoving = false;
        }
    }
}


namespace MapSystem
{
    // 定义移动类型：走路、飞行、两栖
    public enum MoveType
    {
        Ground, // 地面：受高度差、障碍影响
        Flying, // 飞行：无视高度差、无视液体
        Amphibious // 两栖：可以下水
    }

    // 角色的移动能力面板
    [System.Serializable]
    public class UnitMoveStats
    {
        [Header("基础类型")]
        public MoveType moveType = MoveType.Ground;

        [Header("限制参数 (仅地面/两栖有效)")]
        [Tooltip("能向上爬多高的坎（默认1）")]
        public int jumpHeight = 1; 

        [Tooltip("能向下跳多深的坑（默认3）")]
        public int dropHeight = 3;
    }
}