using System;

namespace Core.Data.Persistent
{
    /// <summary>Persistent player progress save data; ObservableValue fields notify UI on change.</summary>
    [Serializable]
    public class PlayerProgressData
    {
        public ObservableValue<int> gold = new();
        public ObservableValue<int> highestClearedStage = new();
    }
}
