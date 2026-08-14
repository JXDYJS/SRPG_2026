using Cysharp.Threading.Tasks;
using Managers;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace UI.Panel
{
    /// <summary>
    /// End-of-game window: shows "win" when the final map node is cleared and
    /// "fail" when a battle is lost, then returns to the launch scene.
    /// </summary>
    [UIPanelResource("Assets/UI/Main/EndWindow.prefab")]
    public class EndWindow : BaseUIPanel
    {
        public Button exitBtn;
        public TextMeshProUGUI Title;

        public void OnEnable()
        {
            if (exitBtn != null)
            {
                exitBtn.onClick.AddListener(BackToLaunch);
            }
        }

        public void OnDisable()
        {
            if (exitBtn != null)
            {
                exitBtn.onClick.RemoveListener(BackToLaunch);
            }
        }

        public override void OnOpen(object data = null)
        {
            base.OnOpen(data);
            if (data is string result)
            {
                SetResult(result);
            }
        }

        /// <summary>Sets the result title ("win" / "fail").</summary>
        public void SetResult(string result)
        {
            if (Title != null)
            {
                Title.text = result;
            }
        }

        public void BackToLaunch()
        {
            BackToLaunchAsync().Forget();
        }

        /// <summary>
        /// Destroys all UI panels (they live on a DontDestroyOnLoad UIRoot),
        /// then asynchronously loads the launch scene.
        /// </summary>
        public async UniTask BackToLaunchAsync()
        {
            if (UIManager.Instance != null)
            {
                UIManager.Instance.DestroyAllPanels();
            }

            await SceneManager.LoadSceneAsync("LaunchScene", LoadSceneMode.Single).ToUniTask();
        }
    }
}
