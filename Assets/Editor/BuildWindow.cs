using System;
using System.IO;
using System.Linq;
using UnityEditor;
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
    ///   5. 构建后清理 StreamingAssets/aa（该目录不应进版本库）
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

        private bool _isBuilding;
        private string _log;

        private const string PrefPrefix = "BuildWindow.";

        [MenuItem("Tools/Build/Build Window")]
        public static void Open()
        {
            BuildWindow w = GetWindow<BuildWindow>("Build");
            w.minSize = new Vector2(440, 360);
        }

        private void OnEnable()
        {
            _outputDir = EditorPrefs.GetString(PrefPrefix + "OutputDir", _outputDir);
            _buildName = EditorPrefs.GetString(PrefPrefix + "Name", _buildName);
            _buildTarget = (BuildTarget)EditorPrefs.GetInt(PrefPrefix + "Target", (int)_buildTarget);
            _buildAddressables = EditorPrefs.GetBool(PrefPrefix + "Addr", _buildAddressables);
            _developmentMode = EditorPrefs.GetBool(PrefPrefix + "Dev", _developmentMode);
            _openFolderAfter = EditorPrefs.GetBool(PrefPrefix + "Open", _openFolderAfter);
        }

        private void OnDisable()
        {
            EditorPrefs.SetString(PrefPrefix + "OutputDir", _outputDir);
            EditorPrefs.SetString(PrefPrefix + "Name", _buildName);
            EditorPrefs.SetInt(PrefPrefix + "Target", (int)_buildTarget);
            EditorPrefs.SetBool(PrefPrefix + "Addr", _buildAddressables);
            EditorPrefs.SetBool(PrefPrefix + "Dev", _developmentMode);
            EditorPrefs.SetBool(PrefPrefix + "Open", _openFolderAfter);
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

            EditorGUILayout.Space(16);
            GUI.enabled = !_isBuilding;
            if (GUILayout.Button(_isBuilding ? "构建中..." : "开始构建", GUILayout.Height(40)))
            {
                StartBuild();
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

        private void RunBuild()
        {
            try
            {
                // 1. Addressables 内容构建（本项目运行时大量 LoadAssetAsync，必须先做）
                if (_buildAddressables)
                {
                    BuildAddressables.BuildContent();
                }

                // 2. 拷贝 bundle 到 StreamingAssets（Local.LoadPath = StreamingAssets/aa/Windows）
                //    否则玩家运行时 Addressables 一个都加载不到
                CopyDirectory("Library/com.unity.addressables/aa", "Assets/StreamingAssets/aa");

                // 3. 清理输出目录
                if (Directory.Exists(_outputDir))
                {
                    Directory.Delete(_outputDir, true);
                }
                Directory.CreateDirectory(_outputDir);

                // 4. 玩家构建
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
                    ? $"[OK] 构建成功: {report.summary.outputPath}  ({report.summary.totalSize / 1048576f:F1} MB)"
                    : $"[ERROR] 构建失败: {report.summary.result}";
            }
            catch (Exception e)
            {
                _log = "[ERROR] " + e.Message;
                Debug.LogException(e);
            }
            finally
            {
                // 5. 清理 StreamingAssets/aa，保持仓库干净（内容构建已配置 cleanup=1，这里再兜底）
                if (Directory.Exists("Assets/StreamingAssets/aa"))
                {
                    Directory.Delete("Assets/StreamingAssets/aa", true);
                }
                AssetDatabase.Refresh();
                _isBuilding = false;
                Repaint();
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
                    return string.Empty; // macOS 是 .app 文件夹，BuildPlayer 会自动处理
            }
        }

        private static void CopyDirectory(string src, string dst)
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
                Directory.CreateDirectory(Path.Combine(dst, Path.GetDirectoryName(rel) ?? string.Empty));
                File.Copy(file, Path.Combine(dst, rel), true);
            }
        }
    }
}
