using System;
using System.Collections.Generic;
using System.IO;
using System.Threading;
using Cysharp.Threading.Tasks;
using UI.Panel;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.AddressableAssets.ResourceLocators;
using UnityEngine.Networking;
using UnityEngine.ResourceManagement.AsyncOperations;
using UnityEngine.ResourceManagement.ResourceLocations;

namespace Managers
{
    /// <summary>
    /// Startup version check and hot-update pipeline (manifest comparison + Addressables catalog update).
    /// Remote operations are bounded by timeouts; pre-download of all remote bundles is retried a
    /// limited number of times, then reported as failed so the caller can stop at the loading screen.
    /// </summary>
    public static class UpdateManager
    {
        // ================ Tunables ================
        static readonly TimeSpan RemoteManifestTimeout = TimeSpan.FromSeconds(5);
        static readonly TimeSpan CatalogUpdateTimeout = TimeSpan.FromSeconds(20);
        const int BundleDownloadRetryCount = 5;
        static readonly TimeSpan BundleRetryDelay = TimeSpan.FromSeconds(2);

        /// <summary>
        /// Runs the full startup update flow. Returns true when the game can proceed (content ready
        /// or server unreachable → local content), false when a required bundle download failed and
        /// the caller should stop (e.g. show an error on the load screen).
        /// </summary>
        public static async UniTask<bool> CheckAndUpdate(LoadWindow window)
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
                    return true;
                }

                // Remote server reachable → refresh catalog so bundle lookups point at the newest content.
                if (remote != null)
                {
                    bool catalogOk = await ApplyCatalogUpdate(window);
                    if (!catalogOk)
                    {
                        // Catalog refresh failed; continue with whatever catalog is active (local baseline
                        // or previous cache). Bundle pre-download below will still run against it.
                        Debug.LogWarning("[Update] catalog 更新失败，使用当前生效 catalog 继续");
                    }
                }

                // Pre-download every bundle that is not cached yet (local-only when offline → instant).
                return await PreDownloadAllBundles(window);
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[Update] 更新检查失败，使用本地内容继续: {e.Message}");
                return true;
            }
        }

        /// <summary>
        /// Pre-downloads every addressable bundle that has no cached copy yet, driving the load bar
        /// with byte progress. Retries failed bundles a limited number of times; returns false when a
        /// bundle still cannot be fetched so the caller can block the game start.
        /// Keys are pre-filtered via locator.Locate so non-resolvable catalog keys (e.g. 'byfile.lua')
        /// never reach GetDownloadSizeAsync and trigger InvalidKeyException noise.
        /// </summary>
        private static async UniTask<bool> PreDownloadAllBundles(LoadWindow window)
        {
            List<object> keys = CollectResolvableKeys();
            List<KeyValuePair<object, long>> pending = new List<KeyValuePair<object, long>>();
            long totalBytes = 0;

            // First pass: measure how much still needs downloading (skip keys already cached / local).
            foreach (object key in keys)
            {
                try
                {
                    AsyncOperationHandle<long> sizeHandle = Addressables.GetDownloadSizeAsync(key);
                    long size = await sizeHandle.ToUniTask();
                    Addressables.Release(sizeHandle);
                    if (size > 0)
                    {
                        pending.Add(new KeyValuePair<object, long>(key, size));
                        totalBytes += size;
                    }
                }
                catch (Exception e)
                {
                    // Defensive: still possible for a resolvable key with a broken location.
                    Debug.LogWarning($"[Update] GetDownloadSizeAsync 跳过 '{key}': {e.Message}");
                }
            }

            Debug.Log($"[Update] 待预下载 {pending.Count} 个 bundle，共 {BytesToMb(totalBytes)} MB");
            window.SetProgress(0f);

            if (pending.Count == 0)
            {
                window.SetProgress(1f);
                Debug.Log("[Update] 全部内容已在本地/缓存，无需下载");
                return true;
            }

            long doneBytes = 0;
            foreach (KeyValuePair<object, long> entry in pending)
            {
                object key = entry.Key;
                bool ok = false;
                for (int attempt = 1; attempt <= BundleDownloadRetryCount && !ok; attempt++)
                {
                    using (CancellationTokenSource cts = new CancellationTokenSource(CatalogUpdateTimeout))
                    {
                        AsyncOperationHandle handle = Addressables.DownloadDependenciesAsync(key, autoReleaseHandle: false);
                        try
                        {
                            await handle.WithCancellation(cts.Token, cancelImmediately: true, autoReleaseWhenCanceled: true);
                            ok = handle.IsValid() && handle.Status == AsyncOperationStatus.Succeeded;
                        }
                        catch (Exception e)
                        {
                            Debug.LogWarning($"[Update] 下载 bundle '{key}' 第 {attempt}/{BundleDownloadRetryCount} 次失败: {e.Message}");
                        }
                        finally
                        {
                            if (handle.IsValid())
                            {
                                Addressables.Release(handle);
                            }
                        }
                    }

                    if (!ok)
                    {
                        await UniTask.Delay(BundleRetryDelay);
                    }
                }

                if (!ok)
                {
                    Debug.LogError($"[Update] bundle 预下载失败(已达重试上限): '{key}'");
                    return false;
                }

                doneBytes += entry.Value;
                window.SetProgress(totalBytes > 0 ? (float)((double)doneBytes / totalBytes) : 1f);
            }

            window.SetProgress(1f);
            Debug.Log("[Update] 全部内容预下载完成");
            return true;
        }

        /// <summary>
        /// Catalog keys that resolve to at least one location. Filtering here keeps non-asset keys
        /// (Lua loader names, labels, etc.) from being fed to GetDownloadSizeAsync/DownloadDependenciesAsync.
        /// </summary>
        private static List<object> CollectResolvableKeys()
        {
            List<object> keys = new List<object>();
            foreach (IResourceLocator locator in Addressables.ResourceLocators)
            {
                if (locator == null) continue;
                foreach (object key in locator.Keys)
                {
                    if (key == null) continue;
                    if (locator.Locate(key, typeof(object), out IList<IResourceLocation> locations) &&
                        locations != null && locations.Count > 0)
                    {
                        keys.Add(key);
                    }
                }
            }
            return keys;
        }

        private static string BytesToMb(long bytes)
        {
            return (bytes / 1048576.0).ToString("F2");
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
                    await req.SendWebRequest().ToUniTask().Timeout(RemoteManifestTimeout);
                }
                catch (Exception e)
                {
                    Debug.LogWarning($"[Update] 拉取远程清单超时/异常: {url} → {e.Message}");
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

        /// <summary>
        /// Refreshes the active Addressables catalog. Returns false when the remote catalog cannot be
        /// reached or the update times out (caller decides whether to fall back to the current catalog).
        /// </summary>
        private static async UniTask<bool> ApplyCatalogUpdate(LoadWindow window)
        {
            window.SetProgress(0f);

            AsyncOperationHandle<List<string>> check = default;
            AsyncOperationHandle<List<IResourceLocator>> update = default;
            try
            {
                check = Addressables.CheckForCatalogUpdates();
                List<string> updates = await check.ToUniTask().Timeout(CatalogUpdateTimeout);
                if (updates == null || updates.Count == 0)
                {
                    Debug.Log("[Update] 无内容更新，直接进游戏");
                    return true;
                }

                Debug.Log($"[Update] 检测到 {updates.Count} 个 catalog 更新，开始下载...");
                // autoReleaseHandle:false — keep the locator alive or address resolution breaks
                update = Addressables.UpdateCatalogs(updates, autoReleaseHandle: false);

                while (!update.IsDone)
                {
                    DownloadStatus st = update.GetDownloadStatus();
                    window.SetProgress(st.Percent);
                    await UniTask.Yield();
                }

                await update.ToUniTask().Timeout(CatalogUpdateTimeout);
                Debug.Log("[Update] 内容更新完成");
                return true;
            }
            catch (Exception e)
            {
                Debug.LogWarning($"[Update] catalog 更新失败: {e.Message}");
                return false;
            }
            finally
            {
                // autoReleaseHandle:false keeps locators alive; the raw handles still need release
                // to avoid leaking the operation objects themselves.
                if (update.IsValid())
                {
                    Addressables.Release(update);
                }
                if (check.IsValid())
                {
                    Addressables.Release(check);
                }
            }
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
