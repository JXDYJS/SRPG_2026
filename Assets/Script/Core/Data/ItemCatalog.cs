namespace Core.Data
{
    /// <summary>
    /// ItemCatalog — 类别解析器（中间层）
    ///
    /// 统一按 itemId 解析其类别：类别 = 该 id 属于哪张表/哪个注册源，
    /// 不解析前缀、不把遗物等"转化"为 item。
    /// 授予层（RunManager.GiveItem）与显示层（UI.Item.ItemView）共用本解析。
    ///
    /// 新增类别：在对应表/注册源落成后补一行解析即可。
    /// </summary>
    public static class ItemCatalog
    {
        public static bool TryResolve(string itemId, out ItemKind kind)
        {
            kind = default;
            if (string.IsNullOrEmpty(itemId)) return false;

            // 纯正 item：无前缀，直接按 ID 注册（金币）
            if (itemId == Data.Config.shopConfig.goldID)
            {
                kind = ItemKind.Currency;
                return true;
            }

            // 遗物：注册在 RelicConfigs 配表（r_ 前缀）
            if (Data.Table.RelicConfigs.ContainsKey(itemId))
            {
                kind = ItemKind.Relic;
                return true;
            }

            // TODO: 未来纯正 item 配表（药水等）落成后：
            // if (Data.Table.ItemConfigs.TryGetValue(itemId, out var cfg)) { kind = cfg.kind; return true; }
            // TODO: 角色表落成后：
            // if (Data.Table.CharacterConfigs.ContainsKey(itemId)) { kind = ItemKind.Character; return true; }

            return false;
        }
    }
}
