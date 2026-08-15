using GamePlay.Units;
using UnityEngine;

namespace GamePlay.Relics
{
    /// <summary>Mana Crystal: recover 25% of max MP at the start of every turn.</summary>
    public class RelicManaCrystal : RelicBase
    {
        private const float RECOVER_PERCENT = 0.25f;

        public override void OnTurnStart(MapUnit owner)
        {
            base.OnTurnStart(owner);
            if (owner.Character == null) return;

            int maxMP = (int)owner.Character.statSystem.maxMP.getValue();
            int recover = Mathf.Max(1, (int)(maxMP * RECOVER_PERCENT));
            owner.Character.statSystem.currentMP = Mathf.Min(maxMP, owner.Character.statSystem.currentMP + recover);
        }
    }
}
