namespace Core.Data
{
    /// <summary>
    /// Unified item category across layers (GiveItem/ItemView).
    /// Relics use the r_ prefix, currency is a plain item, consumable items use the it_ prefix.
    /// </summary>
    public enum ItemKind
    {
        Currency,
        Relic,
        Character,
        Item,
    }
}
