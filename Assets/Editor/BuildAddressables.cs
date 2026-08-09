using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.AddressableAssets;
using UnityEditor.AddressableAssets.Settings;
using UnityEditor.AddressableAssets.Settings.GroupSchemas;
using UnityEngine;

namespace EditorTools
{
    /// <summary>
    /// Addressables 一键打包工具。
    ///
    /// 设计约定：
    ///   - 地址 = 资源的完整 Assets/... 路径（天然唯一，配表字符串直接对应）
    ///   - 分组 = groups.txt 的「路径前缀 → 组名」映射决定（默认按目录分类）
    ///   - 忽略规则 = ignore.txt（gitignore 风格，后缀 + 路径前缀）
    ///   - preserve 名单内的既有分组（buffID / AssetReference 寻址）一律不动
    ///
    /// 使用：菜单 Tools/Addressables → Setup Groups (by path) / Build Content
    /// </summary>
    public static class BuildAddressables
    {
        private const string ConfigRoot = "Assets/AddressableBuild";
        private const string IgnoreFile = ConfigRoot + "/ignore.txt";
        private const string GroupsFile = ConfigRoot + "/groups.txt";

        [MenuItem("Tools/Addressables/Setup Groups (by path)")]
        public static void SetupGroupsByPath()
        {
            AddressableAssetSettings settings = AddressableAssetSettingsDefaultObject.Settings;
            if (settings == null)
            {
                Debug.LogError("[BuildAddressables] AddressableAssetSettings 不存在，请先初始化 Addressables");
                return;
            }

            IgnoreRules rules = IgnoreRules.Load(IgnoreFile);
            GroupMapping mapping = GroupMapping.Load(GroupsFile);

            // 1. 清空所有脚本拥有的分组（幂等重建，避免残留）
            foreach (string owned in mapping.OwnedGroups)
            {
                ClearGroup(settings, settings.FindGroup(owned));
            }

            // 1.5 清理历史污染分组：组名含 " # "（行内注释未剥离时产生的陈旧组），非 preserve 非当前拥有 → 删除
            foreach (AddressableAssetGroup stale in settings.groups.ToArray())
            {
                if (stale == null) continue;
                if (mapping.IsPreserved(stale.Name)) continue;
                if (mapping.OwnedGroups.Contains(stale.Name, StringComparer.OrdinalIgnoreCase)) continue;
                if (stale.Name.Contains(" # "))
                {
                    settings.RemoveGroup(stale);
                    Debug.Log($"[BuildAddressables] 删除陈旧分组: {stale.Name}");
                }
            }

            // 2. 遍历资源，按规则写入地址
            int added = 0;
            string[] allPaths = AssetDatabase.GetAllAssetPaths();
            Array.Sort(allPaths);
            foreach (string path in allPaths)
            {
                if (!path.StartsWith("Assets/", StringComparison.Ordinal)) continue;
                if (!rules.Allow(path)) continue;
                if (!IsPackable(path)) continue;

                string groupName = mapping.ResolveGroup(path);
                if (groupName == null) continue;              // 未映射到任何组 → 不打包
                if (mapping.IsPreserved(groupName)) continue; // 防呆：规则不应指向 preserve 组

                string guid = AssetDatabase.AssetPathToGUID(path);
                if (string.IsNullOrEmpty(guid)) continue;

                // 已在 preserve 分组内的资产不动（如 Group_Buff 里的 .asset）
                AddressableAssetEntry existing = settings.FindAssetEntry(guid);
                if (existing?.parentGroup != null && mapping.IsPreserved(existing.parentGroup.Name))
                    continue;

                AddressableAssetGroup group = GetOrCreateGroup(settings, groupName);
                AddressableAssetEntry entry = settings.CreateOrMoveEntry(guid, group, false);
                entry.address = path;
                added++;
            }

            AssetDatabase.SaveAssets();
            Debug.Log($"[BuildAddressables] 完成：{added} 个资源写入地址，脚本分组 {mapping.OwnedGroups.Count} 个");
        }

        [MenuItem("Tools/Addressables/Build Content")]
        public static void BuildContent()
        {
            SetupGroupsByPath();
            Debug.Log("[BuildAddressables] 开始构建 Addressables 内容...");
            AddressableAssetSettings.BuildPlayerContent();
            Debug.Log("[BuildAddressables] 构建完成");
        }

        // ==================== 分组工具 ====================

        private static AddressableAssetGroup GetOrCreateGroup(AddressableAssetSettings settings, string groupName)
        {
            AddressableAssetGroup group = settings.FindGroup(groupName);
            if (group != null) return group;

            group = settings.CreateGroup(groupName, false, false, false, null, typeof(BundledAssetGroupSchema));
            group.AddSchema(typeof(ContentUpdateGroupSchema), true);
            Debug.Log($"[BuildAddressables] 创建分组: {groupName}");
            return group;
        }

        private static void ClearGroup(AddressableAssetSettings settings, AddressableAssetGroup group)
        {
            if (group == null || group.entries == null) return;

            List<string> guids = new List<string>();
            foreach (AddressableAssetEntry e in group.entries) guids.Add(e.guid);
            foreach (string g in guids) settings.RemoveAssetEntry(g, false);
        }

        private static bool IsPackable(string path)
        {
            if (AssetDatabase.IsValidFolder(path)) return false;

            string ext = Path.GetExtension(path).ToLowerInvariant();
            switch (ext)
            {
                case ".cs":
                case ".meta":
                case ".dll":
                case ".js":
                case ".md":
                case ".asmdef":
                case ".rsp":
                case ".uxml":
                case ".uss":
                case ".mcmeta": // Minecraft 贴图包元数据，Unity 无法识别导入
                    return false;
                default:
                    return true;
            }
        }

        // ==================== 忽略规则（gitignore 风格） ====================

        private sealed class IgnoreRules
        {
            private readonly List<(bool allow, string pattern)> _rules = new List<(bool, string)>();

            public static IgnoreRules Load(string filePath)
            {
                IgnoreRules rules = new IgnoreRules();
                if (!File.Exists(filePath))
                {
                    Debug.LogWarning($"[BuildAddressables] 忽略规则文件不存在: {filePath}");
                    return rules;
                }

                foreach (string raw in File.ReadAllLines(filePath))
                {
                    string line = raw.Trim();
                    if (line.Length == 0 || line.StartsWith("#")) continue;

                    // 剥离行内注释（# 之后）
                    int hashIdx = line.IndexOf('#');
                    if (hashIdx >= 0) line = line.Substring(0, hashIdx).TrimEnd();
                    if (line.Length == 0) continue;

                    // 语义：普通行 = 忽略（匹配则排除）；! 开头 = 反选（匹配则放行）
                    bool isAllow = false;
                    if (line.StartsWith("!"))
                    {
                        isAllow = true;
                        line = line.Substring(1).Trim();
                    }
                    if (line.Length == 0) continue;
                    rules._rules.Add((isAllow, line));
                }
                return rules;
            }

            public bool Allow(string path)
            {
                bool result = true;
                foreach ((bool isAllow, string pattern) in _rules)
                {
                    if (Match(path, pattern)) result = isAllow;
                }
                return result;
            }

            private static bool Match(string path, string pattern)
            {
                if (pattern.EndsWith("/**", StringComparison.Ordinal))
                {
                    return path.StartsWith(pattern.Substring(0, pattern.Length - 3), StringComparison.OrdinalIgnoreCase);
                }
                if (pattern.EndsWith("/", StringComparison.Ordinal))
                {
                    return path.StartsWith(pattern, StringComparison.OrdinalIgnoreCase);
                }
                if (pattern.StartsWith("*.", StringComparison.Ordinal))
                {
                    return path.EndsWith(pattern.Substring(1), StringComparison.OrdinalIgnoreCase);
                }
                return path.StartsWith(pattern, StringComparison.OrdinalIgnoreCase);
            }
        }

        // ==================== 分组映射 + preserve 名单 ====================

        private sealed class GroupMapping
        {
            public List<(string prefix, string group)> Rules { get; } = new List<(string, string)>();
            public HashSet<string> Preserved { get; } = new HashSet<string>(StringComparer.OrdinalIgnoreCase);

            public HashSet<string> OwnedGroups => new HashSet<string>(
                Rules.Select(r => r.group).Where(g => !Preserved.Contains(g)),
                StringComparer.OrdinalIgnoreCase);

            public bool IsPreserved(string groupName) => Preserved.Contains(groupName);

            public string ResolveGroup(string path)
            {
                string bestPrefix = null;
                foreach ((string prefix, string group) in Rules)
                {
                    if (path.StartsWith(prefix, StringComparison.OrdinalIgnoreCase))
                    {
                        if (bestPrefix == null || prefix.Length > bestPrefix.Length)
                            bestPrefix = prefix;
                    }
                }
                if (bestPrefix == null) return null;
                return Rules.First(r => r.prefix == bestPrefix).group;
            }

            public static GroupMapping Load(string filePath)
            {
                GroupMapping mapping = new GroupMapping();
                if (!File.Exists(filePath))
                {
                    Debug.LogWarning($"[BuildAddressables] 分组规则文件不存在: {filePath}");
                    return mapping;
                }

                foreach (string raw in File.ReadAllLines(filePath))
                {
                    string line = raw.Trim();
                    if (line.Length == 0 || line.StartsWith("#")) continue;

                    // 剥离行内注释（# 之后），避免注释混入组名
                    int hashIdx = line.IndexOf('#');
                    if (hashIdx >= 0) line = line.Substring(0, hashIdx).TrimEnd();
                    if (line.Length == 0) continue;

                    if (line.StartsWith("preserve", StringComparison.OrdinalIgnoreCase))
                    {
                        int eq = line.IndexOf('=');
                        string list = eq >= 0 ? line.Substring(eq + 1) : line.Substring("preserve".Length);
                        foreach (string name in list.Split(','))
                        {
                            string n = name.Trim();
                            if (n.Length > 0) mapping.Preserved.Add(n);
                        }
                        continue;
                    }

                    int idx = line.IndexOf('=');
                    if (idx < 0) continue;
                    string prefix = line.Substring(0, idx).Trim();
                    string group = line.Substring(idx + 1).Trim();
                    if (prefix.Length == 0 || group.Length == 0) continue;
                    mapping.Rules.Add((prefix, group));
                }
                return mapping;
            }
        }
    }
}
