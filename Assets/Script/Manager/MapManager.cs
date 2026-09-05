using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.AddressableAssets;
#if UNITY_EDITOR
using UnityEditor;
#endif
using Global;
using GamePlay.Grid;
using Utils;
using Core.Data;
namespace Managers
{
    using System;

    using GamePlay;
    using GamePlay.Battle;

    using GamePlay.Units;
    using Grid;

    public class MapManager : MonoBehaviour
    {
        [Header("设置")]
        public Transform mapRoot; // Parent node of map objects
        public float cellSize = 1.0f;
        [Tooltip("当前要保存或加载的地图名称（不需要加 .json）")]
        public string currentMapName = "Map_01";
        public MapDataSO currentLevelData;

        public Dictionary<Vector3Int, MapObject> blocks;
        private Dictionary<string, GameObject> _prefabCache;
        public VoxelGrid voxelGrid;
        public LogicalGrid logicalGrid = new LogicalGrid();

        string SavePath => Path.Combine(Application.streamingAssetsPath, currentMapName + ".json");
        public static MapManager Instance { get; private set; } = null;

        static readonly Dictionary<string, string> LegacyPrefabMapping = new()
    {
        { "1", "grass" },
        { "2", "dirt" },
        { "3", "cobblestone" },
        { "4", "cobbles_slab" },
        { "5", "magma" },
        { "6", "quartz" },
        { "7", "green_concrete" },
        { "8", "red_concrete" },
        { "9", "iron" },
    };

        private void Awake()
        {
            if (Instance == null)
                Instance = this;
            InitPrefabCache();
        }

        private void InitPrefabCache()
        {
            _prefabCache = new Dictionary<string, GameObject>();

            foreach (var kvp in Data.Table.BlockConfigs)
            {
                string address = kvp.Value.prefabAddress;
                try
                {
                    var handle = Addressables.LoadAssetAsync<GameObject>(address);
                    var prefab = handle.WaitForCompletion();
                    if (prefab != null)
                        _prefabCache[kvp.Key] = prefab;
                }
                catch (System.Exception ex)
                {
                    Debug.LogError($"[MapManager] Failed to load prefab '{address}': {ex.Message}");
                }
            }
            Debug.Log($"[MapManager] Cached {_prefabCache.Count} block prefabs");
        }

        public GameObject GetFirstPrefab()
        {
            EnsurePrefabCache();
            foreach (var kvp in _prefabCache)
                return kvp.Value;
            return null;
        }

        // Lazy init: Awake() never runs in edit mode, so ContextMenu/editor callers
        // would otherwise hit a null _prefabCache.
        private void EnsurePrefabCache()
        {
            if (_prefabCache == null)
                InitPrefabCache();
        }

        string ResolveConfigId(MapBlockData block)
        {
            if (!string.IsNullOrEmpty(block.blockConfigId))
                return block.blockConfigId;
            if (!string.IsNullOrEmpty(block.prefabId) && LegacyPrefabMapping.TryGetValue(block.prefabId, out var mapped))
                return mapped;
            return null;
        }
        [ContextMenu("List All Maps (列出所有存档)")]
        public void ListAllMaps()
        {
            if (!Directory.Exists(Application.streamingAssetsPath))
            {
                Debug.Log("存档文件夹不存在。");
                return;
            }

            string[] files = Directory.GetFiles(Application.streamingAssetsPath, "*.json");
            Debug.Log($"找到 {files.Length} 个地图存档：");

            foreach (string file in files)
            {
                Debug.Log($"📄 {Path.GetFileNameWithoutExtension(file)}");
            }
        }

        void Start()
        {
        }


        [ContextMenu("Save Map")]
        public void SaveMap()
        {
            MapData data = new MapData();
            data.cellSize = cellSize;

            Dictionary<Vector2Int, CellSaveData> tempGroup = new Dictionary<Vector2Int, CellSaveData>();

            foreach (Transform child in mapRoot)
            {
                MapObject mapObj = child.GetComponent<MapObject>();
                if (mapObj == null) continue;

                int x = Mathf.RoundToInt(child.position.x / cellSize);
                int z = Mathf.RoundToInt(child.position.z / cellSize);
                Vector2Int coord = new Vector2Int(x, z);

                if (!tempGroup.ContainsKey(coord))
                {
                    tempGroup[coord] = new CellSaveData { x = x, z = z };
                }

                BlockSaveData blockData = new BlockSaveData
                {
                    prefabId = mapObj.prefabId,
                    heightY = child.position.y,
                    rotationY = Mathf.RoundToInt(child.eulerAngles.y)
                };

                tempGroup[coord].stack.Add(blockData);
            }

            foreach (var cellData in tempGroup.Values)
            {
                data.cells.Add(cellData);
            }

            string json = JsonUtility.ToJson(data, true);
            if (!Directory.Exists(Application.streamingAssetsPath)) Directory.CreateDirectory(Application.streamingAssetsPath);
            File.WriteAllText(SavePath, json);

            Debug.Log($"地图已保存到: {SavePath}，共 {data.cells.Count} 个格子");
        }


        [ContextMenu("Load Map")]
        public void LoadMap()
        {
            if (!File.Exists(SavePath)) return;
            EnsurePrefabCache();

            for (int i = mapRoot.childCount - 1; i >= 0; i--)
            {
#if UNITY_EDITOR
                DestroyImmediate(mapRoot.GetChild(i).gameObject);
#else
            Destroy(mapRoot.GetChild(i).gameObject);
#endif
            }

            string json = File.ReadAllText(SavePath);
            MapData data = JsonUtility.FromJson<MapData>(json);

            List<MapObject> allObjects = new List<MapObject>();
            Dictionary<Vector3Int, MapObject> blocks = new Dictionary<Vector3Int, MapObject>();
            foreach (var cellData in data.cells)
            {
                foreach (var blockData in cellData.stack)
                {
                    string configId = LegacyPrefabMapping.TryGetValue(blockData.prefabId, out var mapped) ? mapped : blockData.prefabId;
                    if (!string.IsNullOrEmpty(configId) && _prefabCache.TryGetValue(configId, out var prefab))
                    {
                        Vector3 pos = new Vector3(cellData.x * cellSize, blockData.heightY, cellData.z * cellSize);
                        Quaternion rot = Quaternion.Euler(0, blockData.rotationY, 0);

                        GameObject obj = Instantiate(prefab, pos, rot, mapRoot);
                        Utils.Utils.SetLayerRecursively(obj, "Block");
                        MapObject instanceMapObj = obj.GetComponent<MapObject>();

                        allObjects.Add(instanceMapObj);
                    }
                }
            }

            logicalGrid.Build(allObjects);

            Debug.Log($"地图加载完毕，构建了 {logicalGrid.BlockCount} 个逻辑方块。");
        }


        [ContextMenu("Save To SO")]
        public void SaveToSO()
        {
            if (currentLevelData == null)
            {
                Debug.LogError("没有绑定 MapDataSO，无法保存！");
                return;
            }

            currentLevelData.blocks.Clear();

            HashSet<Vector3Int> recordedPositions = new HashSet<Vector3Int>();

            foreach (Transform child in mapRoot)
            {
                MapObject mapObj = child.GetComponent<MapObject>();
                if (mapObj != null)
                {
                    int x = Mathf.RoundToInt(child.position.x / cellSize);

                    int y = Mathf.RoundToInt(child.position.y / cellSize);

                    int z = Mathf.RoundToInt(child.position.z / cellSize);

                    Vector3Int pos = new Vector3Int(x, y, z);

                    if (recordedPositions.Contains(pos))
                    {
                        Debug.LogWarning($"⚠️ 发现重叠方块：位置 {pos} 已存在，跳过重复保存。建议清理场景。");
                        continue;
                    }
                    recordedPositions.Add(pos);

                    currentLevelData.blocks.Add(new MapBlockData
                    {
                        position = pos,
                        prefabId = mapObj.prefabId,
                        blockConfigId = mapObj.blockConfigId,
                        rotationIndex = Mathf.RoundToInt(child.eulerAngles.y / 90f) % 4,
                        XRound = mapObj.type == BlockType.Slab ? -90 : 0,
                        ZRound = mapObj.ZRound,
                        YRound = mapObj.YRound,
                    });
                }
            }

            // Mark dirty so Unity saves the asset to disk
#if UNITY_EDITOR
            UnityEditor.EditorUtility.SetDirty(currentLevelData);
            UnityEditor.AssetDatabase.SaveAssets();
#endif
            Debug.Log($"地图保存成功！共保存 {currentLevelData.blocks.Count} 个方块 (已自动去重)。");
        }

        [ContextMenu("Load From SO")]
        public void LoadFromSO()
        {
            if (currentLevelData == null)
            {
                Debug.LogError("未指定 Level Data (SO)！");
                return;
            }

            if (mapRoot == null)
            {
                Debug.LogError("未指定 mapRoot！");
                return;
            }

            // Children must be deleted in reverse order
            for (int i = mapRoot.childCount - 1; i >= 0; i--)
            {
                GameObject child = mapRoot.GetChild(i).gameObject;

#if UNITY_EDITOR
                if (Application.isPlaying)
                    Destroy(child);
                else
                    Undo.DestroyObjectImmediate(child); // Undo keeps the delete revertible
#else
                Destroy(child);
#endif
            }

            EnsurePrefabCache();

            List<MapObject> allObjects = new List<MapObject>();
            Dictionary<Vector3Int, MapObject> blocks = new Dictionary<Vector3Int, MapObject>();
            bool useNewSystem = BlockConfigManager.Instance != null;

            foreach (var block in currentLevelData.blocks)
            {
                string configId = ResolveConfigId(block);
                ResolvedBlockConfig resolvedCfg = null;

                if (useNewSystem && configId != null)
                    resolvedCfg = BlockConfigManager.Instance.Get(configId);

                GameObject prefabGo = null;
                if (configId != null)
                    _prefabCache.TryGetValue(configId, out prefabGo);

                if (prefabGo == null)
                {
                    Debug.LogWarning($"找不到预制体: configId={configId}, prefabId={block.prefabId}");
                    continue;
                }

                Vector3 pos = new Vector3(block.position.x, block.position.y, block.position.z) * cellSize;
                Quaternion rot = Quaternion.Euler(block.XRound, block.YRound, block.ZRound);

                GameObject obj;
#if UNITY_EDITOR
                if (!Application.isPlaying)
                {
                    obj = (GameObject)UnityEditor.PrefabUtility.InstantiatePrefab(prefabGo, mapRoot);
                    obj.transform.position = pos;
                    obj.transform.rotation = rot;
                }
                else
#endif
                {
                    obj = Instantiate(prefabGo, pos, rot, mapRoot);
                }
                Utils.Utils.SetLayerRecursively(obj, "Block");

                MapObject mapObj = obj.GetComponent<MapObject>();

                if (resolvedCfg != null)
                {
                    mapObj.blockConfigId = configId;
                    mapObj.type = resolvedCfg.Type;
                    mapObj.isWalkable = resolvedCfg.IsWalkable;
                    mapObj.XCellSize = resolvedCfg.XCellSize;
                    mapObj.YCellSize = resolvedCfg.YCellSize;
                    mapObj.ZCellSize = resolvedCfg.ZCellSize;
                    mapObj.heightOffset = resolvedCfg.HeightOffset;
                    mapObj.OnEnterEffect = resolvedCfg.OnEnterEffects;
                    mapObj.OnExitEffect = resolvedCfg.OnExitEffects;
                    mapObj.OnStayEffect = resolvedCfg.OnStayEffects;
                }

                allObjects.Add(mapObj);
                blocks.Add(Vector3Int.FloorToInt(pos), mapObj);
            }

            logicalGrid.Build(allObjects);
            this.blocks = blocks;
            this.initVoxel();

            Debug.Log($"地图加载完毕，生成了 {allObjects.Count} 个方块。");
        }

        public Vector3 GetWorldPosition(Vector3Int gridPos)
        {
            float x = gridPos.x * cellSize;
            float z = gridPos.z * cellSize;

            float floorHeight = gridPos.y * cellSize;

            if (logicalGrid != null)
            {
                float blockHeight = logicalGrid.GetBlockYSize(gridPos);
                floorHeight += blockHeight * cellSize;
            }

            // Pivot is at the feet, so this is the final ground height
            return new Vector3(x, floorHeight, z);
        }

        public void ClearMap()
        {
            if (mapRoot != null)
            {
                for (int i = mapRoot.childCount - 1; i >= 0; i--)
                {
                    GameObject child = mapRoot.GetChild(i).gameObject;

#if UNITY_EDITOR
                    if (Application.isPlaying)
                        Destroy(child);
                    else
                        DestroyImmediate(child);
#else
                Destroy(child);
#endif
                }
            }

            if (logicalGrid != null)
            {
                logicalGrid.Clear();
            }

            // Free the GPU voxel volume / heightmap tied to the old map.
            Render.VoxelGpuMap.Release();

            Debug.Log("地图已清理");
        }

        public void GetMapBounds(out Vector2 minBounds, out Vector2 maxBounds)
        {
            minBounds = new Vector2(float.MaxValue, float.MaxValue);
            maxBounds = new Vector2(float.MinValue, float.MinValue);

            if (logicalGrid != null && logicalGrid.BlockCount > 0)
            {
                if (logicalGrid.blockData == null) return;
                foreach (var kvp in logicalGrid.blockData)
                {
                    Vector3Int pos = kvp.Key;

                    minBounds.x = Mathf.Min(minBounds.x, pos.x);
                    minBounds.y = Mathf.Min(minBounds.y, pos.z);

                    maxBounds.x = Mathf.Max(maxBounds.x, pos.x);
                    maxBounds.y = Mathf.Max(maxBounds.y, pos.z);
                }
            }
            else
            {
                minBounds = Vector2.zero;
                maxBounds = Vector2.zero;
            }
        }
        public void initVoxel()
        {
            if (blocks == null || blocks.Count == 0)
            {
                Debug.LogError("blocks is null or empty");
            }
            int maxWidth = -99999;
            int maxHeight = -99999;
            int maxDepth = -99999;
            foreach (var block in blocks)
            {
                if (block.Key.y > maxDepth)
                {
                    maxDepth = block.Key.y;
                }
                if (block.Key.x > maxWidth)
                {
                    maxWidth = block.Key.x;
                }
                if (block.Key.z > maxHeight)
                {
                    maxHeight = block.Key.z;
                }
            }
            // Convert max coordinates to grid sizes (VoxelGrid dims are counts)
            int gridWidth = maxWidth + 1;
            int gridHeight = maxHeight + 1;
            int gridDepth = maxDepth + 1;
            if (gridWidth < 1 || gridWidth > 16 || gridHeight < 1 || gridHeight > 16 || gridDepth < 1 || gridDepth > 16)
            {
                Debug.Log("Depth" + maxDepth);
                Debug.Log("Width" + maxWidth);
                Debug.Log("Height" + maxHeight);
                Debug.LogError("The map is too high or empty");
                return;
            }
            if (gridHeight != gridWidth)
            {
                Debug.LogWarning("The map width ~= height");
            }
            voxelGrid = new VoxelGrid(gridWidth, gridHeight, gridDepth);
            foreach (var block in blocks)
            {
                var type = block.Value.type;
                byte type_val = 255;
                type_val = Utils.Utils.getBlockTypeVal(type);
                if (type_val == 255)
                {
                    Debug.Log("type:" + type);
                    Debug.LogError("Error block type");
                    return;
                }
                var pos = block.Key;
                voxelGrid.SetBlock(pos.x, pos.y, pos.z, type_val);
            }

            // Upload the static map into the GPU byte-voxel volume so GI /
            // DDA ray queries can run entirely on the GPU (type ids come from
            // the baked FaceTiles atlas, half-block flag from YCellSize).
            Render.VoxelGpuMap.UploadFromBlocks(blocks);
        }


    }
}
