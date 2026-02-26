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

namespace DebugSystem
{
    public class Test_Battle : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;
        // mainCam 变量如果你不需要用到可以删掉，但我先保留

        [Header("预制体与数据 (在 Inspector 拖拽)")]
        [Tooltip("玩家的预制体 (必须带有 Animator)")]
        public GameObject playerPrefab;
        [Tooltip("敌人的预制体 (必须带有 Animator)")]
        public GameObject enemyPrefab;
        [Tooltip("默认的普通攻击技能数据 (SkillDataSO)")]
        public SkillDataSO defaultAttackSkill;

        // 单位容器 (留在这里方便 Inspector 观察)
        public MapUnit playerUnit;
        public MapUnit enemyUnit;

        void Start()
        {
            Invoke(nameof(InitBattleField), 0.2f); // 稍微延迟，等其他 Manager 的 Awake 执行完
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
            
            Debug.Log("战斗测试场景初始化完毕，正在移交指挥权...");

            // 3. 【核心交接】呼叫 TurnManager 正式打响战斗！
            if (TurnManager.Instance != null)
            {
                TurnManager.Instance.StartBattle();
            }
            else
            {
                Debug.LogError("场景中找不到 TurnManager！请确保它被挂载在了场景中。");
            }
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
            data.Speed = 1000;
            // 以前的 Pattern 废弃了，现在读 SkillDataSO
            
            CharacterInstance soul = new CharacterInstance(data);
            
            // 4. 初始化单位
            unit.Setup(soul, mapManager, x, y, z);
            unit.Faction = faction;
            
            // 5. 注入普攻技能数据
            if (defaultAttackSkill != null)
            {
                unit.NormalAttackSkill = defaultAttackSkill;
            }
            else
            {
                Debug.LogWarning($"Test_Battle: 未分配 defaultAttackSkill，单位 {name} 将无法攻击！");
            }

            // 6. 注册到管理器（UnitManager.Instance 会在 MapUnit.Start 里自动做，但双重保险也可以保留）
            // UnitManager.Instance.RegisterUnit(unit);

            return unit;
        }

        void Update()
        {
            // 所有的鼠标点选、范围计算、高亮显示，已经完美解耦交给了 BattleInputController 和 GridVisualManager！
            // Test_Battle 现在彻底清闲了。
            
            // 保留一个后悔药测试快捷键
            if (Input.GetKeyDown(KeyCode.Z)) 
            {
                UndoSystem.Instance.Undo();
            }
        }
    }
}