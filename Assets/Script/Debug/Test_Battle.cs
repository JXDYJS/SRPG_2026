using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.unit;
using Managers;
using Command;
using Global;
using GamePlay;
using GamePlay.Grid;
using Core.System;

namespace DebugSystem
{
    public class Test_Battle : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;
        public Camera mainCam;

        // 单位容器 (自动生成)
        public MapUnit playerUnit;
        public MapUnit enemyUnit;

        // 3D 范围缓存
        private List<Vector3Int> moveRangeTiles = new List<Vector3Int>();
        private List<Vector3Int> attackRangeTiles = new List<Vector3Int>();

        private MapUnit selectedUnit;

        void Start()
        {
            if (mainCam == null) mainCam = Camera.main;
            Invoke(nameof(InitBattleField), 0.2f);
        }

        void InitBattleField()
        {
            if (mapManager == null) return;

            // 1. 生成玩家 (站在 0,0,0)
            playerUnit = SpawnDummyUnit("Player", 0, 1, 0, Color.blue, FactionType.Player);
            // 攻击范围：十字 (Line)，长度 3
            playerUnit.Character.characterData.Pattern = AttackPatternType.Line;
            playerUnit.Character.characterData.MaxRange = 3;

            // 2. 生成敌人 (站在 3,1,0) -> 这是一个高台上的敌人！
            // 假设你的地图在 (3,0) 处有个 1格高的方块，所以敌人站在 y=1
            enemyUnit = SpawnDummyUnit("Enemy", 3, 1, 0, Color.red, FactionType.Enemy);
            
            Debug.Log("战斗测试场景初始化完毕！");
        }

        MapUnit SpawnDummyUnit(string name, int x, int y, int z, Color color, FactionType faction)
        {
            // 简化的生成逻辑
            CharacterData data = ScriptableObject.CreateInstance<CharacterData>();
            data.CharacterName = name;
            data.BaseMaxHP = 100;
            data.BaseATK = 10;
            data.MoveRange = 4;
            data.DefaultFaction = faction;

            GameObject go = GameObject.CreatePrimitive(PrimitiveType.Capsule);
            go.name = name;
            go.GetComponent<Renderer>().material.color = color;
            
            MapUnit unit = go.AddComponent<MapUnit>();
            CharacterInstance soul = new CharacterInstance(data);
            unit.Setup(soul, mapManager, x, y,z); // Setup 可能只接受 x,z，下面手动修正
            
            // 关键：设置 3D 坐标
            unit.SetGridPosition(new Vector3Int(x, y, z));
            unit.Faction = faction;

            // 注册 (确保 UnitManager 已改为 3D)
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

            // 右键攻击
            if (Input.GetMouseButtonDown(1) && selectedUnit != null)
            {
                Ray ray = mainCam.ScreenPointToRay(Input.mousePosition);
                if (Physics.Raycast(ray, out RaycastHit hit))
                {
                    MapUnit target = hit.collider.GetComponent<MapUnit>();
                    if (target != null && target != selectedUnit)
                    {
                        // 3D 攻击判定
                        if (selectedUnit.CanAttack(target))
                        {
                            new AttackCommand(selectedUnit, target,null).Execute();
                        }
                        else
                        {
                            Debug.LogWarning("打不到！(可能在范围外或高度差太大)");
                        }
                    }
                }
            }
            
            // Undo
            if (Input.GetKeyDown(KeyCode.Z)) UndoSystem.Instance.Undo();
        }

        void CalculateRanges(MapUnit unit)
        {
            attackRangeTiles.Clear();

            // 1. 获取 3D 攻击范围 (包含高度延伸)
            // 假设鼠标指向 (0,0,0) 方向
            attackRangeTiles = unit.GetCurrentAttackRange(null); 
        }

        void OnDrawGizmos()
        {
            if (mapManager == null) return;

            // 画攻击范围 (红色方框)
            Gizmos.color = new Color(1, 0, 0, 0.3f);
            foreach (var pos in attackRangeTiles)
            {
                // 只画出存在的方块，或者是空气 (取决于你想怎么显示)
                // 这里我们画出格子位置
                Vector3 center = new Vector3(pos.x, pos.y + 0.5f, pos.z) * mapManager.cellSize;
                Gizmos.DrawCube(center, Vector3.one * 0.9f * mapManager.cellSize);
            }
        }
    }
}