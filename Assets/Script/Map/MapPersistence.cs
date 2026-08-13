using Core.Data;

namespace Map
{
    /// <summary>
    /// Saves map progress (node map + player position) to persistent storage.
    /// </summary>
    public static class MapPersistence
    {
        /// <summary>Saves map progress (node map + player position); ignored without a save context.</summary>
        public static void SaveMap(NodeMapData map, int layer, int row)
        {
            if (Data.Persistent?.Data == null)
            {
                return;
            }

            Data.Persistent.Data.nodeMapData = map;
            Data.Persistent.Data.currentPlayerLayer = layer;
            Data.Persistent.Data.currentPlayerRow = row;
            Data.Persistent.Save();
        }
    }
}
