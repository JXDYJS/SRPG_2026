using GamePlay.Units;
using Status.state;

namespace UI.Item
{
    /// <summary>Bridges a Stat to an IItemDescriptor using the unit context and label from SlotContext.</summary>
    public class StatAdapter : ItemAdapter<Stat>
    {
        public override IItemDescriptor Adapt(Stat stat, SlotContext ctx)
        {
            MapUnit unit = ctx.unit;
            string label = ctx.label;
            if (unit == null || string.IsNullOrEmpty(label))
            {
                return null;
            }

            var desc = new ItemDescriptor
            {
                NameGetter = () => string.Empty,
                SubtextGetter = () =>
                {
                    string number = $"{stat.getValue()}";
                    if (label == "HP" || label == "MP")
                    {
                        if (label == "HP")
                            number = $"{unit.Character.statSystem.currentHP} / {stat.getValue()}";
                        if (label == "MP")
                            number = $"{unit.Character.statSystem.currentMP} / {stat.getValue()}";
                    }
                    return $"{label}: {number}";
                },
                ShowIcon = false,
            };
            desc.LinkSource(
                add => stat.OnValueChanged += add,
                remove => stat.OnValueChanged -= remove);
            return desc;
        }
    }
}
