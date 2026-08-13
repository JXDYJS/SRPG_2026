using Map;

namespace UI.Panel
{
    /// <summary>Common interface for event panels; signals completion via Utils.FinishNode&lt;T&gt;().</summary>
    public interface IEventPanel
    {
        void Init(EventNode node);
    }
}
