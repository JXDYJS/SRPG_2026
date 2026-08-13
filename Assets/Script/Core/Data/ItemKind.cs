namespace Core.Data
{
    /// <summary>
    /// Unified item category across layers (GiveItem/ItemView).
    /// Relics use the r_ prefix, currency is a plain item, buffs are not items.
    /// </summary>
    public enum ItemKind
    {
        Currency,
        Relic,
        Character,
    }
}
