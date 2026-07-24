using UnityEngine;
using System.Collections.Generic;
using Global;

namespace GamePlay.Grid
{
    // 单个方块的存储数据
    [System.Serializable]
    public class MapBlockData
    {
        public Vector3Int position;
        public string prefabId;           // 旧系统数值 ID（向后兼容）
        public string blockConfigId;      // 新系统语义 ID
        public int rotationIndex;   // 0=0, 1=90, 2=180, 3=270
        public int XRound = 0;
        public int ZRound = 0;
        public int YRound = 0;
    }

    [CreateAssetMenu(fileName = "NewMapData", menuName = "Game/Map Data (SO)")]
    public class MapDataSO : ScriptableObject
    {
        public List<MapBlockData> blocks = new List<MapBlockData>();
        
        // 编辑器用的配置（不打包进游戏）
        #if UNITY_EDITOR
        public int editorPreviewId = 0; // 当前选中的笔刷ID
        #endif
    }
}