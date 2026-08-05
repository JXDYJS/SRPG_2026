using System.IO;
using UnityEditor;
using UnityEngine;

namespace EditorTools
{
    /// <summary>
    /// 批量把图片资源的导入类型改为 Sprite。
    ///
    /// 用途：Assets/textures/block 等目录混有 .mcmeta 文件（非图片、无 TextureImporter），
    /// 导致在 Project 窗口全选后 Inspector 不显示贴图导入设置、无法统一改成 Sprite。
    /// 本工具只遍历图片扩展名，自动跳过 .mcmeta / .meta 等文件。
    /// </summary>
    public static class BulkTextureToSprite
    {
        private static readonly string[] ImageExtensions =
        {
            ".png", ".jpg", ".jpeg", ".tga", ".psd", ".bmp", ".gif", ".tif", ".tiff"
        };

        /// <summary>把当前选中的文件夹/图片转换为 Sprite（Project 窗口全选后点击菜单）</summary>
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

        /// <summary>整目录转换 Assets/textures/block（含子目录），跳过 mcmeta 等非图片文件</summary>
        [MenuItem("Tools/Textures/Convert Block Folder To Sprite")]
        public static void ConvertBlockFolderToSprite()
        {
            int count = ConvertFolder("Assets/textures/block");
            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();
            Debug.Log($"[BulkTextureToSprite] block 文件夹完成：共转换 {count} 张图片为 Sprite");
        }

        /// <summary>只修遗物图标（beacon / cactus / shield），不影响其它 block 贴图</summary>
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
