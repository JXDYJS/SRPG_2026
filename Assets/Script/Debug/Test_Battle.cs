//CREATE BY GEMINI
using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.unit;
using Managers;
using Command;
using Global;
using GamePlay.Skill;
using GamePlay;

namespace DebugSystem
{
    public class Test_Battle : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;
        public Camera mainCam;

        [Header("预制体与数据 (在 Inspector 拖拽)")]
        [Tooltip("玩家的预制体 (必须带有 Animator)")]
        public GameObject playerPrefab;
        [Tooltip("敌人的预制体 (必须带有 Animator)")]
        public GameObject enemyPrefab;
        [Tooltip("默认的普通攻击技能数据 (SkillDataSO)")]
        public SkillDataSO defaultAttackSkill;

        // 单位容器
        public MapUnit playerUnit;
        public MapUnit enemyUnit;

        // 3D 范围缓存
        private List<Vector3Int> moveRangeTiles = new List<Vector3Int>();
        private List<Vector3Int> attackRangeTiles = new List<Vector3Int>();
        private List<Vector3Int> currentDebugPath;

        private MapUnit selectedUnit;

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
            Invoke(nameof(InitBattleField), 0.2f);
        }

        void InitBattleField()
        {
            if (mapManager == null || playerPrefab == null || enemyPrefab == null)
            {
                Debug.LogError("Test_Battle: 请在 Inspector 中分配 MapManager 和 预制体！");
                return;
            }

            // 1. 生成玩家 (站在 0,1,0)
            playerUnit = SpawnUnit(playerPrefab, "Player_Steve", 0, 1, 0, FactionType.Player);

            // 2. 生成敌人 (站在 3,1,0)
            enemyUnit = SpawnUnit(enemyPrefab, "Enemy_Zombie", 3, 1, 0, FactionType.Enemy);
            
            Debug.Log("战斗测试场景初始化完毕！");
        }

        MapUnit SpawnUnit(GameObject prefab, string name, int x, int y, int z, FactionType faction)
        {
            // 1. 实例化真实的预制体
            GameObject go = Instantiate(prefab);
            go.name = name;
            
            // 2. 获取或添加 MapUnit 组件
            MapUnit unit = go.GetComponent<MapUnit>();
            if (unit == null) unit = go.AddComponent<MapUnit>();

            // 3. 构建灵魂数据
            CharacterData data = ScriptableObject.CreateInstance<CharacterData>();
            data.CharacterName = name;
            data.BaseMaxHP = 100;
            data.BaseATK = 10;
            data.MoveRange = 4;
            data.DefaultFaction = faction;
            // 因为现在用 SkillDataSO 判定范围，CharacterData 里的 Pattern 其实可以废弃了
            
            CharacterInstance soul = new CharacterInstance(data);
            
            // 4. 初始化单位
            unit.Setup(soul, mapManager, x, y, z);
            unit.Faction = faction;
            
            // 5. 【关键】注入普攻技能数据
            if (defaultAttackSkill != null)
            {
                unit.NormalAttackSkill = defaultAttackSkill;
            }
            else
            {
                Debug.LogWarning("Test_Battle: 未分配 defaultAttackSkill，单位将无法攻击！");
            }

            // 6. 注册到管理器
            UnitManager.Instance.RegisterUnit(unit);

            return unit;
        }

        void Update()
        {
            if (selectedUnit != null)
            {
                CalculateRanges(selectedUnit);
            }

            // 左键选人
            if (Input.GetMouseButtonDown(0))
            {
                Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
                if (Physics.Raycast(ray, out RaycastHit hit))
                {
                    MapUnit unit = hit.collider.GetComponent<MapUnit>();
                    if (unit != null)
                    {
                        selectedUnit = unit;
                        Debug.Log($"选中: {unit.name} @ {unit.gridPosition}");
                    }
                }
            }

            // 右键交互 (攻击 或 移动)
            if (Input.GetMouseButtonDown(1) && selectedUnit != null)
            {
                Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
                if (Physics.Raycast(ray, out RaycastHit hit))
                {
                    // 1. 先判断是不是点到了其他单位 (尝试攻击)
                    MapUnit targetUnit = hit.collider.GetComponent<MapUnit>();
                    if (targetUnit != null && targetUnit != selectedUnit)
                    {
                        if (selectedUnit.CanAttack(targetUnit))
                        {
                            // 【注意】这里传入的是 targetUnit，如果你的 AttackCommand 改成了传坐标，就改成 targetUnit.gridPosition
                            new AttackCommand(selectedUnit, targetUnit, selectedUnit.NormalAttackSkill).Execute();
                            
                            // 攻击完通常结束回合，取消选中
                            selectedUnit = null; 
                        }
                        else
                        {
                            Debug.LogWarning("打不到！(可能在范围外或高度差太大)");
                        }
                        return; // 已经处理了攻击，直接返回
                    }
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
            
            // Undo (撤销测试)
            if (Input.GetKeyDown(KeyCode.Z)) UndoSystem.Instance.Undo();
        }
        void CalculateRanges(MapUnit unit)
        {
            attackRangeTiles.Clear();
            if (unit.NormalAttackSkill != null)
            {
                attackRangeTiles = unit.GetCurrentAttackRange(null); 
            }
        }

        void OnDrawGizmos()
        {
            if (mapManager == null) return;

            // 画攻击范围 (红色方框)
            Gizmos.color = new Color(1, 0, 0, 0.3f);
            foreach (var pos in attackRangeTiles)
            {
                Vector3 center = new Vector3(pos.x, pos.y + 0.5f, pos.z) * mapManager.cellSize;
                Gizmos.DrawCube(center, Vector3.one * 0.9f * mapManager.cellSize);
            }
        }
    }
}