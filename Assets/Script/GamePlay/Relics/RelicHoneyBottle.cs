using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>
    /// Honey Bottle 蜂蜜瓶 — 被动：受到的治疗效果 +30%。
    /// 在 OnBeHealed 阶段直接修改治疗量（治疗在分发后结算）。
    /// </summary>
    public class RelicHoneyBottle : RelicBase
    {
        public override void OnBeHealed(DamageInfo healInfo)
        {
            healInfo.damage *= 1.3f;
        }
    }
}
