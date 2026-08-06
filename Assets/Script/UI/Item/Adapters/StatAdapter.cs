using GamePlay.Units;
using Status.state;

namespace UI.Item
{
    /// <summary>
    /// StatAdapter — Stat 适配器
    ///
    /// Stat 需要外部上下文（所属单位 + 标签名）才能显示 HP/MP 等完整文本，
    /// 由 SlotContext 传入。数值变化（OnValueChanged）时桥接到描述 Changed。
    /// </summary>
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
