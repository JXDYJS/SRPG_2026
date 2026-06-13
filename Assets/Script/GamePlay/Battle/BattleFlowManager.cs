using UnityEngine;
using System.Collections.Generic;
using GamePlay.Units;
using Managers;
using GamePlay.Battle;
using GamePlay.Visual;
using Cysharp.Threading.Tasks;
using UnityEngine.AddressableAssets;
using System.Threading.Tasks;
using Global;
using UI;

namespace GamePlay.Battle
{
    public enum BattleFlowState
    {
        Loading,        // 加载地形和单位
        Deploying,       // 玩家部署期
        InBattle,        // 战斗中
        BattleEnd        // 结算
    }

    public class BattleFlowManager : MonoBehaviour
    {
        public static BattleFlowManager Instance { get; private set; }

        [Header("关卡配置")]
        public BattleLevelSO CurrentLevel;

        [Header("玩家单位配置")]
        [Tooltip("临时存储玩家阵营的单位配置")]
        public List<UnitConfig> PlayerUnitConfigs = new List<UnitConfig>();

        [Header("运行时状态")]
        [SerializeField]
        private BattleFlowState currentState = BattleFlowState.Loading;
        public BattleFlowState CurrentState => currentState;

        private List<MapUnit> _spawnedUnits = new List<MapUnit>();

        void Awake()
        {
            Instance = this;
        }

        async void Start()
        {
            Debug.Log("[FLOW] BattleFlowManager.Start() entered");
            if (CurrentLevel == null)
            {
                Debug.LogError("[FLOW] 未指定关卡数据, aborting");
                return;
            }

            Debug.Log($"[FLOW] CurrentLevel={CurrentLevel.name}, calling LoadLevelAsync");
            try
            {
                await LoadLevelAsync();
                Debug.Log("[FLOW] LoadLevelAsync completed");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FLOW] LoadLevelAsync threw: {e.GetType().Name}: {e.Message}\n{e.StackTrace}");
            }
        }

        /// <summary>
        /// 异步加载关卡
        /// </summary>
        private async UniTask LoadLevelAsync()
        {
            Debug.Log("[FLOW] LoadLevelAsync: entered");
            try
            {
                Debug.Log("开始加载关卡...");
                SwitchState(BattleFlowState.Loading);

                // 1. 加载地形
                Debug.Log("[FLOW] LoadLevelAsync: step 1 - checking MapData");
                if (CurrentLevel.MapData != null)
                {
                    Debug.Log("[FLOW] LoadLevelAsync: calling MapManager.Instance.LoadFromSO()");
                    MapManager.Instance.LoadFromSO();
                    Debug.Log("地形加载完成");
                }
                else
                {
                    Debug.Log("[FLOW] LoadLevelAsync: MapData is null, skipping terrain");
                }

                // 2. 生成初始单位
                Debug.Log($"[FLOW] LoadLevelAsync: step 2 - spawning {CurrentLevel.InitialUnits?.Count ?? 0} initial units");
                _spawnedUnits.Clear();
                foreach (var config in CurrentLevel.InitialUnits)
            {
                MapUnit unit = await UnitFactory.CreateUnitAsync(
                    config, 
                    MapManager.Instance, 
                    MapManager.Instance.mapRoot,
                    config.SkillConfig
                );

                if (unit != null)
                {
                    _spawnedUnits.Add(unit);
                    UnitManager.Instance.RegisterUnit(unit);
                    Debug.Log($"生成单位: {unit.name} 在位置 {config.SpawnPosition}");
                }
            }

            // 3. 生成玩家单位
            Debug.Log($"[FLOW] LoadLevelAsync: step 3 - spawning {PlayerUnitConfigs.Count} player units");
            foreach (var config in PlayerUnitConfigs)
            {
                // 确保单位阵营为玩家
                config.Faction = FactionType.Player;
                
                MapUnit unit = await UnitFactory.CreateUnitAsync(
                    config, 
                    MapManager.Instance, 
                    MapManager.Instance.mapRoot,
                    config.SkillConfig
                );

                if (unit != null)
                {
                    _spawnedUnits.Add(unit);
                    UnitManager.Instance.RegisterUnit(unit);
                    Debug.Log($"生成玩家单位: {unit.name} 在位置 {config.SpawnPosition}");
                }
            }
            Debug.Log($"[FLOW] LoadLevelAsync: total spawned units = {_spawnedUnits.Count}");

            Debug.Log("[FLOW] LoadLevelAsync: step 4 - InitTimeline");
            if (TimelinePanel.Instance != null)
            {
                try
                {
                    TimelinePanel.Instance.InitTimeline(_spawnedUnits);
                }
                catch (System.Exception e)
                {
                    Debug.LogWarning($"[FLOW] InitTimeline failed (non-fatal): {e.Message}");
                }
            }

            Debug.Log("[FLOW] LoadLevelAsync: step 5 - calling ConfirmDeployment");
            // 5. 自动确认部署并进入战斗阶段
            ConfirmDeployment();
            Debug.Log("[FLOW] LoadLevelAsync: completed normally");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FLOW] LoadLevelAsync CRASHED: {e.GetType().Name}: {e.Message}\n{e.StackTrace}");
            }
        }

        /// <summary>
        /// /// 进入部署阶段
        /// </summary>
        public void EnterDeploymentPhase()
        {
            Debug.Log("进入部署阶段");
            
            // 高亮玩家部署区
            if (CurrentLevel.PlayerDeployZones != null && CurrentLevel.PlayerDeployZones.Count > 0)
            {
                GridVisualManager.Instance.ShowTilesHighlight(
                    CurrentLevel.PlayerDeployZones, 
                    Color.cyan
                );
                Debug.Log($"高亮了 {CurrentLevel.PlayerDeployZones.Count} 个部署区");
            }

            // TODO: 这里可以添加部署UI，显示"开始战斗"按钮
        }

        /// <summary>
        /// 确认部署并开始战斗
        /// </summary>
        public void ConfirmDeployment()
        {
            Debug.Log("[FLOW] ConfirmDeployment called");
            
            GridVisualManager.Instance.ClearHighlights();
            
            SwitchState(BattleFlowState.InBattle);
            Debug.Log("[FLOW] calling StartBattle");
            StartBattle();
            Debug.Log("[FLOW] StartBattle returned");
        }

        /// <summary>
        /// 开始战斗
        /// </summary>
        private void StartBattle()
        {
            Debug.Log("[FLOW] StartBattle: calling TurnManager.Instance.StartBattle()");
            Debug.Log($"[FLOW] TurnManager.Instance == null ? {TurnManager.Instance == null}");
            TurnManager.Instance.StartBattle();
            Debug.Log("[FLOW] TurnManager.Instance.StartBattle() returned");
        }

        /// <summary>
        /// 切换状态
        /// </summary>
        private void SwitchState(BattleFlowState newState)
        {
            if (currentState == newState) return;
            
            currentState = newState;
            Debug.Log($"战斗流程状态切换: {currentState} -> {newState}");
        }

        /// <summary>
        /// 清理关卡
        /// </summary>
        public void CleanupLevel()
        {
            Debug.Log("清理关卡资源");
            
            // 清除所有生成的单位
            foreach (var unit in _spawnedUnits)
            {
                if (unit != null && unit.gameObject != null)
                {
                    UnitManager.Instance.UnregisterUnit(unit);
                    Destroy(unit.gameObject);
                }
            }
            _spawnedUnits.Clear();
            
            // 清除地形
            MapManager.Instance.ClearMap();
            
            // 重置状态
            SwitchState(BattleFlowState.Loading);
        }
    }
}
