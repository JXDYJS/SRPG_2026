using UnityEngine;
using System.Collections.Generic;
using Global;

namespace GamePlay.Grid
{
    // Storage data for a single map block
    [System.Serializable]
    public class MapBlockData
    {
        public Vector3Int position;
        public string prefabId;           // legacy numeric ID (backward compatible)
        public string blockConfigId;      // new semantic ID
        public int rotationIndex;   // 0=0, 1=90, 2=180, 3=270
        public int XRound = 0;
        public int ZRound = 0;
        public int YRound = 0;
    }

    [CreateAssetMenu(fileName = "NewMapData", menuName = "Game/Map Data (SO)")]
    public class MapDataSO : ScriptableObject
    {
        public List<MapBlockData> blocks = new List<MapBlockData>();
        
        // Editor-only config (not packed into the build)
        #if UNITY_EDITOR
        public int editorPreviewId = 0; // currently selected brush ID
        #endif
    }
}