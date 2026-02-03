using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.unit;
using Managers;
using Command;
using Global;
using GamePlay.Grid;
using Core.System; // 引用阵营系统

namespace DebugSystem
{
    public class Test_Battle : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;
        public Camera mainCam;

        [Header("单位容器")]
        public MapUnit playerUnit;
        public MapUnit enemyUnit;
        public MapUnit pigmanUnit; // 中立单位

        // 运行时状态
        private MapUnit selectedUnit;
        private List<Vector2Int> moveRangeTiles = new List<Vector2Int>();
        private List<Vector2Int> attackRangeTiles = new List<Vector2Int>();

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
            Invoke(nameof(InitBattleField), 0.2f);
        }

        void InitBattleField()
        {
            if (mapManager == null) return;

            // 1. 创建玩家 (Player, 蓝色)
            // 攻击范围：十字形直线 (Line)
            playerUnit = SpawnDummyUnit("亚瑟(玩家)", 0, 0, Color.blue, FactionType.Player, 
                AttackPatternType.Line, 1);

            // 2. 创建敌人 (Enemy, 红色)
            // 攻击范围：菱形 (Diamond)
            enemyUnit = SpawnDummyUnit("哥布林(怪)", 3, 0, Color.red, FactionType.Enemy, 
                AttackPatternType.Diamond, 1);

            // 3. 创建中立生物 (Neutral, 黄色)
            // 攻击范围：方形 (Square)
            pigmanUnit = SpawnDummyUnit("猪人(中立)", 2, 2, Color.yellow, FactionType.Neutral, 
                AttackPatternType.Square, 1);

            // 手动注册到 UnitManager (如果你没有自动注册的话)
            // UnitManager.Instance.RegisterUnit(...) 
            
            Debug.Log("战斗测试场景初始化完毕！");
            Debug.Log("操作说明：\n左键=选人/移动\n右键=攻击\nCtrl+右键=强行攻击中立单位\n空格键=模拟敌人回合");
        }

        // 辅助生成单位
        MapUnit SpawnDummyUnit(string name, int x, int z, Color color, FactionType faction, 
            AttackPatternType pattern, int range)
        {
            // 1. 造数据 (CharacterData)
            CharacterData data = ScriptableObject.CreateInstance<CharacterData>();
            data.CharacterName = name;
            data.BaseMaxHP = 100;
            data.BaseATK = 20;
            data.MoveRange = 3;
            data.DefaultFaction = faction;
            
            // 配置攻击模式
            data.Pattern = pattern;
            data.MinRange = 1;
            data.MaxRange = range;

            // 2. 造灵魂 (CharacterInstance)
            CharacterInstance soul = new CharacterInstance(data);

            // 3. 造肉体 (GameObject)
            GameObject go = GameObject.CreatePrimitive(PrimitiveType.Capsule);
            go.name = name;
            go.GetComponent<Renderer>().material.color = color;
            
            // 4. 挂脚本并初始化
            MapUnit unit = go.AddComponent<MapUnit>();
            unit.Setup(soul, mapManager, x, z);
            unit.Faction = faction; // 【重要】手动赋值阵营，防止 Setup 里没写
            
            return unit;
        }

        void Update()
        {
            // 实时计算选中单位的范围显示
            if (selectedUnit != null)
            {
                CalculateRanges(selectedUnit);
            }

            // --- 输入处理 ---
            
            // 1. 左键：选择单位 或 移动
            if (Input.GetMouseButtonDown(0)) HandleLeftClick();

            // 2. 右键：攻击
            if (Input.GetMouseButtonDown(1)) HandleRightClick();

            // 3. Z键：撤销
            if (Input.GetKeyDown(KeyCode.Z))
            {
                Debug.Log(">>> 撤销！");
                UndoSystem.Instance.Undo();
                // 撤销后重新计算范围
                if (selectedUnit != null) CalculateRanges(selectedUnit);
            }

            // 4. 空格键：模拟 AI 回合
            if (Input.GetKeyDown(KeyCode.Space))
            {
                SimulateAiTurn();
            }
        }

        // --- 核心逻辑 ---

        void HandleLeftClick()
        {
            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (!Physics.Raycast(ray, out RaycastHit hit)) return;

            // A. 点到了单位 -> 选中
            MapUnit clickedUnit = hit.collider.GetComponent<MapUnit>();
            if (clickedUnit != null)
            {
                selectedUnit = clickedUnit;
                Debug.Log($"选中了：{selectedUnit.name} (阵营: {selectedUnit.Faction})");
                return;
            }

            // B. 点到了地面 -> 移动 (如果已选且是玩家)
            if (selectedUnit != null && selectedUnit.Faction == FactionType.Player)
            {
                // 简单计算目标格子
                Vector3 localPoint = hit.point;
                int tx = Mathf.RoundToInt(localPoint.x / mapManager.cellSize);
                int tz = Mathf.RoundToInt(localPoint.z / mapManager.cellSize);
                Vector2Int targetPos = new Vector2Int(tx, tz);

                // 判断是否在移动范围内
                if (moveRangeTiles.Contains(targetPos))
                {
                    // 简单的寻路 (这里为了演示直接传路径，实际请用 AStar.FindPath)
                    List<Vector2Int> path = new List<Vector2Int> { targetPos }; 
                    new MoveCommand(selectedUnit, path).Execute();
                }
            }
        }

        void HandleRightClick()
        {
            if (selectedUnit == null || selectedUnit.IsBusy) return;

            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (!Physics.Raycast(ray, out RaycastHit hit)) return;

            MapUnit target = hit.collider.GetComponent<MapUnit>();
            if (target != null && target != selectedUnit)
            {
                // 1. 距离检查 (在攻击范围内吗？)
                // 注意：这里需要传入目标位置来确定攻击方向（例如直线攻击）
                List<Vector2Int> validTiles = selectedUnit.GetCurrentAttackRange(target.gridPosition);
                if (!validTiles.Contains(target.gridPosition))
                {
                    Debug.LogWarning("目标不在攻击范围内！");
                    return;
                }

                // 2. 阵营/仇恨检查
                bool isEnemy = FactionSystem.IsEnemy(selectedUnit, target);
                bool forceAttack = Input.GetKey(KeyCode.LeftControl); // 按住 Ctrl 强行攻击

                if (isEnemy || forceAttack)
                {
                    if (!isEnemy && forceAttack) Debug.LogWarning($"<color=yellow>强制攻击非敌对目标：{target.name}！后果自负！</color>");
                    
                    // 执行攻击命令
                    new AttackCommand(selectedUnit, target).Execute();
                }
                else
                {
                    Debug.Log($"<color=green>{target.name} 是中立/友善单位。按住 Ctrl 强行攻击。</color>");
                }
            }
        }

        void SimulateAiTurn()
        {
            Debug.Log("=== 模拟 AI 回合开始 ===");
            var allUnits = new List<MapUnit> { enemyUnit, pigmanUnit }; // 排除玩家

            foreach (var unit in allUnits)
            {
                if (unit == null) continue; // 可能被打死了

                // 简单的 AI：如果玩家是敌人且在攻击范围内，就打
                bool isHostile = FactionSystem.IsEnemy(unit, playerUnit);
                
                // 获取以玩家为目标的攻击范围
                var range = unit.GetCurrentAttackRange(playerUnit.gridPosition);
                bool inRange = range.Contains(playerUnit.gridPosition);

                Debug.Log($"AI {unit.name} 思考中... 对玩家敌对? {isHostile}, 射程内? {inRange}");

                if (isHostile && inRange)
                {
                    Debug.Log($"<color=red>AI {unit.name} 发起攻击！</color>");
                    // 这里不用 Command，直接调用 Attack 方便测试，或者用 Command 也可以
                    unit.Attack(playerUnit);
                }
            }
            Debug.Log("=== AI 回合结束 ===");
        }

        void CalculateRanges(MapUnit unit)
        {
            // 1. 移动范围 (简单曼哈顿距离模拟，你可以换成你的 BFS GridSearch)
            moveRangeTiles.Clear();
            int move = unit.Character.characterData.MoveRange;
            Vector2Int center = unit.gridPosition;
            for (int x = -move; x <= move; x++)
            {
                for (int y = -move; y <= move; y++)
                {
                    if (Mathf.Abs(x) + Mathf.Abs(y) <= move)
                        moveRangeTiles.Add(center + new Vector2Int(x, y));
                }
            }

            // 2. 攻击范围 (基于鼠标位置作为朝向预览，或者默认朝右)
            // 这里我们用一个 trick：如果鼠标在地图上，就用鼠标位置作为 targetPos 来预览“瞄准”效果
            Vector2Int aimTarget = unit.gridPosition + Vector2Int.right;
            
            Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit))
            {
                int tx = Mathf.RoundToInt(hit.point.x / mapManager.cellSize);
                int tz = Mathf.RoundToInt(hit.point.z / mapManager.cellSize);
                aimTarget = new Vector2Int(tx, tz);
            }

            attackRangeTiles = unit.GetCurrentAttackRange(aimTarget);
        }

        // --- Gizmos 可视化 ---
        void OnDrawGizmos()
        {
            if (mapManager == null) return;

            // 画移动范围 (绿色)
            Gizmos.color = new Color(0, 1, 0, 0.3f);
            foreach (var pos in moveRangeTiles)
            {
                Vector3 p = new Vector3(pos.x, 0.1f, pos.y) * mapManager.cellSize;
                Gizmos.DrawCube(p, new Vector3(0.9f, 0.1f, 0.9f));
            }

            // 画攻击范围 (红色)
            Gizmos.color = new Color(1, 0, 0, 0.4f);
            foreach (var pos in attackRangeTiles)
            {
                Vector3 p = new Vector3(pos.x, 0.1f, pos.y) * mapManager.cellSize;
                Gizmos.DrawCube(p, new Vector3(0.9f, 0.1f, 0.9f));
            }
        }
    }
}