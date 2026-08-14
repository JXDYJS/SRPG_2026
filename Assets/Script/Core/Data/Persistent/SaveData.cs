using System;
using System.Collections.Generic;
using Map;

namespace Core.Data.Persistent
{
    /// <summary>
    /// Root save object, serialized with Newtonsoft.Json. Old saves pick up new fields via defaults.
    /// </summary>
    [Serializable]
    public class SaveData
    {
        public string version = "1.0";
        public string saveTime;
        public string currentStageId;

        public List<CharacterSaveData> party = new List<CharacterSaveData>();
        public List<string> relics = new List<string>();

        /// <summary>Party-shared consumable stock: itemId -&gt; remaining uses.</summary>
        public Dictionary<string, int> items = new Dictionary<string, int>();

        public PlayerProgressData progress = new PlayerProgressData();

        public int highestClearedStage;

        public int seed;
        public NodeMapData nodeMapData;

        /// <summary>Player position on the map (layer/row), used with nodeMapData to restore progress.</summary>
        public int currentPlayerLayer;
        public int currentPlayerRow;
    }
}
