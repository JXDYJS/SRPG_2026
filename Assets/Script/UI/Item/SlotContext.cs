using GamePlay.Units;

namespace UI.Item
{
    /// <summary>
    /// SlotContext — 解析槽位内容时所需的可选上下文
    ///
    /// 仅 stat 等需要外部上下文（所属单位、标签名）的类型使用，其余类型传默认值即可。
    /// </summary>
    public struct SlotContext
    {
        public MapUnit unit;
        public string label;
    }
}
