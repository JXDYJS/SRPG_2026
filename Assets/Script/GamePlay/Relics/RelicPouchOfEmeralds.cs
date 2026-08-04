using GamePlay.Units;

namespace GamePlay.Relics
{
    /// <summary>
    /// Pouch of Emeralds 绿宝石钱袋 — 可反复购买的兜底遗物。
    /// 购买时立即获得金币，不进入遗物收藏、不参与战斗 modifier。
    /// 当商店遗物池抽空时由 genShopNode 用它填充剩余槽位。
    /// </summary>
    public class RelicPouchOfEmeralds : RelicBase
    {
        public const string ITEM_ID = "r_gold_pouch";
        public const int GOLD_AMOUNT = 10;

        public override void OnApply(MapUnit owner)
        {
            // 占位：钱袋无任何战斗效果
        }

        public override void OnRemove(MapUnit owner)
        {
            // 占位：钱袋无任何战斗效果
        }
    }
}
