using System;
using System.IO;
using Core.Data;
using UnityEngine;

namespace Render
{
    /// <summary>
    /// Verifies VoxelFaceBaker output. Attach to any GameObject in the launch /
    /// menu scene; exposes ContextMenu actions plus a runtime key to dump stats.
    /// Three levels: average-color stats, PNG dump, live-scene pixel compare.
    /// </summary>
    public class VoxelFaceBakeVerifier : MonoBehaviour
    {
        private const int Res = VoxelFaceBaker.FaceRes;
        private static readonly string[] FaceNames = { "+Y", "-Y", "+X", "-X", "+Z", "-Z" };

        [SerializeField] private KeyCode dumpKey = KeyCode.F9;

        /// <summary>Used by Level 3; the configId this anchor represents.</summary>
        [SerializeField] private string anchorConfigId;
        /// <summary>Used by Level 3; a placed block instance in the scene.</summary>
        [SerializeField] private Transform anchor;

        private void Update()
        {
            if (Input.GetKeyDown(dumpKey))
            {
                LogAllStats();
                DumpTilesToPng();
            }
        }

        // ================ Level 0: compare against source textures ================

        /// <summary>
        /// Compares each baked face layer against the block's own source textures
        /// (the FBX external materials). Ground truth: a baked +Y layer should
        /// match the block's top texture downsampled to 16x16, within rounding.
        /// Fills the per-type face -> source texture mapping manually.
        /// </summary>
        [ContextMenu("Log Compare Source Textures")]
        public void LogCompareSourceTextures()
        {
            var tiles = VoxelFaceBaker.FaceTiles;
            if (tiles == null)
            {
                Debug.LogError("[VoxelFaceBakeVerifier] Nothing baked yet.");
                return;
            }

            foreach (var kvp in VoxelFaceBaker.TypeLayerBase)
            {
                string configId = kvp.Key;
                int layerBase = kvp.Value;

                // Per-block-type face -> texture mapping. Extend as blocks are added.
                string[] faceTextures = ResolveFaceTextures(configId);
                if (faceTextures == null)
                {
                    Debug.LogWarning($"[VoxelFaceBakeVerifier] No reference mapping for '{configId}', skipped.");
                    continue;
                }

                Debug.Log($"[VoxelFaceBakeVerifier] === {configId} vs source textures ===");
                for (int face = 0; face < 6; face++)
                {
                    Texture2D srcTex = LoadTextureByPath(faceTextures[face]);
                    if (srcTex == null)
                    {
                        Debug.LogWarning($"[VoxelFaceBakeVerifier]   {FaceNames[face]}: cannot load '{faceTextures[face]}'");
                        continue;
                    }

                    // Downsample the source to 16x16 with the same sampling the bake used.
                    Color32[] srcPx = Downsample(srcTex, Res);
                    Color32[] baked = tiles.GetPixels32(layerBase + face);
                    float err = MeanAbsDiff(baked, srcPx);
                    Debug.Log($"[VoxelFaceBakeVerifier]   {FaceNames[face]}: vs '{srcTex.name}' meanAbsDiff={err:F4}");
                }
            }
        }

        private static string[] ResolveFaceTextures(string configId)
        {
            // Face order: +Y -Y +X -X +Z -Z. Paths are project-relative asset paths.
            switch (configId)
            {
                case "grass":
                case "grass_":
                    return new[]
                    {
                        "Assets/Block/texture/grass_block/grass_block_top.png",
                        "Assets/Block/texture/grass_block/dirt.png",
                        "Assets/Block/texture/grass_block/grass_block_side.png",
                        "Assets/Block/texture/grass_block/grass_block_side.png",
                        "Assets/Block/texture/grass_block/grass_block_side.png",
                        "Assets/Block/texture/grass_block/grass_block_side.png"
                    };
                case "dirt":
                    string dirt = "Assets/Block/texture/grass_block/dirt.png";
                    return new[] { dirt, dirt, dirt, dirt, dirt, dirt };
                default:
                    return null;
            }
        }

        private static Texture2D LoadTextureByPath(string assetPath)
        {
#if UNITY_EDITOR
            return UnityEditor.AssetDatabase.LoadAssetAtPath<Texture2D>(assetPath);
#else
            return null;
#endif
        }

        private static Color32[] Downsample(Texture2D src, int res)
        {
            // Pixels are already in a known size; sample the center texel of each
            // 16x16 block with point sampling to mirror the unlit bake.
            int w = src.width, h = src.height;
            var outPx = new Color32[res * res];
            Color32[] srcPx = src.GetPixels32();
            for (int y = 0; y < res; y++)
            {
                for (int x = 0; x < res; x++)
                {
                    int sx = Mathf.Clamp((x * w + w / (res * 2)) / res, 0, w - 1);
                    int sy = Mathf.Clamp((y * h + h / (res * 2)) / res, 0, h - 1);
                    outPx[y * res + x] = srcPx[sy * w + sx];
                }
            }
            return outPx;
        }

        // ================ Level 1: average color + coverage ================

        [ContextMenu("Log Face Stats")]
        public void LogAllStats()
        {
            var tiles = VoxelFaceBaker.FaceTiles;
            if (tiles == null || VoxelFaceBaker.TypeLayerBase == null)
            {
                Debug.LogError("[VoxelFaceBakeVerifier] Nothing baked yet. Run VoxelFaceBaker.BakeAll() first.");
                return;
            }

            foreach (var kvp in VoxelFaceBaker.TypeLayerBase)
            {
                string configId = kvp.Key;
                int layerBase = kvp.Value;
                if (!Data.Table.BlockConfigs.TryGetValue(configId, out var cfg))
                {
                    continue;
                }

                Debug.Log($"[VoxelFaceBakeVerifier] === {configId} (blockType={cfg.blockType}, layerBase={layerBase}) ===");
                for (int face = 0; face < 6; face++)
                {
                    Color32[] px = tiles.GetPixels32(layerBase + face);
                    Color32 avg = AverageColor(px);
                    float coverage = Coverage(px);
                    Debug.Log(
                        $"[VoxelFaceBakeVerifier]   {FaceNames[face]}: avg=({avg.r},{avg.g},{avg.b}) " +
                        $"coverage={coverage:P0}");
                }
            }
        }

        // ================ Level 2: export PNG for eyeball check ================

        [ContextMenu("Dump Tiles To PNG")]
        public void DumpTilesToPng()
        {
            VoxelFaceBaker.DumpTilesToPng(Path.Combine(Application.persistentDataPath, "VoxelFaceDump"));
        }

        // ================ Level 3: live scene compare ================

        /// <summary>
        /// Captures the assigned anchor (a placed block instance) with a fresh
        /// orthographic camera and diffs each face against the baked tiles of
        /// anchorConfigId. The anchor must sit at an integer grid cell with the
        /// block bottom flush on the cell floor, like normal placement.
        /// </summary>
        [ContextMenu("Compare With Scene Anchor")]
        public void CompareWithSceneAnchor()
        {
            var tiles = VoxelFaceBaker.FaceTiles;
            if (tiles == null)
            {
                Debug.LogError("[VoxelFaceBakeVerifier] Nothing baked yet.");
                return;
            }
            if (anchor == null)
            {
                Debug.LogError("[VoxelFaceBakeVerifier] Assign the 'anchor' transform (a placed block instance) in the inspector.");
                return;
            }
            if (!VoxelFaceBaker.TypeLayerBase.TryGetValue(anchorConfigId, out int layerBase))
            {
                Debug.LogError($"[VoxelFaceBakeVerifier] anchorConfigId '{anchorConfigId}' is not baked.");
                return;
            }

            var camGo = new GameObject("_VoxelVerifyCam");
            camGo.hideFlags = HideFlags.HideAndDontSave;
            var cam = camGo.AddComponent<Camera>();
            cam.orthographic = true;
            cam.orthographicSize = 0.5f;
            cam.clearFlags = CameraClearFlags.SolidColor;
            cam.backgroundColor = new Color(0, 0, 0, 0);
            cam.allowHDR = false;
            cam.allowMSAA = false;

            var rt = new RenderTexture(Res, Res, 16, RenderTextureFormat.ARGB32);
            cam.targetTexture = rt;

            // Move anchor children to a dedicated layer so the camera sees only them.
            const int isolateLayer = 30;
            SetLayerRecursive(anchor.gameObject, isolateLayer);
            cam.cullingMask = 1 << isolateLayer;

            // Match the bake's rendering conditions: unlit material, no lights.
            ReplaceWithUnlit(anchor.gameObject);

            // Rotate/translate the camera around the block center.
            // anchor is expected at the cell origin (grid slot), bottom flush;
            // block center therefore sits at +0.5 on every axis.
            Vector3 center = anchor.position + new Vector3(0.5f, 0.5f, 0.5f);
            Vector3[] dirs =
            {
                Vector3.up, Vector3.down, Vector3.right, Vector3.left, Vector3.forward, Vector3.back
            };

            float worstError = 0f;
            for (int face = 0; face < 6; face++)
            {
                Vector3 up = Mathf.Abs(dirs[face].y) > 0.9f ? Vector3.forward : Vector3.up;
                cam.transform.SetPositionAndRotation(center + dirs[face] * 3f, Quaternion.LookRotation(-dirs[face], up));

                rt.DiscardContents();
                cam.Render();
                RenderTexture.active = rt;
                var shot = new Texture2D(Res, Res, TextureFormat.RGBA32, false);
                shot.ReadPixels(new Rect(0, 0, Res, Res), 0, 0);
                shot.Apply();
                Color32[] shotPixels = shot.GetPixels32();
                Destroy(shot);
                RenderTexture.active = null;

                Color32[] baked = tiles.GetPixels32(layerBase + face);
                float err = MeanAbsDiff(baked, shotPixels);
                worstError = Mathf.Max(worstError, err);
                Debug.Log($"[VoxelFaceBakeVerifier]   {FaceNames[face]}: meanAbsDiff={err:F4} (0 = identical)");
            }

            Debug.Log($"[VoxelFaceBakeVerifier] Worst face error = {worstError:F4}. " +
                      (worstError < 0.02f
                          ? "Looks good."
                          : "Mismatch — check face orientation, centering, or material replacement."));

            cam.targetTexture = null;
            rt.Release();
            Destroy(rt);
            Destroy(camGo);
        }

        // ================ helpers ================

        private static Color32 AverageColor(Color32[] px)
        {
            long r = 0, g = 0, b = 0;
            int count = 0;
            foreach (Color32 c in px)
            {
                if (c.a < 8) continue; // skip transparent background
                r += c.r; g += c.g; b += c.b;
                count++;
            }
            if (count == 0)
            {
                return new Color32(0, 0, 0, 0);
            }
            return new Color32((byte)(r / count), (byte)(g / count), (byte)(b / count), 255);
        }

        private static float Coverage(Color32[] px)
        {
            int solid = 0;
            foreach (Color32 c in px)
            {
                if (c.a >= 8)
                {
                    solid++;
                }
            }
            return (float)solid / px.Length;
        }

        private static float MeanAbsDiff(Color32[] a, Color32[] b)
        {
            float sum = 0f;
            for (int i = 0; i < a.Length; i++)
            {
                sum += Mathf.Abs(a[i].r - b[i].r) / 255f;
                sum += Mathf.Abs(a[i].g - b[i].g) / 255f;
                sum += Mathf.Abs(a[i].b - b[i].b) / 255f;
            }
            return sum / (a.Length * 3f);
        }

        private static void SetLayerRecursive(GameObject go, int layer)
        {
            go.layer = layer;
            foreach (Transform child in go.transform)
            {
                SetLayerRecursive(child.gameObject, layer);
            }
        }

        /// <summary>
        /// Replaces all child renderers with a URP unlit material carrying the
        /// original base texture, mirroring what VoxelFaceBaker does so the live
        /// compare measures identical conditions.
        /// </summary>
        private static void ReplaceWithUnlit(GameObject root)
        {
            Shader unlitShader = Shader.Find("Universal Render Pipeline/Unlit");
            if (unlitShader == null)
            {
                unlitShader = Shader.Find("Unlit/Texture");
            }
            if (unlitShader == null)
            {
                Debug.LogError("[VoxelFaceBakeVerifier] No unlit shader available.");
                return;
            }

            foreach (Renderer r in root.GetComponentsInChildren<Renderer>(true))
            {
                Material[] src = r.sharedMaterials;
                Material[] dst = new Material[src.Length];
                for (int i = 0; i < src.Length; i++)
                {
                    Material m = new Material(unlitShader);
                    if (src[i] != null)
                    {
                        Texture2D tex = null;
                        string[] props = { "_BaseMap", "_MainTex" };
                        foreach (string p in props)
                        {
                            if (src[i].HasProperty(p))
                            {
                                tex = src[i].GetTexture(p) as Texture2D;
                                if (tex != null) break;
                            }
                        }
                        if (tex != null)
                        {
                            m.mainTexture = tex;
                        }
                        if (src[i].HasProperty("_BaseColor"))
                        {
                            m.SetColor("_BaseColor", src[i].GetColor("_BaseColor"));
                        }
                        else
                        {
                            m.color = src[i].color;
                        }
                    }
                    dst[i] = m;
                }
                r.sharedMaterials = dst;
            }
        }
    }
}