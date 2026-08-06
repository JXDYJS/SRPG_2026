namespace Core.Data
{
    /// <summary>
    /// ItemKind — 物品类别
    ///
    /// 用于跨层（授予 GiveItem / 显示 ItemView）统一识别一个 itemId 属于哪种类别。
    /// 类别不与"物品"强绑定：遗物（r_ 前缀）是 relic，金币是纯正 item（Currency），
    /// buff 不在任何物品表内，天然不属于这里。
    /// 未来：恢复药水 → Consumable，角色表落成后启用 Character。
    /// </summary>
    public enum ItemKind
    {
        Currency,
        Relic,
        Character,
    }
}
