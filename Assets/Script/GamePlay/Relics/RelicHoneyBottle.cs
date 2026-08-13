using Status.damage;

namespace GamePlay.Relics
{
    /// <summary>Passive: incoming healing is increased by 30%.</summary>
    public class RelicHoneyBottle : RelicBase
    {
        public override void OnBeHealed(DamageInfo healInfo)
        {
            healInfo.damage *= 1.3f;
        }
    }
}
