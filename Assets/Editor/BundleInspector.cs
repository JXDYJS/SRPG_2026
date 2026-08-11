using System;
using System.IO;
using System.Text;
using UnityEditor;
using UnityEngine;

public static class BundleInspector
{
    [MenuItem("Tools/Inspect Built Bundles")]
    public static void Inspect()
    {
        StringBuilder sb = new StringBuilder();
        try
        {
            string bundleDir = Path.Combine(Directory.GetCurrentDirectory(),
                "Build", "SRPG_2026_Data", "StreamingAssets", "aa", "StandaloneWindows64");
            sb.AppendLine($"[BundleInspector] scanning {bundleDir}");
            string[] targets = { "perfob_assets_all", "scenes_scenes_all", "scenes_assets_all" };
            foreach (string file in Directory.GetFiles(bundleDir, "*.bundle"))
            {
                if (!Array.Exists(targets, t => file.Contains(t))) continue;
                var ab = AssetBundle.LoadFromFile(file);
                if (ab == null) { sb.AppendLine("FAILED " + Path.GetFileName(file)); continue; }
                sb.AppendLine($"=== {Path.GetFileName(file)} assets={ab.GetAllAssetNames().Length} scenes={ab.GetAllScenePaths().Length} ===");
                foreach (var n in ab.GetAllAssetNames())
                {
                    var o = ab.LoadAsset(n);
                    if (o is Material m)
                    {
                        string shaderName = m.shader != null ? m.shader.name : "NULL_SHADER";
                        sb.AppendLine($"  MATERIAL {n} -> shader={shaderName}");
                    }
                    else if (o is Shader)
                    {
                        sb.AppendLine($"  SHADER {n}");
                    }
                    else if (n.Contains("Sea") || n.Contains("Sun"))
                    {
                        sb.AppendLine($"  ASSET {n} type={o.GetType().Name}");
                    }
                }
                ab.Unload(false);
            }
        }
        catch (Exception e) { sb.AppendLine("EXCEPTION: " + e); }
        sb.AppendLine("done");
        string outPath = Path.Combine(Directory.GetCurrentDirectory(), "Library", "bundle_inspect.txt");
        File.WriteAllText(outPath, sb.ToString());
        Debug.Log("[BundleInspector] wrote " + outPath);
    }
}
