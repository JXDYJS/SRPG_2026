using System.Collections.Generic;
using System.IO;
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif
using Global;
using GamePlay.Grid;

namespace Managers
{
    using GamePlay;
public class MapManager : MonoBehaviour
{
    [Header("设置")]
    public Transform mapRoot; // 地图物体的父节点
    public float cellSize = 1.0f;
    [Tooltip("当前要保存或加载的地图名称（不需要加 .json）")]
    public string currentMapName = "Map_01";
    public MapDataSO currentLevelData;

    [Header("资源索引 (ID -> Prefab)")]
    // 你需要在 Inspector 里手动把预制体拖进去，或者写代码自动加载 Resources
    public List<MapObject> prefabIndex; 

    // 运行时逻辑网格
    public LogicalGrid logicalGrid = new LogicalGrid();

    // 路径
    string SavePath => Path.Combine(Application.streamingAssetsPath, currentMapName + ".json");
    public static MapManager Instance { get; private set; } = null;
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
    }
    [ContextMenu("List All Maps (列出所有存档)")]
    public void ListAllMaps()
    {
        if (!Directory.Exists(Application.streamingAssetsPath))
        {
            Debug.Log("存档文件夹不存在。");
            return;
        }

        // 获取所有 .json 文件
        string[] files = Directory.GetFiles(Application.streamingAssetsPath, "*.json");
        Debug.Log($"找到 {files.Length} 个地图存档：");
        
        foreach (string file in files)
        {
            // 只显示文件名，不显示长长的路径
            Debug.Log($"📄 {Path.GetFileNameWithoutExtension(file)}");
        }
    }

    void Start()
    {
        LoadFromSO();
    }

        // ================== 保存逻辑 (3D -> Data) ==================

        [ContextMenu("Save Map")]
    public void SaveMap()
    {
        MapData data = new MapData();
        data.cellSize = cellSize;

        // 临时字典：用来对物体进行 (x, z) 分组
        Dictionary<Vector2Int, CellSaveData> tempGroup = new Dictionary<Vector2Int, CellSaveData>();

        // 1. 扫描所有子物体
        foreach (Transform child in mapRoot)
        {
            MapObject mapObj = child.GetComponent<MapObject>();
            if (mapObj == null) continue; // 忽略没有挂脚本的物体

            // 计算网格坐标
            int x = Mathf.RoundToInt(child.position.x / cellSize);
            int z = Mathf.RoundToInt(child.position.z / cellSize);
            Vector2Int coord = new Vector2Int(x, z);

            // 如果该坐标还没记录过，创建新的 CellData
            if (!tempGroup.ContainsKey(coord))
            {
                tempGroup[coord] = new CellSaveData { x = x, z = z };
            }

            // 2. 创建方块数据
            BlockSaveData blockData = new BlockSaveData
            {
                prefabId = mapObj.prefabId,
                heightY = child.position.y,
                rotationY = Mathf.RoundToInt(child.eulerAngles.y)
            };

            // 3. 加入堆叠列表
            tempGroup[coord].stack.Add(blockData);
        }

        // 4. 将分组好的数据转入 MapData
        foreach (var cellData in tempGroup.Values)
        {
            data.cells.Add(cellData);
        }

        // 5. 写文件
        string json = JsonUtility.ToJson(data, true);
        if (!Directory.Exists(Application.streamingAssetsPath)) Directory.CreateDirectory(Application.streamingAssetsPath);
        File.WriteAllText(SavePath, json);
        
        Debug.Log($"地图已保存到: {SavePath}，共 {data.cells.Count} 个格子");
    }

    // ================== 加载逻辑 (Data -> 3D + Logic) ==================

[ContextMenu("Load Map")]
    public void LoadMap()
    {
        if (!File.Exists(SavePath)) return;

        // 1. 清理
        for (int i = mapRoot.childCount - 1; i >= 0; i--)
        {
            #if UNITY_EDITOR
            DestroyImmediate(mapRoot.GetChild(i).gameObject);
            #else
            Destroy(mapRoot.GetChild(i).gameObject);
            #endif
        }

        // 2. 读取
        string json = File.ReadAllText(SavePath);
        MapData data = JsonUtility.FromJson<MapData>(json);

        List<MapObject> allObjects = new List<MapObject>();

        // 3. 生成
        foreach (var cellData in data.cells)
        {
            foreach (var blockData in cellData.stack)
            {
                MapObject prefab = prefabIndex.Find(p => p.prefabId == blockData.prefabId);
                if (prefab != null)
                {
                    Vector3 pos = new Vector3(cellData.x * cellSize, blockData.heightY, cellData.z * cellSize);
                    Quaternion rot = Quaternion.Euler(0, blockData.rotationY, 0);

                    GameObject obj = Instantiate(prefab.gameObject, pos, rot, mapRoot);
                    MapObject instanceMapObj = obj.GetComponent<MapObject>();
                    
                    // 收集所有生成的物体
                    allObjects.Add(instanceMapObj);
                }
            }
        }

        // 4. 构建 3D 逻辑网格 (关键修改)
        logicalGrid.Build(allObjects);
        
        Debug.Log($"地图加载完毕，构建了 {logicalGrid.blockData.Count} 个逻辑方块。");
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
        
        // 1. 创建一个哈希集合，用于记录已占用的位置
        HashSet<Vector3Int> recordedPositions = new HashSet<Vector3Int>();
        
        foreach (Transform child in mapRoot)
        {
            MapObject mapObj = child.GetComponent<MapObject>();
            if (mapObj != null)
            {
                // 2. 计算网格坐标
                // 务必除以 cellSize，否则如果 cellSize不是1，坐标会变大
                int x = Mathf.RoundToInt(child.position.x / cellSize);
                
                // 针对底部Pivot的Y轴处理：
                // 如果物体摆放时已经是整数位置（如0, 1, 2），RoundToInt 是安全的。
                // 如果有微小误差（如0.0001），RoundToInt 也能修正。
                int y = Mathf.RoundToInt(child.position.y / cellSize); 
                
                int z = Mathf.RoundToInt(child.position.z / cellSize);
                
                Vector3Int pos = new Vector3Int(x, y, z);

                // 3. 核心去重逻辑
                if (recordedPositions.Contains(pos))
                {
                    Debug.LogWarning($"⚠️ 发现重叠方块：位置 {pos} 已存在，跳过重复保存。建议清理场景。");
                    continue; // 跳过这个重复的方块
                }

                // 4. 记录位置并保存数据
                recordedPositions.Add(pos);
                
                currentLevelData.blocks.Add(new MapBlockData
                {
                    position = pos,
                    prefabId = mapObj.prefabId,
                    // 规范化旋转：保证只有 0, 1, 2, 3 四个值
                    rotationIndex = Mathf.RoundToInt(child.eulerAngles.y / 90f) % 4,
                    XRound = mapObj.type == BlockType.Slab ? -90 : 0,
                    ZRound = mapObj.ZRound,
                    YRound = mapObj.YRound,
                });
            }
        }
        
        // 标记已脏，通知 Unity 保存磁盘文件
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
        
        // ================== 新增：清理逻辑 ==================
        if (mapRoot != null)
        {
            // 注意：删除子物体必须倒序遍历
            for (int i = mapRoot.childCount - 1; i >= 0; i--)
            {
                GameObject child = mapRoot.GetChild(i).gameObject;
                
                // 区分编辑器模式和运行模式
#if UNITY_EDITOR
                if (Application.isPlaying)
                    Destroy(child);
                else
                    Undo.DestroyObjectImmediate(child); // 支持撤销的删除，或者用 DestroyImmediate(child)
#else
                Destroy(child);
#endif
            }
        }
        // ==================================================

        List<MapObject> allObjects = new List<MapObject>();
        
        foreach (var block in currentLevelData.blocks)
        {
            // 查找 ID 对应的预制体
            // 注意：这里用 string ID 还是 int ID 取决于你的 MapDataSO 定义，假设是 int prefabId
            MapObject prefab = prefabIndex.Find(p => p.prefabId == block.prefabId); // 假设 MapObject 有 int prefabId 字段
            
            // 如果你的 MapDataSO 用的是 string prefabId，请改为 p.prefabId == block.prefabId
            
            if (prefab)
            {
                Vector3 pos = new Vector3(block.position.x, block.position.y, block.position.z) * cellSize;

                Quaternion rot = Quaternion.Euler(block.XRound,block.YRound,block.ZRound);
                
                GameObject obj;
#if UNITY_EDITOR
                if (!Application.isPlaying)
                {
                    // 编辑器下使用 PrefabUtility 可以保持预制体关联（变蓝）
                    obj = (GameObject)UnityEditor.PrefabUtility.InstantiatePrefab(prefab.gameObject, mapRoot);
                    obj.transform.position = pos;
                    obj.transform.rotation = rot;
                }
                else
#endif
                {
                    // 运行时直接生成
                    obj = Instantiate(prefab.gameObject, pos, rot, mapRoot);
                }

                MapObject mapObj = obj.GetComponent<MapObject>();
                // 如果需要，可以在这里把保存时的某些额外属性赋回去
                
                allObjects.Add(mapObj);
            }
            else
            {
                Debug.LogWarning($"找不到 ID 为 {block.prefabId} 的方块预制体！");
            }
        }
        
        // 构建逻辑网格
        logicalGrid.Build(allObjects);
        
        Debug.Log($"地图加载完毕，生成了 {allObjects.Count} 个方块。");
    }

    public Vector3 GetWorldPosition(Vector3Int gridPos)
    {
        // 1. 基础平面坐标
        float x = gridPos.x * cellSize;
        float z = gridPos.z * cellSize;

        // 2. 计算高度 (Y)
        // 基础高度 (层级 * 格子大小)
        float floorHeight = gridPos.y * cellSize;
        
        // 叠加方块厚度 (从 LogicalGrid 查数据)
        if (logicalGrid != null)
        {
            float blockHeight = logicalGrid.GetBlockYSize(gridPos);
            floorHeight += blockHeight * cellSize;
        }

        // 返回结果 (Pivot 在脚底，所以这就是最终地面高度)
        return new Vector3(x, floorHeight, z);
    }

    public void ClearMap()
    {
        // 清理地图根节点下的所有子物体
        if (mapRoot != null)
        {
            // 注意：删除子物体必须倒序遍历
            for (int i = mapRoot.childCount - 1; i >= 0; i--)
            {
                GameObject child = mapRoot.GetChild(i).gameObject;
                
                // 区分编辑器模式和运行模式
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
        
        // 清理逻辑网格
        if (logicalGrid != null)
        {
            logicalGrid.Clear();
        }
        
        Debug.Log("地图已清理");
    }
    
    // 调试：在 Scene 窗口画出哪些格子能走
    // void OnDrawGizmos()
    // {
    //     if (logicalGrid == null || logicalGrid.blockData == null) return;

    //     foreach (var kvp in logicalGrid.blockData)
    //     {
    //         Vector3Int pos = kvp.Key;
    //         BlockType type = kvp.Value;

    //         if (type == BlockType.Air) continue;

    //         // 根据类型画不同颜色
    //         if (type == BlockType.Solid) Gizmos.color = new Color(0, 1, 0, 0.3f);
    //         else if (type == BlockType.Slab) Gizmos.color = new Color(1, 1, 0, 0.3f);
    //         else Gizmos.color = new Color(1, 0, 0, 0.3f); // 障碍

    //         // 画在方块中心
    //         Vector3 center = new Vector3(pos.x * cellSize, pos.y * cellSize + 0.5f, pos.z * cellSize);
    //         Gizmos.DrawWireCube(center, new Vector3(cellSize * 0.9f, cellSize * 0.9f, cellSize * 0.9f));
    //     }
    // }
}
}