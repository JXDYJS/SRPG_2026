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
    [UIPanelResource("UI/Launch/LaunchWindow")]
    public class LaunchWindow : BaseUIPanel
    {
        public Button NewGameBtn;
        public Button ContinueBtn;
        public Button ExitBtn;
        public void OnEnable()
        {
            if (ContinueBtn != null)
            {
                ContinueBtn.interactable = PersistentData.HasSaveFile();
            }
            NewGameBtn?.onClick.AddListener(OnNewGameClick);
            ContinueBtn?.onClick.AddListener(OnContinueClick);
            ExitBtn?.onClick.AddListener(OnExitBtnClick);
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

        /// <summary>拉起加载页并启动场景加载流程</summary>
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
        }

        /// <summary>
        /// 异步加载 SampleScene 并驱动 LoadWindow 进度条。
        /// SampleScene 是 Addressable 场景（Scenes 分组），必须用 Addressables.LoadSceneAsync，
        /// 不能走 SceneManager（打包后 Build Settings 场景列表里没有它）。
        /// 注意：加载完成后 LaunchScene 会卸载，因此这里只依赖 window（挂在 UIRoot/DontDestroyOnLoad 上）。
        /// </summary>
        public async UniTask LoadSamPleScene(LoadWindow window)
        {
            AsyncOperationHandle<SceneInstance> handle =
                Addressables.LoadSceneAsync("Assets/Scenes/SampleScene.unity", LoadSceneMode.Single, activateOnLoad: false);

            // 加载阶段实际进度 0~0.9，归一化给进度条
            while (!handle.IsDone)
            {
                window.SetProgress(handle.PercentComplete);
                await UniTask.Yield();
            }

            if (handle.Status != AsyncOperationStatus.Succeeded)
            {
                Debug.LogError($"[LaunchWindow] 加载 SampleScene 失败: {handle.OperationException}");
                window.Close();
                return;
            }

            window.SetProgress(1f);
            await UniTask.Delay(TimeSpan.FromMilliseconds(400)); // 最小展示时长，避免秒闪

            await handle.Result.ActivateAsync().ToUniTask();
            Addressables.Release(handle);
            window.Close();
        }
    }
}