using UnityEngine;
using System.Collections.Generic;
using GamePlay.Units;
using Managers;
using GamePlay.Battle;
using GamePlay.Grid;
using GamePlay.Visual;
using Cysharp.Threading.Tasks;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;
using System.Threading.Tasks;
using Global;
using UI;
using Character.data;
using Character.instance;
using Utils;
using System;
using Core.Data;
using DG.Tweening;
using UI.Panel;

namespace GamePlay.Battle
{
    public enum BattleFlowState
    {
        Loading,
        Deploying,
        InBattle,
        BattleEnd
    }

    public class BattleFlowManager : MonoBehaviour
    {
        public static BattleFlowManager Instance { get; private set; }

        [Header("关卡配置（配表驱动）")]
        private TableData.LevelConfig _currentLevelConfig;

        [Header("运行时状态")]
        [SerializeField]
        private BattleFlowState currentState = BattleFlowState.Loading;
        public BattleFlowState CurrentState => currentState;

        private List<MapUnit> _spawnedUnits = new List<MapUnit>();
        private List<CharacterMeta> _characterMetas = new List<CharacterMeta>();
        private List<MapUnit> _previewUnits = new List<MapUnit>();
        private List<AsyncOperationHandle<GameObject>> _previewAssetHandles = new List<AsyncOperationHandle<GameObject>>();

        void Awake()
        {
            Instance = this;

            if (GetComponent<DeploymentController>() == null)
            {
                gameObject.AddComponent<DeploymentController>();
            }
        }

        async void Start()
        {
            // Debug.Log("[FLOW] BattleFlowManager.Start() entered");
            // if (CurrentLevel == null)
            // {
            //     Debug.LogError("[FLOW] 未指定关卡数据, aborting");
            //     return;
            // }

            // try
            // {
            //     await LoadLevelAsync();
            //     Debug.Log("[FLOW] LoadLevelAsync completed");
            // }
            // catch (System.Exception e)
            // {
            //     Debug.LogError($"[FLOW] LoadLevelAsync threw: {e.GetType().Name}: {e.Message}\n{e.StackTrace}");
            // }
            UnitManager.Instance.AllDeathAnimationsFinished += () =>
            {
                if (isLevelEnd())
                {
                    //todo  判断输赢做出不同选择
                    EndLevel();
                }  
            };
        }

        public async UniTask LoadLevelAsync(TableData.LevelConfig level)
        {
            _currentLevelConfig = level;
            var mapData = Addressables.LoadAssetAsync<MapDataSO>(level.mapAddress).WaitForCompletion();
            if (mapData != null)
            {
                MapManager.Instance.currentLevelData = mapData;
            }
            await LoadLevelAsync();
        }

        private async UniTask LoadLevelAsync()
        {
            Debug.Log("[FLOW] LoadLevelAsync: entered");
            try
            {
                Debug.Log("开始加载关卡...");
                SwitchState(BattleFlowState.Loading);

                // 1. 加载地形 & 启动时间轴
                Debug.Log("[FLOW] LoadLevelAsync: step 1 - loading terrain");
                if (MapManager.Instance.currentLevelData != null)
                {
                    MapManager.Instance.LoadFromSO();
                    Debug.Log("地形加载完成");
                }
                else
                {
                    Debug.Log("[FLOW] MapData is null, skipping terrain");
                }
                UIManager.Instance.OpenPanel<TimelinePanel>(null, UILayer.Background);

                // 2. 从配表生成敌方/中立单位
                Debug.Log($"[FLOW] LoadLevelAsync: step 2 - spawning initial units from table");
                _spawnedUnits.Clear();
                Sequence allSeq = DOTween.Sequence();
                foreach (var unitId in _currentLevelConfig.unitIds)
                {
                    if (!Data.Table.UnitConfigs.TryGetValue(unitId, out var unitCfg))
                    {
                        Debug.LogWarning($"无法找到单位配置: {unitId}");
                        continue;
                    }

                    CharacterData cd = CharacterData.LoadByID(unitCfg.characterDataId);
                    if (cd == null)
                    {
                        Debug.LogWarning($"无法加载角色数据: characterDataId={unitCfg.characterDataId}");
                        continue;
                    }

                    var spawnPos = ParseVector3Int(unitCfg.spawnPosition);
                    UnitConfig config = new UnitConfig
                    {
                        CharacterTemplate = cd,
                        SkillConfig = cd.skillConfig,
                        SpawnPosition = spawnPos,
                        InitialFacing = unitCfg.facing,
                        Faction = unitCfg.faction,
                        InitialLevel = unitCfg.level > 0 ? unitCfg.level : 1,
                        HPBonusPercent = unitCfg.hpBonusPercent,
                        ATKBonusPercent = unitCfg.atkBonusPercent,
                        DEFBonusPercent = unitCfg.defBonusPercent,
                        RESBonusPercent = unitCfg.resBonusPercent
                    };

                    MapUnit unit = await UnitFactory.CreateUnitAsync(
                        config,
                        MapManager.Instance,
                        MapManager.Instance.mapRoot,
                        config.SkillConfig,
                        false
                    );
                    var oriGameObjPos = unit.gameObject.transform.position;
                    var seq = DT.Append(
                        (Action)(() =>
                        {
                            unit.gameObject.transform.position = new Vector3(oriGameObjPos.x, oriGameObjPos.y + Data.Config.ViewConfig.BattleStartUnitAnimationAscendingHeight, oriGameObjPos.z);
                            unit.gameObject.SetActive(true);
                        }),
                        UnityEngine.Random.Range(0.0f, 0.2f),
                        unit.gameObject.transform.DOMoveY(oriGameObjPos.y, 1).SetEase(Ease.OutQuad)
                    );
                    allSeq.Join(seq);
                    if (unit != null)
                    {
                        _spawnedUnits.Add(unit);
                        UnitManager.Instance.RegisterUnit(unit);
                        Debug.Log($"生成单位: {unit.name} 在位置 {spawnPos}, faction={config.Faction}");
                    }
                }
                await allSeq.AsyncWaitForCompletion();
                // 3. 进入部署阶段
                Debug.Log("[FLOW] LoadLevelAsync: step 3 - entering deployment phase");
                await EnterDeploymentPhaseAsync();
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FLOW] LoadLevelAsync CRASHED: {e.GetType().Name}: {e.Message}\n{e.StackTrace}");
            }
        }

        /// <summary>
        /// 进入部署阶段 — 预加载角色模型，弹出角色选择窗口，激活 DeploymentController
        /// </summary>
        private async UniTask EnterDeploymentPhaseAsync()
        {
            Debug.Log("进入部署阶段");
            SwitchState(BattleFlowState.Deploying);

            PopulateAvailableCharacters();

            List<CharacterData> availableData = new List<CharacterData>();
            foreach (var meta in _characterMetas)
            {
                availableData.Add(meta.Data);
            }

            // 预加载所有角色预制体到画面外（用于部署预览）
            _previewUnits.Clear();
            Vector3 hiddenPos = new Vector3(-10000, -10000, -10000);
            for (int i = 0; i < _characterMetas.Count; i++)
            {
                CharacterMeta meta = _characterMetas[i];
                if (meta.Data.Prefab == null || !meta.Data.Prefab.RuntimeKeyIsValid())
                {
                    Debug.LogWarning($"[FLOW] 角色 {meta.Data.CharacterName} 无有效 Prefab，跳过预加载");
                    _previewUnits.Add(null);
                    continue;
                }

                var loadHandle = Addressables.LoadAssetAsync<GameObject>(meta.Data.Prefab);
                await loadHandle.Task;

                if (loadHandle.Status == AsyncOperationStatus.Succeeded)
                {
                    _previewAssetHandles.Add(loadHandle);
                    GameObject prefab = loadHandle.Result;
                    GameObject obj = UnityEngine.Object.Instantiate(prefab, hiddenPos, Quaternion.identity, MapManager.Instance.mapRoot);
                    MapUnit mu = obj.GetComponent<MapUnit>();
                    if (mu == null) mu = obj.AddComponent<MapUnit>();
                    mu.IsPreview = true;

                    foreach (var col in obj.GetComponentsInChildren<Collider>())
                    {
                        col.enabled = false;
                    }

                    obj.SetActive(false);
                    _previewUnits.Add(mu);
                    Debug.Log($"[FLOW] 预加载角色 {meta.Data.CharacterName} 完成");
                }
                else
                {
                    Debug.LogError($"[FLOW] 预加载角色 {meta.Data.CharacterName} 失败");
                    Addressables.Release(loadHandle);
                    _previewUnits.Add(null);
                }
            }

            if (DeploymentController.Instance == null)
            {
                Debug.LogError("[FLOW] DeploymentController.Instance is null, 回退到自动确认");
                CleanupPreviews();
                ConfirmDeployment();
                return;
            }

            DeploymentController.Instance.OnDeploymentConfirmed += OnDeploymentConfirmed;
            DeploymentController.Instance.StartDeployment(
                availableData,
                _previewUnits,
                ParseDeployZones(_currentLevelConfig.playerDeployZones),
                _currentLevelConfig.maxDeployCount
            );
        }

        /// <summary>
        /// 部署确认回调 — 根据玩家放置位置生成玩家单位
        /// </summary>
        private async void OnDeploymentConfirmed(List<DeploymentSlot> slots)
        {
            Debug.Log($"[FLOW] Deployment confirmed with {slots.Count} slots");

            DeploymentController.Instance.OnDeploymentConfirmed -= OnDeploymentConfirmed;
            Sequence allSeq = DOTween.Sequence();
            foreach (var slot in slots)
            {
                if (slot.CharacterIndex < 0 || slot.CharacterIndex >= _characterMetas.Count)
                {
                    Debug.LogWarning($"[FLOW] Invalid character index: {slot.CharacterIndex}");
                    continue;
                }

                CharacterMeta meta = _characterMetas[slot.CharacterIndex];

                UnitConfig config = new UnitConfig
                {
                    CharacterTemplate = meta.Data,
                    SkillConfig = meta.Data.skillConfig,
                    SpawnPosition = slot.GridPosition,
                    InitialFacing = slot.Facing,
                    Faction = FactionType.Player,
                    InitialLevel = meta.Level > 0 ? meta.Level : 1,
                    HPBonusPercent = meta.BonusHp,
                    ATKBonusPercent = meta.BonusAtk,
                    DEFBonusPercent = meta.BonusDef,
                    RESBonusPercent = meta.BonusRes
                };

                MapUnit unit = await UnitFactory.CreateUnitAsync(
                    config,
                    MapManager.Instance,
                    MapManager.Instance.mapRoot,
                    config.SkillConfig,
                    false
                );
                var oriGameObjPos = unit.gameObject.transform.position;
                var seq = DT.Append(
                    (Action)(() =>
                    {
                        unit.gameObject.transform.position = new Vector3(oriGameObjPos.x, oriGameObjPos.y + Data.Config.ViewConfig.BattleStartUnitAnimationAscendingHeight, oriGameObjPos.z);
                        unit.gameObject.SetActive(true);
                    }),
                    UnityEngine.Random.Range(0.0f, 0.2f),
                    unit.gameObject.transform.DOMoveY(oriGameObjPos.y, 1).SetEase(Ease.OutQuad)
                );
                allSeq.Join(seq);
                if (unit != null)
                {
                    _spawnedUnits.Add(unit);
                    UnitManager.Instance.RegisterUnit(unit);
                    Debug.Log($"生成玩家单位: {unit.name} 在位置 {slot.GridPosition}");
                }
            }
            await allSeq.AsyncWaitForCompletion();
            Debug.Log($"[FLOW] Total spawned units = {_spawnedUnits.Count}");
            ConfirmDeployment();
        }

        /// <summary>
        /// 填充可选角色列表（优先 RunManager.MyTeam，后备 BattleLevelSO.Fallback）
        /// </summary>
        private void PopulateAvailableCharacters()
        {
            _characterMetas.Clear();

            if (RunManager.Instance != null && RunManager.Instance.MyTeam.Count > 0)
            {
                foreach (CharacterInstance ci in RunManager.Instance.MyTeam)
                {
                    _characterMetas.Add(new CharacterMeta
                    {
                        Data = ci.characterData,
                        Level = ci.level,
                        BonusHp = 0,
                        BonusAtk = 0,
                        BonusDef = 0,
                        BonusRes = 0
                    });
                }
                Debug.Log($"[FLOW] 从 RunManager.MyTeam 加载了 {_characterMetas.Count} 个角色");
                return;
            }

            Debug.Log("[FLOW] RunManager.MyTeam 为空，尝试自动扫描 Resources/Data/Character/");

            List<CharacterData> allFromResources = CharacterData.LoadAll();
            if (allFromResources.Count > 0)
            {
                foreach (CharacterData cd in allFromResources)
                {
                    _characterMetas.Add(new CharacterMeta
                    {
                        Data = cd,
                        Level = 1,
                        BonusHp = 0,
                        BonusAtk = 0,
                        BonusDef = 0,
                        BonusRes = 0
                    });
                }
                Debug.Log($"[FLOW] 自动扫描到 {_characterMetas.Count} 个角色");
                return;
            }

            Debug.LogError("[FLOW] 无可选角色！RunManager、Fallback、Resources 均无角色数据");
        }

        public void ConfirmDeployment()
        {
            Debug.Log("[FLOW] ConfirmDeployment called");

            GridVisualManager.Instance.ClearHighlights();

            SwitchState(BattleFlowState.InBattle);
            Debug.Log("[FLOW] calling StartBattle");
            StartBattle();
            Debug.Log("[FLOW] StartBattle returned");
        }

        private void StartBattle()
        {
            Debug.Log("[FLOW] StartBattle: calling TurnManager.Instance.StartBattle()");
            Debug.Log($"[FLOW] TurnManager.Instance == null ? {TurnManager.Instance == null}");

            var timeline = UIManager.Instance.GetPanel<TimelinePanel>();
            if (timeline != null)
            {
                try
                {
                    timeline.InitTimeline(_spawnedUnits);
                }
                catch (System.Exception e)
                {
                    Debug.LogWarning($"[FLOW] InitTimeline failed (non-fatal): {e.Message}");
                }
            }

            TurnManager.Instance.StartBattle();
            Debug.Log("[FLOW] TurnManager.Instance.StartBattle() returned");
        }

        private void SwitchState(BattleFlowState newState)
        {
            if (currentState == newState) return;

            var prev = currentState;
            currentState = newState;
            Debug.Log($"战斗流程状态切换: {prev} -> {newState}");
        }

        private void CleanupPreviews()
        {
            foreach (var mu in _previewUnits)
            {
                if (mu != null && mu.gameObject != null)
                {
                    Destroy(mu.gameObject);
                }
            }
            _previewUnits.Clear();

            foreach (var handle in _previewAssetHandles)
            {
                Addressables.Release(handle);
            }
            _previewAssetHandles.Clear();
        }

        public void CleanupLevel()
        {
            Debug.Log("清理关卡资源");

            CleanupPreviews();

            foreach (var unit in _spawnedUnits)
            {
                if (unit != null && unit.gameObject != null)
                {
                    UnitManager.Instance.UnregisterUnit(unit);
                    Destroy(unit.gameObject);
                }
            }
            _spawnedUnits.Clear();

            MapManager.Instance.ClearMap();

            SwitchState(BattleFlowState.Loading);
        }
        public void EndLevel()
        {
            // 结算战斗结束钩子（清场前），让遗物/Buff 有机会做收尾（如重置每场战斗状态）
            foreach (var unit in UnitManager.Instance.GetAllAliveUnit())
            {
                unit.OnBattleEnd();
            }

            CleanupLevel();
            UIManager.Instance.ClosePanel<TimelinePanel>();
            var mapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            mapPopWindow.NextLevel();
        }
        public bool isLevelEnd()
        {
            int playAlive = 0;
            int enemyAlive = 0;
            foreach (var unit in UnitManager.Instance.GetAllAliveUnit())
            {
                if (unit.Faction == FactionType.Player) playAlive++;
                else if (unit.Faction == FactionType.Enemy) enemyAlive++;
            }
            return playAlive == 0 || enemyAlive == 0;
        }
        public bool isPlayWin()
        {
            if (!isLevelEnd()) return false;
            int enemyAlive = 0;
            foreach (var unit in UnitManager.Instance.GetAllAliveUnit())
            {
                if (unit.Faction == FactionType.Enemy) enemyAlive++;
            }
            return enemyAlive == 0;
        }

        private static Vector3Int ParseVector3Int(string s)
        {
            if (string.IsNullOrEmpty(s)) return Vector3Int.zero;
            var parts = s.Trim('(', ')').Split(',');
            if (parts.Length < 3) return Vector3Int.zero;
            return new Vector3Int(int.Parse(parts[0]), int.Parse(parts[1]), int.Parse(parts[2]));
        }

        private static List<Vector3Int> ParseDeployZones(List<string> zones)
        {
            var result = new List<Vector3Int>(zones.Count);
            foreach (var z in zones) result.Add(ParseVector3Int(z));
            return result;
        }
    }
}
