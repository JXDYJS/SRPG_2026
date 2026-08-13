using GamePlay.Units;

namespace UI.Item
{
    /// <summary>Optional context (owning unit, label) for slot content parsing.</summary>
    public struct SlotContext
    {
        public MapUnit unit;
        public string label;
    }
}
