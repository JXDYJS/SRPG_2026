using System.IO;
using UnityEditor;
using UnityEngine;

namespace EditorTools
{
    /// <summary>Bulk-converts image import types to Sprite, skipping non-image files (.mcmeta/.meta).</summary>
    public static class BulkTextureToSprite
    {
        private static readonly string[] ImageExtensions =
        {
            ".png", ".jpg", ".jpeg", ".tga", ".psd", ".bmp", ".gif", ".tif", ".tiff"
        };

        [MenuItem("Tools/Textures/Bulk Convert Selection To Sprite")]
        public static void ConvertSelectionToSprite()
        {
            int count = 0;
            foreach (Object obj in Selection.objects)
            {
                string path = AssetDatabase.GetAssetPath(obj);
                if (string.IsNullOrEmpty(path)) continue;
                if (AssetDatabase.IsValidFolder(path))
                    count += ConvertFolder(path);
                else if (IsImageFile(path))
                    count += ConvertFile(path) ? 1 : 0;
            }
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            Debug.Log($"[BulkTextureToSprite] 完成：共转换 {count} 张图片为 Sprite");
        }

        [MenuItem("Tools/Textures/Convert Block Folder To Sprite")]
        public static void ConvertBlockFolderToSprite()
        {
            int count = ConvertFolder("Assets/textures/block");
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            Debug.Log($"[BulkTextureToSprite] block 文件夹完成：共转换 {count} 张图片为 Sprite");
        }

        /// <summary>Converts only relic icons (beacon/cactus/shield).</summary>
        [MenuItem("Tools/Textures/Convert Relic Icons To Sprite")]
        public static void ConvertRelicIconsToSprite()
        {
            string[] targets =
            {
                "Assets/textures/block/beacon.png",
                "Assets/textures/block/cactus_flower.png",
                "Assets/textures/entity/shield/base.png"
            };
            int count = 0;
            foreach (string path in targets)
            {
                if (ConvertFile(path)) count++;
            }
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            Debug.Log($"[BulkTextureToSprite] 遗物图标完成：共转换 {count} 张图片为 Sprite");
        }

        private static int ConvertFolder(string folder)
        {
            if (!AssetDatabase.IsValidFolder(folder)) return 0;

            int count = 0;
            string[] files = Directory.GetFiles(folder, "*", SearchOption.AllDirectories);
            foreach (string file in files)
            {
                string path = file.Replace('\\', '/');
                if (!IsImageFile(path)) continue;
                if (ConvertFile(path)) count++;
            }
            return count;
        }

        private static bool ConvertFile(string path)
        {
            TextureImporter importer = AssetImporter.GetAtPath(path) as TextureImporter;
            if (importer == null) return false;
            if (importer.textureType == TextureImporterType.Sprite &&
                importer.spriteImportMode == SpriteImportMode.Single)
            {
                return false;
            }

            importer.textureType = TextureImporterType.Sprite;
            importer.spriteImportMode = SpriteImportMode.Single;
            importer.alphaIsTransparency = true;
            importer.SaveAndReimport();
            Debug.Log($"[BulkTextureToSprite] 转换: {path}");
            return true;
        }

        private static bool IsImageFile(string path)
        {
            string ext = Path.GetExtension(path).ToLowerInvariant();
            foreach (string e in ImageExtensions)
            {
                if (ext == e) return true;
            }
            return false;
        }
    }
}
