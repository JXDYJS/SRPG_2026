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
    /// <summary>
    /// BuildWindow — 一键打包配置窗口。
    ///
    /// 用法：菜单 Tools/Build/Build Window 打开，配置后点「开始构建」。
    ///
    /// EditorWindow 三件套：
    ///   - [MenuItem] 静态方法：打开窗口的入口
    ///   - OnGUI()：绘制控件（每次 GUI 事件都会调用，不是事件驱动）
    ///   - OnEnable/OnDisable：配合 EditorPrefs 持久化上次配置
    ///
    /// 构建流程（与 BuildPipeline 教学一致）：
    ///   1. Addressables 内容构建（可选）
    ///   2. 拷贝 bundle：Library/com.unity.addressables/aa → Assets/StreamingAssets/aa
    ///   3. 清理输出目录
    ///   4. BuildPipeline.BuildPlayer
    ///   5. 构建后清理 StreamingAssets/aa 与 StreamingAssets/update（不该进版本库）
    ///   注：Lua 已 Addressable 化（Group_Lua），随 bundle 打包，无需单独拷贝
    /// </summary>
    public class BuildWindow : EditorWindow
    {
        // ==================== 配置项（EditorPrefs 持久化） ====================

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
            // BuildPlayer 是同步阻塞的，用 delayCall 让按钮点击事件先结束，避免 GUI 卡死
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
                // 0. 写入 App 版本（影响 PlayerSettings 与远程 catalog 命名，需在构建内容前设置）
                PlayerSettings.bundleVersion = _appVersion;

                // 1. Addressables 内容构建（本项目运行时大量 LoadAssetAsync，必须先做）
                if (_buildAddressables)
                {
                    // 基线构建也需开启远程目录，content_state.bin 才会记录远程 catalog 信息，
                    // 否则后续「开始更新」无法基于它产出补丁
                    EnsureRemoteConfig(AddressableAssetSettingsDefaultObject.Settings);
                    BuildAddressables.BuildContent();
                }

                // 2. 拷贝 bundle 到 StreamingAssets（Local.LoadPath = StreamingAssets/aa/Windows）
                //    否则玩家运行时 Addressables 一个都加载不到
                //    Lua 已 Addressable 化（Group_Lua），随 bundle 打包，不再单独拷贝
                CopyDirectory("Library/com.unity.addressables/aa", "Assets/StreamingAssets/aa");

                // 3. 清理输出目录
                if (Directory.Exists(_outputDir))
                {
                    Directory.Delete(_outputDir, true);
                }
                Directory.CreateDirectory(_outputDir);

                // 5. 生成 version.json（全量基线：app/minApp = 当前 App 版本）
                //    远程入口: <发布根>/update/version.json（玩家启动检查用）
                //    本地基线: Assets/StreamingAssets/update/version.json（打进玩家包，客户端对比自身状态用）
                //    注意：本地基线必须在 BuildPlayer 之前生成，否则不会打进包
                AddressableAssetSettings settings = AddressableAssetSettingsDefaultObject.Settings;
                string remoteRoot = ResolveRemoteBuildPath(settings);

                int fileCount = 0;
                if (!string.IsNullOrEmpty(remoteRoot))
                {
                    fileCount = GenerateManifest(remoteRoot, _appVersion, _appVersion, _contentVersion,
                        GetServerBaseUrl(settings),
                        localStreamingPath: "Assets/StreamingAssets/update/version.json");
                }

                // 6. 玩家构建
                //    只取 Build Settings 里 enabled 的场景（本项目只有 LaunchScene，
                //    SampleScene 是 Addressable 场景，走 bundle，不能出现在场景数组里）
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
                // 6. 清理 StreamingAssets 里打包脚本产生的临时拷贝，保持仓库干净
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
        /// <summary>
        /// 「开始更新」：基于上一次基线构建的 content_state.bin，产出内容补丁（变更 bundle + 新远程 catalog）到 ServerData/。
        ///
        /// 流程：
        ///   1. 确保远程目录配置（BuildRemoteCatalog + RemoteCatalogBuildPath/LoadPath）
        ///   2. 从 settings/profile 读取 content_state.bin 路径（不硬编码）
        ///   3. 找出自基线以来的变更资源
        ///   4. 挪进 Content Update 组（底层自动设置 Remote.BuildPath/LoadPath）
        ///   5. BuildContentUpdate 构建补丁 → 落到 Remote.BuildPath（ServerData/[BuildTarget]）
        ///   6. 生成 version.json manifest（客户端启动检查用）
        ///
        /// 注意：发布基线后、发补丁期间，不要重跑「开始构建」，否则会覆盖 content_state.bin 导致补丁失效。
        /// </summary>
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

                // 1. 确保远程目录配置就绪（幂等）
                EnsureRemoteConfig(settings);
                AssetDatabase.SaveAssets();

                // 2. content_state.bin 路径从 settings/profile 解析（不硬编码）
                string binPath = ContentUpdateScript.GetContentStateDataPath(false, settings);
                if (string.IsNullOrEmpty(binPath) || !File.Exists(binPath))
                {
                    _log = $"[ERROR] 找不到内容状态文件: {binPath}\n请先跑一次「开始构建」生成基线包，再发补丁。";
                    return;
                }

                // 3. 找出自基线以来的变更资源
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

                // 4. 把变更资源挪进 Content Update 组（底层自动设 Remote.BuildPath/LoadPath）
                ContentUpdateScript.CreateContentUpdateGroup(settings, modified, "Content Update");

                // 5. 构建补丁 → 变更 bundle + 新远程 catalog 落到 Remote.BuildPath
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

                // 6. 生成 version.json manifest（沿用已有 appVersion / minAppVersion，只更新 contentVersion）
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

        /// <summary>
        /// 确保 Addressables 远程目录配置就绪：
        ///   - BuildRemoteCatalog：开启（基线构建也需开启，bin 才记录远程 catalog 信息）
        ///   - RemoteCatalogBuildPath / RemoteCatalogLoadPath：指向 profile 的 Remote.BuildPath / Remote.LoadPath
        /// </summary>
        private static void EnsureRemoteConfig(AddressableAssetSettings settings)
        {
            if (settings == null) return;

            settings.BuildRemoteCatalog = true;
            settings.RemoteCatalogBuildPath.SetVariableByName(settings, AddressableAssetSettings.kRemoteBuildPath);
            settings.RemoteCatalogLoadPath.SetVariableByName(settings, AddressableAssetSettings.kRemoteLoadPath);
        }

        // ==================== version.json manifest ====================

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
        /// 在 <发布根>/update/version.json 生成版本清单：
        ///   - appVersion：客户端 App 版本（代码/包体版本）
        ///   - minAppVersion：低于它的客户端必须全量更新
        ///   - contentVersion：内容版本（资源/Lua），补丁时递增
        ///   - files：远程内容文件（remoteRoot 下）的 md5 清单
        /// 若 localStreamingPath 非空，同时把同一份清单写到该路径（全量构建时打进玩家包，
        /// 作为客户端的本地基线，供启动时与远程对比自身状态）。
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

            // 稳定入口：<发布根>/update/version.json（与内容目录分开，URL 恒定）
            string publishRoot = Path.GetDirectoryName(dir) ?? dir;
            string updateDir = Path.Combine(publishRoot, "update");
            Directory.CreateDirectory(updateDir);
            File.WriteAllText(Path.Combine(updateDir, "version.json"), json);

            // 本地基线：打进玩家包（StreamingAssets 会原样随包发布）
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
        /// 解析 Remote.BuildPath 的实际输出目录（如 ServerData/StandaloneWindows64）。
        /// 注意：EvaluateString 只处理带 [占位符] 的模板串，直接传变量名会原样返回（如 "Remote.BuildPath"），
        /// 必须先 GetValueByName 取出变量值，再 EvaluateString 求值 [BuildTarget] 等占位符。
        /// </summary>
        private static string ResolveRemoteBuildPath(AddressableAssetSettings settings)
        {
            if (settings == null) return null;
            string template = settings.profileSettings.GetValueByName(settings.activeProfileId, AddressableAssetSettings.kRemoteBuildPath);
            if (string.IsNullOrEmpty(template)) return null;
            return settings.profileSettings.EvaluateString(settings.activeProfileId, template);
        }

        /// <summary>
        /// 计算客户端用的"服务器根"（Remote.LoadPath 去掉 /[BuildTarget] 后的部分）。
        /// 例：http://192.168.x.x:59306/Windows → http://192.168.x.x:59306
        /// 客户端用它拼 {serverBaseUrl}/update/version.json 做版本检查。
        /// </summary>
        private static string GetServerBaseUrl(AddressableAssetSettings settings)
        {
            string template = settings.profileSettings.GetValueByName(settings.activeProfileId, AddressableAssetSettings.kRemoteLoadPath);
            if (string.IsNullOrEmpty(template)) return null;

            string rootTemplate = template.Replace("/[BuildTarget]", "").TrimEnd('/');
            string resolved = settings.profileSettings.EvaluateString(settings.activeProfileId, rootTemplate);
            return resolved.TrimEnd('/');
        }

        /// <summary>读取已有 version.json（补丁时用于沿用 appVersion / minAppVersion），不存在或损坏返回 null。</summary>
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
            // 触发性注释：仅用于推动编辑器重编译检测
            switch (target)
            {
                case BuildTarget.StandaloneWindows:
                case BuildTarget.StandaloneWindows64:
                    return ".exe";
                default:
                    return string.Empty; // macOS 是 .app 文件夹，BuildPlayer 会自动处理
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
