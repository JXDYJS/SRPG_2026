using System;
using System.IO;
using UnityEditor;
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using UnityEngine.Rendering;

namespace Render.EditorTools
{
    /// <summary>
    /// Temporary GPU-side verification of VoxelFaceBaker.FaceTiles:
    /// 1) logs texture attributes (format / sRGB flag / dimension / depth)
    /// 2) reads every layer back from the GPU (Graphics.CopyTexture) and
    ///    compares byte-for-byte against the CPU-side GetPixels32 snapshot
    /// 3) samples the array through a real shader (probe quad) and compares
    ///    with the stored pixels, to reveal any sRGB decode mismatch a future
    ///    consumer would hit in this linear color space project.
    /// </summary>
    public static class VoxelGpuVerify
    {
        private const int Res = 16;
        private const int BakeLayer = 30;

        [MenuItem("Tools/Voxel Diag/GPU Verify")]
        public static void Run()
        {
            var tiles = Render.VoxelFaceBaker.FaceTiles;
            if (tiles == null)
            {
                Debug.LogError("[VoxelGpuVerify] Nothing baked yet.");
                return;
            }

            Debug.Log($"[VoxelGpuVerify] colorSpace={QualitySettings.activeColorSpace} " +
                      $"format={tiles.format} graphicsFormat={tiles.graphicsFormat} " +
                      $"isSRGB={GraphicsFormatUtility.IsSRGBFormat(tiles.graphicsFormat)} " +
                      $"dimension={tiles.dimension} depth={tiles.depth} size={tiles.width}x{tiles.height} " +
                      $"filter={tiles.filterMode} wrap={tiles.wrapMode}");

            // --- 2) GPU readback of every layer via Graphics.CopyTexture ---
            var rt = new RenderTexture(Res, Res, 0, RenderTextureFormat.ARGB32);
            rt.Create();
            int totalBad = 0;
            for (int layer = 0; layer < tiles.depth; layer++)
            {
                Color32[] cpu = tiles.GetPixels32(layer);
                Graphics.CopyTexture(tiles, layer, 0, 0, 0, Res, Res, rt, 0, 0, 0, 0);
                RenderTexture prev = RenderTexture.active;
                RenderTexture.active = rt;
                var tmp = new Texture2D(Res, Res, TextureFormat.RGBA32, false);
                tmp.ReadPixels(new Rect(0, 0, Res, Res), 0, 0);
                tmp.Apply();
                RenderTexture.active = prev;
                Color32[] gpu = tmp.GetPixels32();
                UnityEngine.Object.DestroyImmediate(tmp);

                int bad = 0;
                for (int i = 0; i < cpu.Length; i++)
                {
                    if (cpu[i].r != gpu[i].r || cpu[i].g != gpu[i].g ||
                        cpu[i].b != gpu[i].b || cpu[i].a != gpu[i].a)
                    {
                        bad++;
                    }
                }
                totalBad += bad;
                if (bad > 0 || layer % 10 == 0 || layer == tiles.depth - 1)
                {
                    Debug.Log($"[VoxelGpuVerify] layer {layer}: GPU/CPU mismatched pixels = {bad}/{cpu.Length}");
                }
            }
            Debug.Log($"[VoxelGpuVerify] CopyTexture readback total mismatches = {totalBad}");

            // --- 3) real shader sampling probe ---
            Shader probe = Shader.Find("Custom/VoxelArrayProbe");
            if (probe == null)
            {
                Debug.LogError("[VoxelGpuVerify] probe shader not found.");
            }
            else
            {
                var quad = GameObject.CreatePrimitive(PrimitiveType.Quad);
                quad.name = "_ProbeQuad";
                quad.layer = BakeLayer;
                quad.transform.position = new Vector3(0f, 0f, 0f);
                quad.transform.localScale = new Vector3(2f, 2f, 1f);
                var mat = new Material(probe);
                mat.SetTexture("_FaceArray", tiles);
                mat.SetFloat("_Layer", 0f);
                quad.GetComponent<Renderer>().sharedMaterial = mat;

                var rt2 = new RenderTexture(Res, Res, 0, RenderTextureFormat.ARGB32);
                rt2.Create();
                var camGo = new GameObject("_ProbeCam");
                var cam = camGo.AddComponent<Camera>();
                cam.orthographic = true;
                cam.orthographicSize = 1f;
                cam.aspect = 1f;
                cam.nearClipPlane = 0.05f;
                cam.farClipPlane = 4f;
                cam.clearFlags = CameraClearFlags.SolidColor;
                cam.backgroundColor = new Color(0, 0, 0, 0);
                cam.allowHDR = false;
                cam.allowMSAA = false;
                cam.useOcclusionCulling = false;
                cam.cullingMask = 1 << BakeLayer;
                cam.enabled = false;
                cam.transform.SetPositionAndRotation(new Vector3(0f, 0f, 3f), Quaternion.LookRotation(-Vector3.forward, Vector3.up));
                cam.targetTexture = rt2;
                quad.SetActive(true);
                rt2.DiscardContents();
                cam.Render();

                RenderTexture prev2 = RenderTexture.active;
                RenderTexture.active = rt2;
                var shot = new Texture2D(Res, Res, TextureFormat.RGBA32, false);
                shot.ReadPixels(new Rect(0, 0, Res, Res), 0, 0);
                shot.Apply();
                RenderTexture.active = prev2;
                Color32[] sampled = shot.GetPixels32();
                Color32[] layer0 = tiles.GetPixels32(0);
                long sum = 0;
                for (int i = 0; i < sampled.Length; i++)
                {
                    sum += Mathf.Abs(sampled[i].r - layer0[i].r);
                    sum += Mathf.Abs(sampled[i].g - layer0[i].g);
                    sum += Mathf.Abs(sampled[i].b - layer0[i].b);
                }
                float meanAbsDiff = sum / (float)(sampled.Length * 3);
                Debug.Log($"[VoxelGpuVerify] shader probe layer0 vs stored: meanAbsDiff={meanAbsDiff:F4} " +
                          $"sampleStored=({layer0[0].r},{layer0[0].g},{layer0[0].b}) " +
                          $"sampleProbe=({sampled[0].r},{sampled[0].g},{sampled[0].b})");

                UnityEngine.Object.DestroyImmediate(shot);
                UnityEngine.Object.DestroyImmediate(rt2);
                UnityEngine.Object.DestroyImmediate(camGo);
                UnityEngine.Object.DestroyImmediate(quad);
            }

            rt.Release();
            UnityEngine.Object.DestroyImmediate(rt);
            Debug.Log("[VoxelGpuVerify] done");
        }
    }
}// touch to force domain reload for UnitySkills server restore
