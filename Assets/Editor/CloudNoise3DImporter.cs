using System.IO;
using UnityEditor;
using UnityEngine;

// ================================================================================
// CloudNoise3DImporter
// 把 iterationRP 光影包的 CloudNoise_128_128_128.bin（128^3 RGBA8，无文件头）
// 导入为 Unity Texture3D 资产。
//
// 用法：菜单 Tools -> Import Cloud Noise 3D
//  1) 选择 .bin 文件
//  2) 脚本校验长度 = 128*128*128*4 = 8388608
//  3) 按 RGBA8 序填色（z-major 内存布局：idx=(z*128*128 + y*128 + x)*4）
//  4) 存为 Texture3D 资产
//  5) 打印若干坐标的采样值，用于与 Tools/cloud_noise/verify_cloud_noise.py
//     输出的交叉对账（完全相同 = 转换正确）
// ================================================================================
public static class CloudNoise3DImporter
{
    private const int SIZE = 128;
    private const int EXPECTED_BYTES = SIZE * SIZE * SIZE * 4;

    [MenuItem("Tools/Import Cloud Noise 3D")]
    public static void Import()
    {
        string binPath = EditorUtility.OpenFilePanel("选择 CloudNoise_128_128_128.bin", "", "bin");
        if (string.IsNullOrEmpty(binPath)) return;

        byte[] bytes;
        try
        {
            bytes = File.ReadAllBytes(binPath);
        }
        catch (System.Exception e)
        {
            Debug.LogError($"读取失败: {e.Message}");
            return;
        }

        if (bytes.Length != EXPECTED_BYTES)
        {
            Debug.LogError($"文件长度错误: {bytes.Length}，期望 {EXPECTED_BYTES}（128^3 * 4）");
            return;
        }

        Texture3D tex = new Texture3D(SIZE, SIZE, SIZE, TextureFormat.RGBA32, false);
        Color[] colors = new Color[SIZE * SIZE * SIZE];

        for (int z = 0; z < SIZE; z++)
        {
            for (int y = 0; y < SIZE; y++)
            {
                for (int x = 0; x < SIZE; x++)
                {
                    int idx = (z * SIZE * SIZE + y * SIZE + x) * 4;
                    colors[z * SIZE * SIZE + y * SIZE + x] = new Color(
                        bytes[idx] / 255f,
                        bytes[idx + 1] / 255f,
                        bytes[idx + 2] / 255f,
                        bytes[idx + 3] / 255f);
                }
            }
        }

        tex.SetPixels(colors);
        // 对应原版 .mcmeta 的 blur:true（Trilinear）、clamp:false（Repeat）
        tex.wrapMode = TextureWrapMode.Repeat;
        tex.filterMode = FilterMode.Trilinear;
        tex.anisoLevel = 0;
        tex.Apply(false, true);

        // ==== 交叉对账：从 CPU 侧 colors 数组读取（纹理已设为不可读，避免 GetPixel 报错）====
        LogSample(colors, 0, 0, 0, "z=0   y=0  x=0");
        LogSample(colors, 64, 0, 0, "z=0   y=0  x=64");
        LogSample(colors, 0, 0, 64, "z=64  y=0  x=0");
        LogSample(colors, 64, 64, 64, "z=64  y=64 x=64");
        LogSample(colors, 0, 0, 127, "z=127 y=0  x=0");

        string savePath = EditorUtility.SaveFilePanelInProject(
            "保存 Cloud Noise 3D", "CloudNoise_128_128_128", "asset", "选择保存位置");
        if (string.IsNullOrEmpty(savePath)) return;

        AssetDatabase.CreateAsset(tex, savePath);
        AssetDatabase.SaveAssets();
        AssetDatabase.Refresh();

        Debug.Log($"已保存: {savePath}");
    }

    private static void LogSample(Color[] colors, int x, int y, int z, string label)
    {
        // 数组索引与填充循环一致：z-major，(z*SIZE*SIZE + y*SIZE + x)
        int idx = z * SIZE * SIZE + y * SIZE + x;
        Color c = colors[idx];
        Debug.Log($"对账 {label}: R={(int)Mathf.Round(c.r * 255)} G={(int)Mathf.Round(c.g * 255)} " +
                  $"B={(int)Mathf.Round(c.b * 255)} A={(int)Mathf.Round(c.a * 255)}");
    }
}
