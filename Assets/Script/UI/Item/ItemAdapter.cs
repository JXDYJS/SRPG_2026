using System;

namespace UI.Item
{
    /// <summary>Non-generic adapter interface for storage.</summary>
    public interface IItemAdapter
    {
        IItemDescriptor Adapt(object item, SlotContext ctx);
    }

    /// <summary>Generic adapter base class for slot content.</summary>
    public abstract class ItemAdapter<T> : IItemAdapter
    {
        public IItemDescriptor Adapt(object item, SlotContext ctx)
        {
            return Adapt((T)item, ctx);
        }

        public abstract IItemDescriptor Adapt(T item, SlotContext ctx);
    }
}
