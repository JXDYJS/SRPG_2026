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
using UnityEngine.AddressableAssets;
using Cysharp.Threading.Tasks;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace DebugSystem
{
    public class Test_Battle : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;

        [Header("预制体与数据 (Addressables 软引用)")]
        [Tooltip("玩家的预制体 (必须带有 Animator)")]
        public AssetReferenceGameObject playerPrefab;
        [Tooltip("敌人的预制体 (必须带有 Animator)")]
        public AssetReferenceGameObject enemyPrefab;
        [Tooltip("玩家的技能配置")]
        public CharacterSkillConfig playerSkillConfig;
        [Tooltip("敌人的技能配置")]
        public CharacterSkillConfig enemySkillConfig;

        public MapUnit playerUnit;
        public MapUnit enemyUnit;

        void Start()
        {
            InitBattleFieldAsync().Forget();
        }

        private async UniTaskVoid InitBattleFieldAsync()
        {
            await UniTask.Delay(200);

            if (mapManager == null || playerPrefab == null || enemyPrefab == null)
            {
                Debug.LogError("Test_Battle: 请在 Inspector 中分配 MapManager 和 Addressables 引用！");
                return;
            }

            playerUnit = await SpawnUnitAsync(playerPrefab, "Player_Steve", 0, 1, 0, FactionType.Player, playerSkillConfig);
            enemyUnit = await SpawnUnitAsync(enemyPrefab, "Enemy_Zombie", 3, 1, 0, FactionType.Enemy, enemySkillConfig);
            
            Debug.Log("战斗测试场景初始化完毕，正在移交指挥权...");

            if (TurnManager.Instance != null)
            {
                TurnManager.Instance.StartBattle();
            }
            else
            {
                Debug.LogError("场景中找不到 TurnManager！请确保它被挂载在了场景中。");
            }
        }

        private async UniTask<MapUnit> SpawnUnitAsync(AssetReferenceGameObject prefabRef, string name, int x, int y, int z, FactionType faction, CharacterSkillConfig skillConfig)
        {
            var handle = Addressables.InstantiateAsync(prefabRef);
            await handle.Task;

            if (handle.Status != AsyncOperationStatus.Succeeded)
            {
                Debug.LogError($"Test_Battle: 无法实例化预制体 {name}");
                return null;
            }

            GameObject go = handle.Result;
            go.name = name;
            
            MapUnit unit = go.GetComponent<MapUnit>();
            if (unit == null) unit = go.AddComponent<MapUnit>();

            CharacterData data = ScriptableObject.CreateInstance<CharacterData>();
            data.CharacterName = name;
            data.BaseMaxHP = 100;
            data.BaseATK = 10;
            data.MoveRange = 4;
            data.DefaultFaction = faction;
            data.Speed = 1000;
            
            CharacterInstance soul = new CharacterInstance(data);
            
            unit.Setup(soul, mapManager, x, y, z);
            unit.Faction = faction;

            if (skillConfig != null)
            {
                await soul.InitializeSkillsAsync(skillConfig, 1);
            }
            else
            {
                Debug.LogWarning($"Test_Battle: 未配置 skillConfig，单位 {name} 将无法使用技能！");
            }

            return unit;
        }

        void Update()
        {
            if (Input.GetKeyDown(KeyCode.Z)) 
            {
                UndoSystem.Instance.Undo();
            }
        }
    }
}
