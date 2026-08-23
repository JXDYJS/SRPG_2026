using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering.Universal;

namespace Render.EditorTools
{
    /// <summary>
    /// Installs the VoxelRaytrace debug feature into every URP renderer data
    /// asset in the project. Idempotent: any existing instance (including a
    /// broken one) is removed first, then a properly persisted one is added.
    /// </summary>
    public static class VoxelRaytraceMenu
    {
        [MenuItem("Tools/Voxel Diag/Add Voxel Raytrace Feature")]
        public static void AddRaytraceFeature()
        {
            string[] guids = AssetDatabase.FindAssets("t:ScriptableRendererData");
            int added = 0;
            foreach (string guid in guids)
            {
                string path = AssetDatabase.GUIDToAssetPath(guid);
                ScriptableRendererData renderer = AssetDatabase.LoadAssetAtPath<ScriptableRendererData>(path);
                if (renderer == null)
                {
                    continue;
                }

                for (int i = renderer.rendererFeatures.Count - 1; i >= 0; i--)
                {
                    ScriptableRendererFeature f = renderer.rendererFeatures[i];
                    if (f == null)
                    {
                        // Broken/invalid reference (e.g. unsaved instance).
                        renderer.rendererFeatures.RemoveAt(i);
                    }
                    else if (f is VoxelRaytraceFeature)
                    {
                        AssetDatabase.RemoveObjectFromAsset(f);
                        renderer.rendererFeatures.RemoveAt(i);
                    }
                }

                VoxelRaytraceFeature feature = ScriptableObject.CreateInstance<VoxelRaytraceFeature>();
                feature.name = "VoxelRaytrace";
                renderer.rendererFeatures.Add(feature);
                AssetDatabase.AddObjectToAsset(feature, renderer);
                EditorUtility.SetDirty(feature);
                EditorUtility.SetDirty(renderer);
                added++;
                Debug.Log($"[VoxelRaytrace] Added to {path}");
            }
            AssetDatabase.SaveAssets();
            Debug.Log($"[VoxelRaytrace] Feature added to {added} renderer(s). Toggle it in the renderer inspector.");
        }
    }
}