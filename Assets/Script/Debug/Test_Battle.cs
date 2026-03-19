//CREATE BY GEMINI
using System.Collections.Generic;
using UnityEngine;
using Character.instance;
using Character.data;
using GamePlay.Units;
using Managers;
using Command;
using Global;
using GamePlay.Skill;
using GamePlay.Battle;
using UnityEngine.AddressableAssets;
using Cysharp.Threading.Tasks;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace DebugSystem
{
    public class Test_Battle : MonoBehaviour
    {
        [Header("核心引用")]
        public MapManager mapManager;

        public MapUnit playerUnit;
        public MapUnit enemyUnit;

        void Start()
        {
            InitBattleFieldAsync().Forget();
        }

        private async UniTaskVoid InitBattleFieldAsync()
        {
            await UniTask.Delay(200);

            if (mapManager == null)
            {
                Debug.LogError("Test_Battle: 请在 Inspector 中分配 MapManager！");
                return;
            }

            // 检查BattleFlowManager是否存在
            if (BattleFlowManager.Instance == null)
            {
                Debug.LogError("Test_Battle: 场景中找不到 BattleFlowManager！请确保它被挂载在了场景中。");
                return;
            }

            Debug.Log("战斗测试场景初始化完毕，正在移交指挥权...");

            if (TurnManager.Instance != null)
            {
                //TurnManager.Instance.StartBattle();
            }
            else
            {
                Debug.LogError("场景中找不到 TurnManager！请确保它被挂载在了场景中。");
            }
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
