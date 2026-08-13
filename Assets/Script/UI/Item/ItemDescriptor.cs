using System;
using System.Collections.Generic;
using UnityEngine;

namespace UI.Item
{
    /// <summary>IItemDescriptor implementation whose getters are re-evaluated on each read.</summary>
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

        /// <summary>Bridges a source object's change event to this descriptor's Changed event.</summary>
        public void LinkSource(Action<Action> subscribe, Action<Action> unsubscribe)
        {
            if (subscribe == null || unsubscribe == null) return;
            Action bridge = Notify;
            subscribe(bridge);
            _links.Add((unsubscribe, bridge));
        }

        /// <summary>Disconnects all bridged source events.</summary>
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
