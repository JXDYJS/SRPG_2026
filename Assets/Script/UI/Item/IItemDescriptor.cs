using System;
using UnityEngine;

namespace UI.Item
{
    /// <summary>
    /// Unified descriptor for slot contents; UI renders only through this interface.
    /// Type differences are handled by ItemView adapters.
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
