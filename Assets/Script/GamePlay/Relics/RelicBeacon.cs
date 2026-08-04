using GamePlay.Buff;
using GamePlay.Units;

namespace GamePlay.Relics
{
    /// <summary>
    /// Beacon 信标 — 战斗开始，我方全体获得 1 层『力量』（攻击力 +1，不衰减）。
    /// </summary>
    public class RelicBeacon : RelicBase
    {
        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            BuffManager.ApplyBuffToUnit(owner, "power", 1);
        }
    }
}
