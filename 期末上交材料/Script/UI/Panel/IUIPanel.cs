using UnityEngine;
using Cysharp.Threading.Tasks;

namespace UI.Panel
{
    public interface IUIPanel
    {
        GameObject PanelObject { get; }
        UniTask PlayEnterAnimation();
        UniTask PlayExitAnimation();
        void SetInteractable(bool interactable);
    }
}
