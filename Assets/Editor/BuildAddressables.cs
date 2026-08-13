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
    /// <summary>One-click Addressables packaging: setup groups from config files, then build content.</summary>
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

            foreach (string owned in mapping.OwnedGroups)
            {
                ClearGroup(settings, settings.FindGroup(owned));
            }

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

            int added = 0;
            string[] allPaths = AssetDatabase.GetAllAssetPaths();
            Array.Sort(allPaths);
            foreach (string path in allPaths)
            {
                if (!path.StartsWith("Assets/", StringComparison.Ordinal)) continue;
                if (!rules.Allow(path)) continue;
                if (!IsPackable(path)) continue;

                string groupName = mapping.ResolveGroup(path);
                if (groupName == null) continue;
                if (mapping.IsPreserved(groupName)) continue;

                string guid = AssetDatabase.AssetPathToGUID(path);
                if (string.IsNullOrEmpty(guid)) continue;

                // Skip assets already in a preserved group
                AddressableAssetEntry existing = settings.FindAssetEntry(guid);
                if (existing?.parentGroup != null && mapping.IsPreserved(existing.parentGroup.Name))
                    continue;

                AddressableAssetGroup group = GetOrCreateGroup(settings, groupName);
                AddressableAssetEntry entry = settings.CreateOrMoveEntry(guid, group, false);
                entry.address = path;
                added++;
            }

            int updated = 0;
            foreach (AddressableAssetGroup group in settings.groups)
            {
                if (group == null) continue;
                ContentUpdateGroupSchema cu = group.GetSchema<ContentUpdateGroupSchema>();
                if (cu == null) continue;
                if (!cu.StaticContent)
                {
                    cu.StaticContent = true;
                    updated++;
                }
            }
            if (updated > 0)
            {
                Debug.Log($"[BuildAddressables] {updated} 个分组开启 Prevent Updates（可热更）");
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


        private static AddressableAssetGroup GetOrCreateGroup(AddressableAssetSettings settings, string groupName)
        {
            AddressableAssetGroup group = settings.FindGroup(groupName);
            if (group == null)
            {
                group = settings.CreateGroup(groupName, false, false, false, null, typeof(BundledAssetGroupSchema));
                group.AddSchema(typeof(ContentUpdateGroupSchema), true);
                Debug.Log($"[BuildAddressables] 创建分组: {groupName}");
            }

            EnsurePreventUpdates(group);
            return group;
        }

        /// <summary>Enables Prevent Updates so content patches can detect changes in this group.</summary>
        private static void EnsurePreventUpdates(AddressableAssetGroup group)
        {
            if (group == null) return;
            ContentUpdateGroupSchema cu = group.GetSchema<ContentUpdateGroupSchema>();
            if (cu == null) return;
            if (!cu.StaticContent)
            {
                cu.StaticContent = true;
            }
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
                case ".mcmeta": // Minecraft texture metadata, not importable by Unity
                    return false;
                default:
                    return true;
            }
        }


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

                    int hashIdx = line.IndexOf('#');
                    if (hashIdx >= 0) line = line.Substring(0, hashIdx).TrimEnd();
                    if (line.Length == 0) continue;

                    // Plain line = ignore; "!" prefix = allow override
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
