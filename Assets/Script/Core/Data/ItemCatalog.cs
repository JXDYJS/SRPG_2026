namespace Core.Data
{
    /// <summary>
    /// Resolves an itemId to its category; shared by the grant layer (RunManager.GiveItem)
    /// and the display layer (UI.Item.ItemView).
    /// </summary>
    public static class ItemCatalog
    {
        public static bool TryResolve(string itemId, out ItemKind kind)
        {
            kind = default;
            if (string.IsNullOrEmpty(itemId)) return false;

            if (itemId == Data.Config.shopConfig.goldID)
            {
                kind = ItemKind.Currency;
                return true;
            }

            if (Data.Table.RelicConfigs.ContainsKey(itemId))
            {
                kind = ItemKind.Relic;
                return true;
            }

            return false;
        }
    }
}
