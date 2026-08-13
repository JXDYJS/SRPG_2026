using System;
using System.Collections.Generic;
using System.IO;
using Cysharp.Threading.Tasks;
using UI.Panel;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.Networking;
using UnityEngine.AddressableAssets.ResourceLocators;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace Managers
{
    /// <summary>Startup version check and hot-update pipeline (manifest comparison + Addressables catalog update).</summary>
    public static class UpdateManager
    {
        /// <summary>Runs the full update check, driving a progress bar via the window.</summary>
        public static async UniTask CheckAndUpdate(LoadWindow window)
        {
            try
            {
                VersionManifest local = ReadLocalManifest();
                VersionManifest remote = await FetchRemoteManifest(local?.serverBaseUrl);

                if (local != null && remote != null && IsFullUpdateNeeded(local, remote))
                {
                    // Full update: client version too old to patch
                    Debug.LogWarning($"[Update] 需要全量更新: local app={local.appVersion} < minApp={remote.minAppVersion}");
                    window.SetProgress(1f);
                }
                else
                {
                    await ApplyCatalogUpdate(window);
                }
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[Update] 更新检查失败，使用本地内容继续: {e.Message}");
            }
        }


        private static bool IsFullUpdateNeeded(VersionManifest local, VersionManifest remote)
        {
            if (string.IsNullOrEmpty(local.appVersion) || string.IsNullOrEmpty(remote.minAppVersion))
                return false;
            return CompareVersion(local.appVersion, remote.minAppVersion) < 0;
        }

        /// <summary>Semantic version comparison; falls back to string order on parse failure.</summary>
        private static int CompareVersion(string a, string b)
        {
            if (Version.TryParse(a, out Version va) && Version.TryParse(b, out Version vb))
                return va.CompareTo(vb);
            return string.CompareOrdinal(a, b);
        }


        private static VersionManifest ReadLocalManifest()
        {
            string path = Path.Combine(Application.streamingAssetsPath, "update", "version.json");
            if (!File.Exists(path))
            {
                Debug.LogWarning($"[Update] 未找到本地基线: {path}（编辑器下未打包属正常）");
                return null;
            }
            try
            {
                return JsonUtility.FromJson<VersionManifest>(File.ReadAllText(path));
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[Update] 本地基线解析失败: {e.Message}");
                return null;
            }
        }


        private static async UniTask<VersionManifest> FetchRemoteManifest(string serverBaseUrl)
        {
            if (string.IsNullOrEmpty(serverBaseUrl))
            {
                Debug.LogWarning("[Update] 缺少 serverBaseUrl，跳过远程版本检查");
                return null;
            }

            string url = serverBaseUrl.TrimEnd('/') + "/update/version.json";
            using (UnityWebRequest req = UnityWebRequest.Get(url))
            {
                try
                {
                    await req.SendWebRequest().ToUniTask();
                }
                catch (Exception e)
                {
                    Debug.LogWarning($"[Update] 拉取远程清单异常: {e.Message}");
                    return null;
                }

                if (req.result != UnityWebRequest.Result.Success)
                {
                    Debug.LogWarning($"[Update] 拉取远程清单失败: {url} → {req.error}");
                    return null;
                }

                try
                {
                    return JsonUtility.FromJson<VersionManifest>(req.downloadHandler.text);
                }
                catch (Exception e)
                {
                    Debug.LogWarning($"[Update] 远程清单解析失败: {e.Message}");
                    return null;
                }
            }
        }


        private static async UniTask ApplyCatalogUpdate(LoadWindow window)
        {
            window.SetProgress(0f);
            AsyncOperationHandle<List<string>> check = Addressables.CheckForCatalogUpdates();
            await check.ToUniTask();

            if (check.Result == null || check.Result.Count == 0)
            {
                Debug.Log("[Update] 无内容更新，直接进游戏");
                return;
            }

            Debug.Log($"[Update] 检测到 {check.Result.Count} 个 catalog 更新，开始下载...");
            // autoReleaseHandle:false — keep the locator alive or address resolution breaks
            AsyncOperationHandle<List<IResourceLocator>> update =
                Addressables.UpdateCatalogs(check.Result, autoReleaseHandle: false);

            while (!update.IsDone)
            {
                DownloadStatus st = update.GetDownloadStatus();
                window.SetProgress(st.Percent);
                await UniTask.Yield();
            }

            await update.ToUniTask();
            Debug.Log("[Update] 内容更新完成");
        }
    }


    [Serializable]
    public class VersionManifest
    {
        public string appVersion;
        public string minAppVersion;
        public string contentVersion;
        public string serverBaseUrl;
        public ManifestFileInfo[] files;
    }

    [Serializable]
    public class ManifestFileInfo
    {
        public string path;
        public string md5;
        public long size;
    }
}
