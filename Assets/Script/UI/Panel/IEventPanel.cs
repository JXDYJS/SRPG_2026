using Map;

namespace UI.Panel
{
    /// <summary>
    /// 事件面板统一入口 — 通用选择窗口与特殊小游戏窗口（panelName 分发）都实现它。
    /// 面板判定"事件结束"时调用 Utils.Utils.FinishNode&lt;T&gt;() 回到地图并解锁下一层。
    /// </summary>
    public interface IEventPanel
    {
        void Init(EventNode node);
    }
}
