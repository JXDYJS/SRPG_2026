using System;
using UnityEngine;

namespace UI.Item
{
    /// <summary>
    /// IItemDescriptor — 槽位内容统一描述接口
    ///
    /// SimpleSlot 等 UI 只依赖本接口渲染，不关心具体是 buff/stat/skill/relic。
    /// 各类型的差异由 ItemView 注册的适配器在 Adapt 时抹平，UI 侧不再写 if 判别。
    /// </summary>
    public interface IItemDescriptor
    {
        string Name { get; }
        string Subtext { get; }
        string Tooltip { get; }
        Sprite Icon { get; }
        string IconPath { get; }
        bool ShowIcon { get; }
        event Action Changed;
        void Unlink();
    }
}
