using System;

namespace Core.Data.Persistent
{
    /// <summary>
    /// Serialized character data sufficient to rebuild a CharacterInstance via UnitFactory.
    /// </summary>
    [Serializable]
    public class CharacterSaveData
    {
        public string characterId;
        public int level;
        public float bonusHp;
        public float bonusAtk;
        public float bonusDef;
        public float bonusRes;
    }
}
