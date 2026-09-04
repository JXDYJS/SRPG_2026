using System.Linq;
using Cysharp.Threading.Tasks;
using Managers;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
namespace UI.Panel
{
    public delegate UniTask LoadAction(LoadWindow window);

    [UIPanelResource("Assets/UI/Load/LoadWindow.prefab")]
    public class LoadWindow : BaseUIPanel
    {
        public Slider slider;

        /// <summary>Displayed while loading; rewritten with an error message when startup fails.</summary>
        private TextMeshProUGUI _titleText;

        public void Init(LoadAction action)
        {
            if (slider != null) slider.value = 0f;
            CacheTitleText();
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

        /// <summary>Shows a blocking failure message on the loading screen; the game stays here.</summary>
        public void SetFailed(string message)
        {
            if (_titleText == null) CacheTitleText();
            if (_titleText != null)
            {
                _titleText.text = message;
                _titleText.color = Color.red;
            }
            Debug.LogError($"[LoadWindow] {message}");
        }

        private void CacheTitleText()
        {
            if (_titleText == null)
            {
                _titleText = GetComponentsInChildren<TextMeshProUGUI>(true)
                    .FirstOrDefault(t => t.text == "Game Loading");
            }
        }

        public void Close()
        {
            if (UIManager.Instance != null) UIManager.Instance.ClosePanel<LoadWindow>();
        }
    }
}