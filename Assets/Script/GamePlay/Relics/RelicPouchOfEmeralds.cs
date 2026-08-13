using GamePlay.Units;

namespace GamePlay.Relics
{
    /// <summary>
    /// Fallback relic purchasable repeatedly: grants gold on buy, stays out of the collection
    /// and battle modifiers, and fills empty shop slots when the relic pool runs out.
    /// </summary>
    public class RelicPouchOfEmeralds : RelicBase
    {
        public const string ITEM_ID = "r_gold_pouch";
        public const int GOLD_AMOUNT = 10;

        public override void OnApply(MapUnit owner)
        {
        }

        public override void OnRemove(MapUnit owner)
        {
        }
    }
}
