using System.IO;
using UnityEditor;
using UnityEngine;

namespace Render.EditorTools
{
    /// <summary>
    /// Menu shortcuts to inspect the baked voxel face tiles.
    /// Baking itself runs at runtime (startup flow): it loads prefabs via
    /// Addressables and renders with a camera, which is not reliable in edit
    /// mode. These menu items therefore only make sense DURING Play mode after
    /// the startup bake has run; they guard on Application.isPlaying.
    /// </summary>
    public static class VoxelFaceBakerMenu
    {
        [MenuItem("Tools/Voxel 烘焙检查/Force Re-Bake & Dump")]
        public static void ForceRebakeAndDump()
        {
            if (!RequirePlaying()) return;

            VoxelFaceBaker.ForceRebake();
            DumpToTemp();
        }

        [MenuItem("Tools/Voxel 烘焙检查/Dump Face Tiles To Temp")]
        public static void DumpToTemp()
        {
            if (!RequirePlaying()) return;

            string dir = Path.Combine(Application.temporaryCachePath, "VoxelFaceDump");
            string result = VoxelFaceBaker.DumpTilesToPng(dir);
            if (result != null)
            {
                Debug.Log($"[VoxelFaceBakerMenu] Open folder: {result}");
                EditorUtility.RevealInFinder(result);
            }
        }

        [MenuItem("Tools/Voxel 烘焙检查/Dump One Atlas Sheet (all tiles)")]
        public static void DumpAtlasSheet()
        {
            if (!RequirePlaying()) return;

            var tiles = VoxelFaceBaker.FaceTiles;
            if (tiles == null || VoxelFaceBaker.TypeLayerBase == null)
            {
                Debug.LogWarning("[VoxelFaceBakerMenu] Nothing baked yet.");
                return;
            }

            int types = VoxelFaceBaker.TypeLayerBase.Count;
            const int res = VoxelFaceBaker.FaceRes;
            // Layout: 1 row per block type, 6 columns = 6 faces. Grid with 2px gutters.
            int gutter = 2;
            int cell = res;
            int w = 6 * cell + 5 * gutter;
            int h = types * cell + (types - 1) * gutter;

            var sheet = new Texture2D(w, h, TextureFormat.RGBA32, false);
            int typeIndex = 0;
            foreach (var kvp in VoxelFaceBaker.TypeLayerBase)
            {
                for (int face = 0; face < 6; face++)
                {
                    Color32[] px = tiles.GetPixels32(kvp.Value + face);
                    int ox = face * (cell + gutter);
                    int oy = typeIndex * (cell + gutter);
                    sheet.SetPixels(ox, oy, cell, cell, ToColors(px));
                }
                typeIndex++;
            }
            sheet.Apply();

            string dir = Application.temporaryCachePath;
            Directory.CreateDirectory(dir);
            string path = Path.Combine(dir, "VoxelFaceAtlasSheet.png");
            File.WriteAllBytes(path, sheet.EncodeToPNG());
            Object.DestroyImmediate(sheet);

            Debug.Log($"[VoxelFaceBakerMenu] Atlas sheet written: {path}");
            EditorUtility.RevealInFinder(dir);
        }

        [MenuItem("Tools/Voxel 烘焙检查/Log Face Stats")]
        public static void LogStats()
        {
            if (!RequirePlaying()) return;

            if (VoxelFaceBaker.FaceTiles == null)
            {
                Debug.LogWarning("[VoxelFaceBakerMenu] Nothing baked yet.");
                return;
            }
            VoxelFaceBaker.LogBakeStats();
        }

        /// <summary>
        /// The bake runs at runtime only; these menu items need Play mode with the
        /// startup bake already executed. Guard edit-mode clicks with guidance.
        /// </summary>
        private static bool RequirePlaying()
        {
            if (Application.isPlaying)
            {
                return true;
            }
            EditorUtility.DisplayDialog(
                "Voxel 烘焙检查",
                "烘焙依赖运行时(Addressables 加载 prefab + Camera 渲染),编辑模式不可用。\n\n" +
                "请先进入 Play 模式,等启动流程烘焙完成,再点此菜单。\n" +
                "(Play 模式下菜单仍可正常点击)",
                "OK");
            return false;
        }

        private static Color[] ToColors(Color32[] px)
        {
            var cols = new Color[px.Length];
            for (int i = 0; i < px.Length; i++)
            {
                cols[i] = new Color(px[i].r / 255f, px[i].g / 255f, px[i].b / 255f, px[i].a / 255f);
            }
            return cols;
        }
    }
}