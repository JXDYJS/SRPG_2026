using System.Collections.Generic;
using UnityEngine;

namespace GamePlay.Grid
{
    [System.Serializable]
    public class MapData
    {
        public float cellSize = 1.0f;
        public List<CellSaveData> cells = new List<CellSaveData>();
    }

    [System.Serializable]
    public class CellSaveData
    {
        public int x;
        public int z;

        // Stacked objects on this cell, bottom to top
        public List<BlockSaveData> stack = new List<BlockSaveData>();
    }

    [System.Serializable]
    public class BlockSaveData
    {
        public string prefabId;
        public float heightY;
        public int rotationY;
    }
}
