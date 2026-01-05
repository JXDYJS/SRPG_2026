using System.Collections.Generic;
using System.IO;
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace MapSystem
{
public class MapManager : MonoBehaviour
{
    [Header("设置")]
    public Transform mapRoot; // 地图物体的父节点
    public float cellSize = 1.0f;
    public string saveFileName = "map_data.json";

    [Header("资源索引 (ID -> Prefab)")]
    // 你需要在 Inspector 里手动把预制体拖进去，或者写代码自动加载 Resources
    public List<MapObject> prefabIndex; 

    // 运行时逻辑网格
    public LogicalGrid logicalGrid = new LogicalGrid();

    // 路径
    string SavePath => Path.Combine(Application.streamingAssetsPath, saveFileName);

    void Start()
    {
        LoadMap();
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
        if (!File.Exists(SavePath))
        {
            Debug.LogError("存档文件不存在");
            return;
        }

        // 1. 清理现有场景
        // 注意：在编辑器模式下要用 DestroyImmediate，运行时用 Destroy
        for (int i = mapRoot.childCount - 1; i >= 0; i--)
        {
#if UNITY_EDITOR
            DestroyImmediate(mapRoot.GetChild(i).gameObject);
#else
            Destroy(mapRoot.GetChild(i).gameObject);
#endif
        }

        // 2. 读取数据
        string json = File.ReadAllText(SavePath);
        MapData data = JsonUtility.FromJson<MapData>(json);

        // 临时字典用来构建逻辑网格
        Dictionary<Vector2Int, List<MapObject>> liveObjects = new Dictionary<Vector2Int, List<MapObject>>();

        // 3. 生成 3D 物体
        foreach (var cellData in data.cells)
        {
            Vector2Int coord = new Vector2Int(cellData.x, cellData.z);
            liveObjects[coord] = new List<MapObject>();

            foreach (var blockData in cellData.stack)
            {
                // 查找 Prefab
                MapObject prefab = prefabIndex.Find(p => p.prefabId == blockData.prefabId);
                if (prefab != null)
                {
                    Vector3 pos = new Vector3(cellData.x * cellSize, blockData.heightY, cellData.z * cellSize);
                    Quaternion rot = Quaternion.Euler(0, blockData.rotationY, 0);

                    GameObject obj = Instantiate(prefab.gameObject, pos, rot, mapRoot);
                    MapObject instanceMapObj = obj.GetComponent<MapObject>();
                    
                    // 加入列表，准备生成逻辑网格
                    liveObjects[coord].Add(instanceMapObj);
                }
                else
                {
                    Debug.LogWarning($"找不到 ID 为 {blockData.prefabId} 的预制体");
                }
            }
        }

        // 4. 构建逻辑网格 (烘焙数据)
        logicalGrid.Build(liveObjects);
        
        Debug.Log("地图加载完毕，逻辑网格已构建。");
    }
    
    // 调试：在 Scene 窗口画出哪些格子能走
    void OnDrawGizmos()
    {
        // 必须判空，防止编辑器没运行报错
        if (logicalGrid == null || logicalGrid.cells == null) return;

        foreach (var cell in logicalGrid.cells.Values)
        {
            // 修正变量名：isWalkable -> canWalk
            if (cell.canWalk) 
            {
                Gizmos.color = new Color(0, 1, 0, 0.5f); // 绿色半透明
                
                // 修正变量名：topHeight -> floorHeight
                Vector3 center = new Vector3(cell.x * cellSize, cell.floorHeight, cell.z * cellSize);
                
                Gizmos.DrawCube(center, new Vector3(cellSize * 0.9f, 0.1f, cellSize * 0.9f));
            }
            else
            {
                Gizmos.color = Color.red; // 红色代表有障碍
                Vector3 center = new Vector3(cell.x * cellSize, 0, cell.z * cellSize);
                Gizmos.DrawWireCube(center, new Vector3(cellSize, 1, cellSize));
            }
        }
    }
}
}