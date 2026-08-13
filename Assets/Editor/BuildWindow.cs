using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using UnityEditor;
using UnityEditor.AddressableAssets;
using UnityEditor.AddressableAssets.Build;
using UnityEditor.AddressableAssets.Settings;
using UnityEditor.Build.Reporting;
using UnityEngine;

namespace EditorTools
{
    /// <summary>One-click build window for Addressables content + player build, with content-patch updates.</summary>
    public class BuildWindow : EditorWindow
    {

        private string _outputDir = "Build";
        private string _buildName = "SRPG_2026";
        private BuildTarget _buildTarget = BuildTarget.StandaloneWindows64;
        private bool _buildAddressables = true;
        private bool _developmentMode = false;
        private bool _openFolderAfter = true;
        private string _appVersion = "1.0.0";
        private string _contentVersion = "100";

        private bool _isBuilding;
        private string _log;

        private const string PrefPrefix = "BuildWindow.";

        [MenuItem("Tools/Build/Build Window")]
        public static void Open()
        {
            BuildWindow w = GetWindow<BuildWindow>("Build");
            w.minSize = new Vector2(440, 420);
        }

        private void OnEnable()
        {
            _outputDir = EditorPrefs.GetString(PrefPrefix + "OutputDir", _outputDir);
            _buildName = EditorPrefs.GetString(PrefPrefix + "Name", _buildName);
            _buildTarget = (BuildTarget)EditorPrefs.GetInt(PrefPrefix + "Target", (int)_buildTarget);
            _buildAddressables = EditorPrefs.GetBool(PrefPrefix + "Addr", _buildAddressables);
            _developmentMode = EditorPrefs.GetBool(PrefPrefix + "Dev", _developmentMode);
            _openFolderAfter = EditorPrefs.GetBool(PrefPrefix + "Open", _openFolderAfter);
            _appVersion = EditorPrefs.GetString(PrefPrefix + "AppVersion", _appVersion);
            _contentVersion = EditorPrefs.GetString(PrefPrefix + "ContentVersion", _contentVersion);
        }

        private void OnDisable()
        {
            EditorPrefs.SetString(PrefPrefix + "OutputDir", _outputDir);
            EditorPrefs.SetString(PrefPrefix + "Name", _buildName);
            EditorPrefs.SetInt(PrefPrefix + "Target", (int)_buildTarget);
            EditorPrefs.SetBool(PrefPrefix + "Addr", _buildAddressables);
            EditorPrefs.SetBool(PrefPrefix + "Dev", _developmentMode);
            EditorPrefs.SetBool(PrefPrefix + "Open", _openFolderAfter);
            EditorPrefs.SetString(PrefPrefix + "AppVersion", _appVersion);
            EditorPrefs.SetString(PrefPrefix + "ContentVersion", _contentVersion);
        }

        private void OnGUI()
        {
            EditorGUILayout.LabelField("输出配置", EditorStyles.boldLabel);
            _outputDir = EditorGUILayout.TextField("输出目录", _outputDir);
            _buildName = EditorGUILayout.TextField("程序名", _buildName);
            _buildTarget = (BuildTarget)EditorGUILayout.EnumPopup("目标平台", _buildTarget);

            EditorGUILayout.Space(8);
            EditorGUILayout.LabelField("构建选项", EditorStyles.boldLabel);
            _buildAddressables = EditorGUILayout.Toggle("构建 Addressables", _buildAddressables);
            _developmentMode = EditorGUILayout.Toggle("Development 模式", _developmentMode);
            _openFolderAfter = EditorGUILayout.Toggle("完成后打开目录", _openFolderAfter);

            EditorGUILayout.Space(8);
            EditorGUILayout.LabelField("版本配置", EditorStyles.boldLabel);
            _appVersion = EditorGUILayout.TextField("App 版本（全量构建）", _appVersion);
            _contentVersion = EditorGUILayout.TextField("内容版本（补丁）", _contentVersion);

            EditorGUILayout.Space(16);
            GUI.enabled = !_isBuilding;
            if (GUILayout.Button(_isBuilding ? "构建中..." : "开始构建", GUILayout.Height(40)))
            {
                StartBuild();
            }
            EditorGUILayout.Space(8);
            if (GUILayout.Button(_isBuilding ? "构建中..." : "开始更新", GUILayout.Height(40)))
            {
                StartUpdata();
            }
            GUI.enabled = true;

            if (!string.IsNullOrEmpty(_log))
            {
                EditorGUILayout.Space(8);
                EditorGUILayout.HelpBox(_log, _log.StartsWith("[ERROR]") ? MessageType.Error : MessageType.Info);
            }
        }

        private void StartBuild()
        {
            _isBuilding = true;
            _log = "开始构建...";
            EditorApplication.delayCall += RunBuild;
        }
        private void StartUpdata()
        {
            _isBuilding  =  true;
            _log = "开始构建更新..." ;
            EditorApplication.delayCall += RunUpdate;
        }

        private void RunBuild()
        {
            try
            {
                PlayerSettings.bundleVersion = _appVersion;

                if (_buildAddressables)
                {
                    EnsureRemoteConfig(AddressableAssetSettingsDefaultObject.Settings);
                    BuildAddressables.BuildContent();
                }

                CopyDirectory("Library/com.unity.addressables/aa", "Assets/StreamingAssets/aa");

                if (Directory.Exists(_outputDir))
                {
                    Directory.Delete(_outputDir, true);
                }
                Directory.CreateDirectory(_outputDir);

                AddressableAssetSettings settings = AddressableAssetSettingsDefaultObject.Settings;
                string remoteRoot = ResolveRemoteBuildPath(settings);

                int fileCount = 0;
                if (!string.IsNullOrEmpty(remoteRoot))
                {
                    fileCount = GenerateManifest(remoteRoot, _appVersion, _appVersion, _contentVersion,
                        GetServerBaseUrl(settings),
                        localStreamingPath: "Assets/StreamingAssets/update/version.json");
                }

                string[] scenes = EditorBuildSettings.scenes
                    .Where(s => s.enabled)
                    .Select(s => s.path)
                    .ToArray();

                BuildOptions options = BuildOptions.None;
                if (_developmentMode) options |= BuildOptions.Development;
                if (_openFolderAfter) options |= BuildOptions.ShowBuiltPlayer;

                BuildReport report = BuildPipeline.BuildPlayer(
                    scenes,
                    Path.Combine(_outputDir, _buildName + GetPlayerExtension(_buildTarget)),
                    _buildTarget,
                    options);

                _log = report.summary.result == BuildResult.Succeeded
                    ? $"[OK] 构建成功: {report.summary.outputPath}  ({report.summary.totalSize / 1048576f:F1} MB)\n" +
                      $"version.json: app={_appVersion} / minApp={_appVersion} / content={_contentVersion}，{fileCount} 个远程文件 → {remoteRoot}\n" +
                      $"本地基线 StreamingAssets/update/version.json 已随包发布"
                    : $"[ERROR] 构建失败: {report.summary.result}";
            }
            catch (Exception e)
            {
                _log = "[ERROR] " + e.Message;
                Debug.LogException(e);
            }
            finally
            {
                if (Directory.Exists("Assets/StreamingAssets/aa"))
                {
                    Directory.Delete("Assets/StreamingAssets/aa", true);
                }
                if (Directory.Exists("Assets/StreamingAssets/update"))
                {
                    Directory.Delete("Assets/StreamingAssets/update", true);
                }
                AssetDatabase.Refresh();
                _isBuilding = false;
                Repaint();
            }
        }
        /// <summary>Build a content patch from the last baseline build (changed bundles + new remote catalog).</summary>
        private void RunUpdate()
        {
            try
            {
                AddressableAssetSettings settings = AddressableAssetSettingsDefaultObject.Settings;
                if (settings == null)
                {
                    _log = "[ERROR] 找不到 AddressableAssetSettings，请先初始化 Addressables";
                    return;
                }

                EnsureRemoteConfig(settings);
                AssetDatabase.SaveAssets();

                string binPath = ContentUpdateScript.GetContentStateDataPath(false, settings);
                if (string.IsNullOrEmpty(binPath) || !File.Exists(binPath))
                {
                    _log = $"[ERROR] 找不到内容状态文件: {binPath}\n请先跑一次「开始构建」生成基线包，再发补丁。";
                    return;
                }

                List<AddressableAssetEntry> modified = ContentUpdateScript.GatherModifiedEntries(settings, binPath);
                if (modified == null || modified.Count == 0)
                {
                    _log = "没有检测到变更资源，无需发补丁";
                    return;
                }

                Debug.Log($"[BuildWindow] 检测到 {modified.Count} 个变更资源：");
                foreach (AddressableAssetEntry entry in modified)
                {
                    Debug.Log($"  - {entry.address}");
                }

                ContentUpdateScript.CreateContentUpdateGroup(settings, modified, "Content Update");

                var result = ContentUpdateScript.BuildContentUpdate(settings, binPath);
                if (result == null)
                {
                    _log = "[ERROR] 内容补丁构建失败（请检查 Console：基线是否开了 BuildRemoteCatalog、远程目录是否与基线一致）";
                    return;
                }
                if (!string.IsNullOrEmpty(result.Error))
                {
                    _log = "[ERROR] 内容补丁构建失败: " + result.Error;
                    Debug.LogError(result.Error);
                    return;
                }

                string remoteRoot = ResolveRemoteBuildPath(settings);
                string publishRoot = Path.GetDirectoryName(Path.GetFullPath(remoteRoot)) ?? Path.GetFullPath(remoteRoot);
                ManifestData previous = ReadManifest(Path.Combine(publishRoot, "update", "version.json"));
                string appVersion = previous?.appVersion ?? _appVersion;
                string minAppVersion = previous?.minAppVersion ?? _appVersion;
                int fileCount = GenerateManifest(remoteRoot, appVersion, minAppVersion, _contentVersion, GetServerBaseUrl(settings));

                _log = $"[OK] 内容补丁构建成功：{modified.Count} 个资源，{fileCount} 个远程文件已发布到 {remoteRoot}\n" +
                       $"version.json: app={appVersion} / minApp={minAppVersion} / content={_contentVersion}\n" +
                       "补丁期间请勿重跑「开始构建」，否则 content_state.bin 被覆盖、补丁将失效。";
            }
            catch (Exception e)
            {
                _log = "[ERROR] " + e.Message;
                Debug.LogException(e);
            }
            finally
            {
                _isBuilding = false;
                Repaint();
            }
        }

        private static void EnsureRemoteConfig(AddressableAssetSettings settings)
        {
            if (settings == null) return;

            settings.BuildRemoteCatalog = true;
            settings.RemoteCatalogBuildPath.SetVariableByName(settings, AddressableAssetSettings.kRemoteBuildPath);
            settings.RemoteCatalogLoadPath.SetVariableByName(settings, AddressableAssetSettings.kRemoteLoadPath);
        }


        [Serializable]
        private sealed class ManifestData
        {
            public string appVersion;
            public string minAppVersion;
            public string contentVersion;
            public string serverBaseUrl;
            public ManifestFileInfo[] files;
        }

        [Serializable]
        private sealed class ManifestFileInfo
        {
            public string path;
            public string md5;
            public long size;
        }

        /// <summary>
        /// Write the version manifest to the publish root; optionally also to the local streaming path.
        /// </summary>
        private static int GenerateManifest(string remoteRoot, string appVersion, string minAppVersion, string contentVersion, string serverBaseUrl = null, string localStreamingPath = null)
        {
            string dir = Path.GetFullPath(remoteRoot);
            Debug.Log($"[BuildWindow] GenerateManifest: remoteRoot={remoteRoot} resolved={dir} exists={Directory.Exists(dir)} cwd={Directory.GetCurrentDirectory()}");
            if (!Directory.Exists(dir))
            {
                Debug.LogWarning($"[BuildWindow] GenerateManifest: 远程目录不存在({dir})，跳过 version.json 生成");
                return 0;
            }

            string[] files = Directory.GetFiles(dir, "*", SearchOption.AllDirectories)
                .Where(f => !f.EndsWith(".meta", StringComparison.OrdinalIgnoreCase))
                .OrderBy(f => f, StringComparer.OrdinalIgnoreCase)
                .ToArray();

            var list = new List<ManifestFileInfo>();
            foreach (string file in files)
            {
                string rel = Path.GetRelativePath(dir, file).Replace('\\', '/');

                byte[] bytes = File.ReadAllBytes(file);
                list.Add(new ManifestFileInfo
                {
                    path = rel,
                    md5 = ComputeMd5(bytes),
                    size = bytes.Length,
                });
            }

            var manifest = new ManifestData
            {
                appVersion = appVersion,
                minAppVersion = minAppVersion,
                contentVersion = contentVersion,
                serverBaseUrl = serverBaseUrl,
                files = list.ToArray(),
            };

            string json = JsonUtility.ToJson(manifest, true);

            string publishRoot = Path.GetDirectoryName(dir) ?? dir;
            string updateDir = Path.Combine(publishRoot, "update");
            Directory.CreateDirectory(updateDir);
            File.WriteAllText(Path.Combine(updateDir, "version.json"), json);

            if (!string.IsNullOrEmpty(localStreamingPath))
            {
                string localPath = Path.GetFullPath(localStreamingPath);
                string localDir = Path.GetDirectoryName(localPath);
                if (!string.IsNullOrEmpty(localDir)) Directory.CreateDirectory(localDir);
                File.WriteAllText(localPath, json);
            }

            return list.Count;
        }

        /// <summary>
        /// Resolve the concrete Remote.BuildPath directory; dereference variables before template evaluation.
        /// </summary>
        private static string ResolveRemoteBuildPath(AddressableAssetSettings settings)
        {
            if (settings == null) return null;
            string template = settings.profileSettings.GetValueByName(settings.activeProfileId, AddressableAssetSettings.kRemoteBuildPath);
            if (string.IsNullOrEmpty(template)) return null;
            return settings.profileSettings.EvaluateString(settings.activeProfileId, template);
        }

        /// <summary>Client-facing server root: Remote.LoadPath without the /[BuildTarget] segment.</summary>
        private static string GetServerBaseUrl(AddressableAssetSettings settings)
        {
            string template = settings.profileSettings.GetValueByName(settings.activeProfileId, AddressableAssetSettings.kRemoteLoadPath);
            if (string.IsNullOrEmpty(template)) return null;

            string rootTemplate = template.Replace("/[BuildTarget]", "").TrimEnd('/');
            string resolved = settings.profileSettings.EvaluateString(settings.activeProfileId, rootTemplate);
            return resolved.TrimEnd('/');
        }

        /// <summary>Read an existing version.json; returns null when missing or corrupt.</summary>
        private static ManifestData ReadManifest(string path)
        {
            if (!File.Exists(path)) return null;
            try
            {
                return JsonUtility.FromJson<ManifestData>(File.ReadAllText(path));
            }
            catch
            {
                return null;
            }
        }

        private static string ComputeMd5(byte[] bytes)
        {
            using (MD5 md5 = MD5.Create())
            {
                byte[] hash = md5.ComputeHash(bytes);
                return BitConverter.ToString(hash).Replace("-", "").ToLowerInvariant();
            }
        }

        private static string GetPlayerExtension(BuildTarget target)
        {
            switch (target)
            {
                case BuildTarget.StandaloneWindows:
                case BuildTarget.StandaloneWindows64:
                    return ".exe";
                default:
                    return string.Empty; // .app on macOS; BuildPlayer appends it automatically
            }
        }

        private static void CopyDirectory(string src, string dst, Func<string, bool> exclude = null)
        {
            if (!Directory.Exists(src))
            {
                throw new DirectoryNotFoundException($"源目录不存在: {src}");
            }
            if (Directory.Exists(dst))
            {
                Directory.Delete(dst, true);
            }
            Directory.CreateDirectory(dst);
            foreach (string file in Directory.GetFiles(src, "*", SearchOption.AllDirectories))
            {
                string rel = Path.GetRelativePath(src, file);
                if (exclude != null && exclude(rel))
                {
                    continue;
                }
                Directory.CreateDirectory(Path.Combine(dst, Path.GetDirectoryName(rel) ?? string.Empty));
                File.Copy(file, Path.Combine(dst, rel), true);
            }
        }
    }
}
