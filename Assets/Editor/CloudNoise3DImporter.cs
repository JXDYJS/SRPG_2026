using System.IO;
using UnityEditor;
using UnityEngine;

// Imports a CloudNoise .bin (128^3 RGBA8) file as a Texture3D asset.
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

        Texture3D tex = new Texture3D(SIZE, SIZE, SIZE, TextureFormat.RGBA32, true);
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
        // Matches original .mcmeta: Trilinear blur, Repeat clamp.
        tex.wrapMode = TextureWrapMode.Repeat;
        tex.filterMode = FilterMode.Trilinear;
        tex.anisoLevel = 0;
        tex.Apply(false, true);

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
        int idx = z * SIZE * SIZE + y * SIZE + x;
        Color c = colors[idx];
        Debug.Log($"对账 {label}: R={(int)Mathf.Round(c.r * 255)} G={(int)Mathf.Round(c.g * 255)} " +
                  $"B={(int)Mathf.Round(c.b * 255)} A={(int)Mathf.Round(c.a * 255)}");
    }
}
