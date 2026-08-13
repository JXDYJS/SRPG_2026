using System;
using Cysharp.Threading.Tasks;
using Core.Data;
using Managers;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;
using UnityEngine.ResourceManagement.ResourceProviders;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
namespace UI.Panel
{
    [UIPanelResource("Assets/UI/Launch/LaunchWindow.prefab")]
    public class LaunchWindow : BaseUIPanel
    {
        public Button NewGameBtn;
        public Button ContinueBtn;
        public Button ExitBtn;
        public Material LaunchMat;
        private Material saveMat;
        public void OnEnable()
        {
            if (ContinueBtn != null)
            {
                ContinueBtn.interactable = PersistentData.HasSaveFile();
            }
            NewGameBtn?.onClick.AddListener(OnNewGameClick);
            ContinueBtn?.onClick.AddListener(OnContinueClick);
            ExitBtn?.onClick.AddListener(OnExitBtnClick);
            saveMat = RenderSettings.skybox;
            RenderSettings.skybox = LaunchMat;
        }
        public void OnNewGameClick()
        {
            Data.PendingStartMode = StartMode.NewGame;
            StartLoad();
        }
        public void OnContinueClick()
        {
            Data.PendingStartMode = StartMode.Continue;
            StartLoad();
        }
        public void OnExitBtnClick()
        {
            Application.Quit();
        }

        private void StartLoad()
        {
            UIManager.Instance.ClosePanel<LaunchWindow>();
            UIManager.Instance.OpenPanel<LoadWindow>().Init(LoadSamPleScene);
        }
        public void OnDisable()
        {
            NewGameBtn?.onClick.RemoveListener(OnNewGameClick);
            ContinueBtn?.onClick.RemoveListener(OnContinueClick);
            ExitBtn?.onClick.RemoveListener(OnExitBtnClick);
            RenderSettings.skybox = saveMat;
        }

        /// <summary>Asynchronously loads SampleScene and drives the LoadWindow progress bar.</summary>
        public async UniTask LoadSamPleScene(LoadWindow window)
        {
            AsyncOperation op = SceneManager.LoadSceneAsync("SampleScene", LoadSceneMode.Single);
            op.allowSceneActivation = false;

            while (op.progress < 0.9f)
            {
                window.SetProgress(op.progress);
                await UniTask.Yield();
            }

            window.SetProgress(1f);
            await UniTask.Delay(TimeSpan.FromMilliseconds(400));

            op.allowSceneActivation = true;
            await UniTask.Delay(TimeSpan.FromMilliseconds(100));
            window.Close();
        }
    }
}