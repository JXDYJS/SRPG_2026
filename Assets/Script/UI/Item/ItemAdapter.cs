using System;

namespace UI.Item
{
    /// <summary>存储用非泛型适配器接口</summary>
    public interface IItemAdapter
    {
        IItemDescriptor Adapt(object item, SlotContext ctx);
    }

    /// <summary>
    /// ItemAdapter&lt;T&gt; — 泛型适配器基类
    ///
    /// 为某类槽位内容编写适配器时继承本类，实现 Adapt(T item, SlotContext ctx) 即可。
    /// </summary>
    public abstract class ItemAdapter<T> : IItemAdapter
    {
        public IItemDescriptor Adapt(object item, SlotContext ctx)
        {
            return Adapt((T)item, ctx);
        }

        public abstract IItemDescriptor Adapt(T item, SlotContext ctx);
    }
}
