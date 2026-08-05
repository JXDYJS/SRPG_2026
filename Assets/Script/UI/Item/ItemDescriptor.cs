using System;
using System.Collections.Generic;
using UnityEngine;

namespace UI.Item
{
    /// <summary>
    /// ItemDescriptor — IItemDescriptor 的默认实现
    ///
    /// Name / Subtext / Tooltip 使用 Func 取值器：适配器传入 lambda 后，
    /// 每次读取都会重新求值，因此 buff 层数、stat 数值变化后由 UI 重新渲染即可拿到最新内容。
    /// LinkSource 负责把源对象的变更事件（如 buff._onChange / stat.OnValueChanged）
    /// 桥接到本描述的 Changed 事件，Unlink 断开连接防止事件泄漏。
    /// </summary>
    public class ItemDescriptor : IItemDescriptor
    {
        public Func<string> NameGetter { get; set; }
        public Func<string> SubtextGetter { get; set; }
        public Func<string> TooltipGetter { get; set; }
        public Sprite Icon { get; set; }
        public string IconPath { get; set; }
        public bool ShowIcon { get; set; } = true;

        private readonly List<(Action<Action> unsubscribe, Action bridge)> _links = new();

        public event Action Changed;

        public string Name => NameGetter?.Invoke() ?? string.Empty;
        public string Subtext => SubtextGetter?.Invoke() ?? string.Empty;
        public string Tooltip => TooltipGetter?.Invoke() ?? string.Empty;

        /// <summary>
        /// 连接源对象的变更事件。
        /// subscribe / unsubscribe 形如：add => buff._onChange += add
        /// </summary>
        public void LinkSource(Action<Action> subscribe, Action<Action> unsubscribe)
        {
            if (subscribe == null || unsubscribe == null) return;
            Action bridge = Notify;
            subscribe(bridge);
            _links.Add((unsubscribe, bridge));
        }

        /// <summary>断开所有源事件连接（SimpleSlot 退订时调用）</summary>
        public void Unlink()
        {
            foreach (var (unsubscribe, bridge) in _links)
            {
                unsubscribe?.Invoke(bridge);
            }
            _links.Clear();
        }

        private void Notify()
        {
            Changed?.Invoke();
        }
    }
}
