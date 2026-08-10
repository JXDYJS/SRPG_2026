using Cysharp.Threading.Tasks;
using Managers;
using UnityEngine;
using UnityEngine.UI;
namespace UI.Panel
{
    public delegate UniTask LoadAction(LoadWindow window);

    [UIPanelResource("Assets/UI/Load/LoadWindow.prefab")]
    public class LoadWindow : BaseUIPanel
    {
        public Slider slider;

        public void Init(LoadAction action)
        {
            if (slider != null) slider.value = 0f;
            RunAsync(action).Forget();
        }

        private async UniTask RunAsync(LoadAction action)
        {
            await action(this);
        }

        public void SetProgress(float t)
        {
            if (slider != null) slider.value = Mathf.Clamp01(t);
        }

        public void Close()
        {
            if (UIManager.Instance != null) UIManager.Instance.ClosePanel<LoadWindow>();
        }
    }
}