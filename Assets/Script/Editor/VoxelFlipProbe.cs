using System;
using System.IO;
using UnityEditor;
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using UnityEngine.Rendering.Universal;

namespace Render.EditorTools
{
    /// <summary>
    /// Self-judging y-flip probe. Builds a tiny synthetic voxel volume (a
    /// white block at y=0 under a red block at y=2), binds a white/red face
    /// atlas, renders the raytrace pass into an offscreen RT, then simulates
    /// the expected pixels on the CPU using the same math as the shader
    /// (GetNormalizedScreenSpaceUV convention vs the old raw-SV convention).
    /// The convention that matches the captured pixels identifies exactly
    /// which mapping the running shader uses and whether rays are mirrored.
    /// Also dumps the real baked atlas if present (grass side tiles show the
    /// face-readback orientation). Auto-runs once per reimport; re-run via
    /// Tools/Voxel Diag/Capture Flip Probe.
    /// </summary>
    public static class VoxelFlipProbe
    {
        private const int Res = 256;
        private const string Version = "2";
        private static readonly string OutDir =
            Path.Combine(Application.dataPath, "..", "Temp", "VoxelFlipProbe");

        private static readonly int DiagId = Shader.PropertyToID("_VoxelDiagMode");

        // World-space probe blocks (inside the 8x8x32 chunk, 2x2 footprint).
        private static readonly Vector3 A0 = new Vector3(3, 0, 3); // white, type 1
        private static readonly Vector3 A1 = new Vector3(5, 1, 5);
        private static readonly Vector3 B0 = new Vector3(3, 2, 3); // red, type 2
        private static readonly Vector3 B1 = new Vector3(5, 3, 5);

        [InitializeOnLoadMethod]
        private static void AutoRunOnce()
        {
            string verFile = Path.Combine(OutDir, "VoxelFlipProbe.version");
            if (File.Exists(verFile) && File.ReadAllText(verFile).Trim() == Version)
            {
                return; // already probed at this probe version
            }
            EditorApplication.delayCall += Run;
        }

        [MenuItem("Tools/Voxel Diag/Capture Flip Probe")]
        public static void Run()
        {
            if (!IsRaytraceFeatureActive())
            {
                Debug.LogWarning("[VoxelFlipProbe] VoxelRaytraceFeature is not active on the " +
                                 "current renderer; enable it and re-run the probe.");
                return;
            }

            if (Render.VoxelFaceBaker.FaceTiles != null)
            {
                Render.VoxelFaceBaker.DumpTilesToPng(OutDir);
            }

            Texture3D volume = null;
            Texture2DArray atlas = null;
            Camera cam = null;
            RenderTexture rt = null;
            try
            {
                Directory.CreateDirectory(OutDir);
                Shader.SetGlobalFloat(DiagId, 0f); // normal ray-march output
                volume = BuildProbeVolume();
                atlas = BuildProbeAtlas();
                Managers.ShaderManager.BindVoxelFaceTiles(atlas);
                Managers.ShaderManager.BindVoxelVolume(volume, null);

                rt = new RenderTexture(Res, Res, 0, RenderTextureFormat.ARGB32)
                {
                    name = "VoxelFlipProbeRT"
                };
                rt.Create();

                var camGo = new GameObject("_VoxelFlipProbeCam") { hideFlags = HideFlags.HideAndDontSave };
                cam = camGo.AddComponent<Camera>();
                cam.enabled = false;
                cam.clearFlags = CameraClearFlags.SolidColor;
                cam.backgroundColor = new Color(1, 0, 1, 1); // magenta = miss baseline
                cam.cullingMask = 0;
                cam.fieldOfView = 50f;
                cam.nearClipPlane = 0.1f;
                cam.farClipPlane = 100f;
                cam.transform.SetPositionAndRotation(
                    new Vector3(4f, 5f, -12f),
                    Quaternion.LookRotation(new Vector3(0f, -3f, 16f), Vector3.up));
                cam.targetTexture = rt;
                cam.Render();

                RenderTexture prev = RenderTexture.active;
                RenderTexture.active = rt;
                var shot = new Texture2D(Res, Res, TextureFormat.RGBA32, false);
                shot.ReadPixels(new Rect(0, 0, Res, Res), 0, 0);
                shot.Apply();
                RenderTexture.active = prev;
                Color32[] px = shot.GetPixels32();
                File.WriteAllBytes(Path.Combine(OutDir, "VoxelProbeContent.png"), shot.EncodeToPNG());
                UnityEngine.Object.DestroyImmediate(shot);

                // Four combos: convention (fixed/raw) x readback row order.
                // The PNG rows come from ReadPixels; whether row 0 of the PNG
                // is RT row 0 or RT row H-1 is what we cannot assume.
                int[] m = new int[4];
                string[] names = { "fixed fwd", "fixed rev", "raw fwd", "raw rev" };
                m[0] = CountConventionMatches(px, cam, true, false);
                m[1] = CountConventionMatches(px, cam, true, true);
                m[2] = CountConventionMatches(px, cam, false, false);
                m[3] = CountConventionMatches(px, cam, false, true);

                int best = 0;
                for (int i = 1; i < 4; i++)
                {
                    if (m[i] > m[best])
                    {
                        best = i;
                    }
                }

                string verdict;
                if (m[best] > Res * 0.55f)
                {
                    verdict = "MATCH: " + names[best] +
                              " explains the capture (rays " +
                              (best < 2 ? "use the fixed convention" : "still use the raw convention") +
                              "; readback rows " + (best % 2 == 0 ? "forward" : "reversed") + ").";
                }
                else
                {
                    verdict = "NO MATCH (best " + names[best] + " = " + m[best] + "/" + Res +
                              ") - capture is not a plain raymarch; dominant colors follow.";
                }

                Debug.Log($"[VoxelFlipProbe] VERDICT: {verdict}");
                Debug.Log($"[VoxelFlipProbe] matches: fixedFwd={m[0]} fixedRev={m[1]} " +
                          $"rawFwd={m[2]} rawRev={m[3]} ({names[best]})");
                Debug.Log("[VoxelFlipProbe] " + DominantColors(px));
                Debug.Log("[VoxelFlipProbe] center column: " + CenterColumnTrace(px));
                File.WriteAllText(Path.Combine(OutDir, "VoxelFlipProbe.version"), Version);
                Debug.Log($"[VoxelFlipProbe] captures in {OutDir}");
            }
            catch (Exception e)
            {
                Debug.LogError("[VoxelFlipProbe] probe failed: " + e);
            }
            finally
            {
                Shader.SetGlobalFloat(DiagId, 0f);
                // Restore the real bindings so the running scene is unaffected.
                Managers.ShaderManager.BindVoxelVolume(Render.VoxelGpuMap.Volume, Render.VoxelGpuMap.HeightMap);
                Managers.ShaderManager.BindVoxelFaceTiles(Render.VoxelFaceBaker.FaceTiles);
                if (cam != null)
                {
                    UnityEngine.Object.DestroyImmediate(cam.gameObject);
                }
                if (rt != null)
                {
                    rt.Release();
                    UnityEngine.Object.DestroyImmediate(rt);
                }
                if (volume != null)
                {
                    UnityEngine.Object.DestroyImmediate(volume);
                }
                if (atlas != null)
                {
                    UnityEngine.Object.DestroyImmediate(atlas);
                }
            }
        }

        /// <summary>R8 volume: white block type 1 at y=0, red block type 2 at y=2.</summary>
        private static Texture3D BuildProbeVolume()
        {
            var data = new byte[8 * 32 * 8];
            for (int z = (int)A0.z; z < (int)A1.z; z++)
            {
                for (int x = (int)A0.x; x < (int)A1.x; x++)
                {
                    data[Render.VoxelGpuMap.ToIndex(x, 0, z)] = 1;
                    data[Render.VoxelGpuMap.ToIndex(x, 2, z)] = 2;
                }
            }
            var volume = new Texture3D(
                Render.VoxelGpuMap.ChunkWidth, Render.VoxelGpuMap.ChunkHeight,
                Render.VoxelGpuMap.ChunkDepth, UnityEngine.Experimental.Rendering.GraphicsFormat.R8_UNorm,
                TextureCreationFlags.None)
            {
                name = "VoxelFlipProbeVolume",
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp
            };
            volume.SetPixelData(data, 0);
            volume.Apply(false, true);
            return volume;
        }

        /// <summary>12 layers: type 1 = white, type 2 = red.</summary>
        private static Texture2DArray BuildProbeAtlas()
        {
            var atlas = new Texture2DArray(16, 16, 12, TextureFormat.ARGB32, false)
            {
                name = "VoxelFlipProbeAtlas",
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp
            };
            var white = Color.white;
            var red = new Color32(255, 0, 0, 255);
            for (int layer = 0; layer < 12; layer++)
            {
                var px = new Color32[16 * 16];
                for (int i = 0; i < px.Length; i++)
                {
                    px[i] = layer < 6 ? white : red;
                }
                atlas.SetPixels32(px, layer);
            }
            atlas.Apply(false, false);
            return atlas;
        }

        /// <summary>
        /// Simulates the shader per pixel column x=Res/2: same NDC math, same
        /// flipped GPU projection, same inverse-view rotation, then a CPU
        /// ray-box test against the two probe blocks. Counts rows whose
        /// expected color matches the captured pixel.
        /// </summary>
        private static int CountConventionMatches(Color32[] px, Camera cam, bool fixedConvention, bool reverseRows)
        {
            Matrix4x4 projGpu = GL.GetGPUProjectionMatrix(cam.projectionMatrix, true);
            Quaternion camRot = cam.transform.rotation;
            Vector3 camPos = cam.transform.position;
            bool uvStartsAtTop = SystemInfo.graphicsUVStartsAtTop;

            int matches = 0;
            for (int r = 0; r < Res; r++)
            {
                int svRow = reverseRows ? Res - 1 - r : r;
                // Fixed convention (GetNormalizedScreenSpaceUV): flip on UVSAST
                // platforms; raw convention: track SV_Position directly.
                float uvY = fixedConvention
                    ? (uvStartsAtTop ? 1f - svRow / (float)Res : svRow / (float)Res)
                    : svRow / (float)Res;
                float ndcX = 2f * (Res / 2 + 0.5f) / Res - 1f;
                float ndcY = 2f * uvY - 1f;
                Vector3 viewDir = new Vector3(
                    ndcX / projGpu.m00,
                    ndcY / projGpu.m11,
                    -1f);
                viewDir.Normalize();
                Vector3 dir = camRot * viewDir;
                dir.Normalize();

                Color32 expected = RayBox(px, camPos, dir);
                Color32 actual = px[r * Res + Res / 2];
                if (Same(expected, actual))
                {
                    matches++;
                }
            }
            return matches;
        }

        /// <summary>Top 5 captured colors with pixel counts (6-bit quantized keys).</summary>
        private static string DominantColors(Color32[] px)
        {
            var counts = new Dictionary<int, int>();
            for (int i = 0; i < px.Length; i++)
            {
                Color32 c = px[i];
                int key = ((c.r >> 2) << 12) | ((c.g >> 2) << 6) | (c.b >> 2);
                counts.TryGetValue(key, out int n);
                counts[key] = n + 1;
            }
            var top = new List<KeyValuePair<int, int>>(counts);
            top.Sort((a, b) => b.Value.CompareTo(a.Value));
            var parts = new List<string>(5);
            for (int i = 0; i < 5 && i < top.Count; i++)
            {
                int k = top[i].Key;
                int r = ((k >> 12) & 63) * 4 + 2;
                int g = ((k >> 6) & 63) * 4 + 2;
                int b = (k & 63) * 4 + 2;
                parts.Add($"({r},{g},{b})x{top[i].Value}");
            }
            return "dominant colors: " + string.Join(" ", parts);
        }

        /// <summary>Center-column color trace, one character per 4 rows
        /// (W=white R=red M=magenta C=cyan-blue O=other).</summary>
        private static string CenterColumnTrace(Color32[] px)
        {
            var sb = new System.Text.StringBuilder(64);
            for (int r = 0; r < Res; r += 4)
            {
                Color32 c = px[r * Res + Res / 2];
                char ch = 'O';
                if (c.r > 200 && c.g > 200 && c.b > 200) ch = 'W';
                else if (c.r > 200 && c.g < 100 && c.b < 100) ch = 'R';
                else if (c.r > 200 && c.b > 200 && c.g < 100) ch = 'M';
                else if (c.b > 100 && c.g > 100 && c.r < 100) ch = 'C';
                sb.Append(ch);
            }
            return sb.ToString();
        }

        private static Color32 RayBox(Color32[] px, Vector3 ori, Vector3 dir)
        {
            if (HitBox(ori, dir, A0, A1))
            {
                return new Color32(255, 255, 255, 255);
            }
            if (HitBox(ori, dir, B0, B1))
            {
                return new Color32(255, 0, 0, 255);
            }
            return new Color32(255, 0, 255, 255); // miss: magenta matches the clear color
        }

        private static bool HitBox(Vector3 ori, Vector3 dir, Vector3 b0, Vector3 b1)
        {
            float tMin = 0f, tMax = float.MaxValue;
            for (int axis = 0; axis < 3; axis++)
            {
                float o = ori[axis], d = dir[axis];
                if (Mathf.Abs(d) < 1e-6f)
                {
                    if (o < b0[axis] || o > b1[axis])
                    {
                        return false;
                    }
                    continue;
                }
                float t1 = (b0[axis] - o) / d;
                float t2 = (b1[axis] - o) / d;
                if (t1 > t2)
                {
                    (t1, t2) = (t2, t1);
                }
                tMin = Mathf.Max(tMin, t1);
                tMax = Mathf.Min(tMax, t2);
                if (tMin > tMax)
                {
                    return false;
                }
            }
            return tMax > 0f;
        }

        private static bool Same(Color32 a, Color32 b)
        {
            return Mathf.Abs(a.r - b.r) < 60 && Mathf.Abs(a.g - b.g) < 60 && Mathf.Abs(a.b - b.b) < 60;
        }

        private static bool IsRaytraceFeatureActive()
        {
            string[] guids = AssetDatabase.FindAssets("t:ScriptableRendererData");
            foreach (string guid in guids)
            {
                string path = AssetDatabase.GUIDToAssetPath(guid);
                var rendererData = AssetDatabase.LoadAssetAtPath<ScriptableRendererData>(path);
                if (rendererData == null)
                {
                    continue;
                }
                foreach (var feature in rendererData.rendererFeatures)
                {
                    if (feature is Render.VoxelRaytraceFeature && feature.isActive)
                    {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
