using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class MapData
{
    public float cellSize = 1.0f;
    // 所有的格子数据
    public List<CellSaveData> cells = new List<CellSaveData>();
}

[System.Serializable]
public class CellSaveData
{
    // 网格坐标 (X, Z)
    public int x;
    public int z;

    // 这个格子上堆叠的所有物体（从下到上）
    // 比如：[0]是泥土(y=0), [1]是泥土(y=1), [2]是火把(y=2)
    public List<BlockSaveData> stack = new List<BlockSaveData>();
}

[System.Serializable]
public class BlockSaveData
{
    public string prefabId; // 对应 MapObject.prefabId
    public float heightY;   // 记录它在世界空间的高度
    public int rotationY;   // 记录旋转（比如火把朝向）
}