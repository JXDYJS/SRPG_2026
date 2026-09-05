using System;
using System.Collections.Generic;
using System.IO;
using Core.Data;
using UnityEngine;
using UnityEngine.AddressableAssets;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace Render
{
    /// <summary>
    /// Bakes every block type's 6 faces (16x16 px each) into a single Texture2DArray.
    /// Layer index = typeIndex * 6 + face (0=+Y 1=-Y 2=+X 3=-X 4=+Z 5=-Z).
    /// Pure albedo: renders with an unlit material, no lighting / MSAA / post FX.
    /// Startup-only; block count is small so it is baked once into memory.
    /// </summary>
    public static class VoxelFaceBaker
    {
        public const int FaceRes = 16;

        /// <summary>Layer used to isolate baked instances from the scene during capture.</summary>
        private const int BakeLayer = 30;

        /// <summary>Baked face tiles. layer = typeIndex * 6 + face.</summary>
        public static Texture2DArray FaceTiles { get; private set; }

        /// <summary>configId -> first layer index (typeIndex * 6).</summary>
        public static Dictionary<string, int> TypeLayerBase { get; private set; }

        /// <summary>Map Global.BlockType -> coarse voxel type id (0..15).</summary>
        public static Dictionary<Global.BlockType, byte> VoxelTypeId { get; private set; }

        private static Camera _bakeCam;
        private static RenderTexture _rt;

        /// <summary>Loads all BlockConfigs' prefabs and bakes the 6 faces of each into memory.</summary>
        public static void BakeAll()
        {
            if (FaceTiles != null)
            {
                Debug.Log("[VoxelFaceBaker] Already baked, skipping.");
                return;
            }

            BakeAllInternal();
        }

        /// <summary>Clears any cached bake and re-bakes from scratch.</summary>
        public static void ForceRebake()
        {
            // DestroyImmediate: menu-triggered bakes cannot wait for the
            // end-of-frame deferred Destroy, or the re-bake would keep
            // skipping on the "already baked" guard below.
            if (FaceTiles != null)
            {
                UnityEngine.Object.DestroyImmediate(FaceTiles);
                FaceTiles = null;
            }
            TypeLayerBase = null;
            VoxelTypeId = null;
            // Unbind first: a midway failure must never leave the old atlas
            // visible to shaders.
            Managers.ShaderManager.BindVoxelFaceTiles(null);
            BakeAllInternal();
        }

        private static void BakeAllInternal()
        {
            if (FaceTiles != null)
            {
                Debug.Log("[VoxelFaceBaker] Already baked, skipping.");
                return;
            }

            var configs = Data.Table.BlockConfigs;
            if (configs == null || configs.Count == 0)
            {
                Debug.LogError("[VoxelFaceBaker] No BlockConfigs found.");
                return;
            }

            InitResources();

            int typeCount = configs.Count;
            FaceTiles = new Texture2DArray(FaceRes, FaceRes, typeCount * 6, TextureFormat.ARGB32, false)
            {
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp,
                name = "VoxelFaceTiles"
            };

            TypeLayerBase = new Dictionary<string, int>(typeCount);
            VoxelTypeId = new Dictionary<Global.BlockType, byte>(typeCount);

            int typeIndex = 0;
            foreach (var kvp in configs)
            {
                string configId = kvp.Key;
                TableData.BlockConfig cfg = kvp.Value;

                BakeOneType(configId, cfg, typeIndex);
                typeIndex++;
            }

            FaceTiles.Apply(false, false);
            ReleaseResources();

            Debug.Log($"[VoxelFaceBaker] Baked {typeCount} block types -> {typeCount * 6} layers ({FaceTiles.width}x{FaceTiles.height} tex2darray).");

            // Expose the atlas to all shaders: layer = (typeId-1)*6 + face.
            Managers.ShaderManager.BindVoxelFaceTiles(FaceTiles);
        }

        private static readonly string[] FaceNames = { "+Y", "-Y", "+X", "-X", "+Z", "-Z" };

        /// <summary>
        /// Writes every baked face tile to disk as (configId)_(face).png for manual inspection.
        /// Call with an absolute directory, e.g. Application.temporaryCachePath.
        /// Returns the directory used, or null if nothing was baked.
        /// </summary>
        public static string DumpTilesToPng(string dir = null)
        {
            if (FaceTiles == null || TypeLayerBase == null)
            {
                Debug.LogError("[VoxelFaceBaker] Nothing baked yet.");
                return null;
            }

            dir ??= Application.temporaryCachePath;
            Directory.CreateDirectory(dir);

            foreach (var kvp in TypeLayerBase)
            {
                string configId = kvp.Key;
                int layerBase = kvp.Value;
                for (int face = 0; face < 6; face++)
                {
                    var tex = new Texture2D(FaceRes, FaceRes, TextureFormat.RGBA32, false);
                    tex.SetPixels32(FaceTiles.GetPixels32(layerBase + face));
                    tex.Apply();
                    byte[] png = tex.EncodeToPNG();
                    string fname = $"{configId}_{FaceNames[face].Replace("+", "p").Replace("-", "m")}.png";
                    File.WriteAllBytes(Path.Combine(dir, fname), png);
                    UnityEngine.Object.Destroy(tex);
                }
            }

            Debug.Log($"[VoxelFaceBaker] Face tiles dumped to {dir}");
            return dir;
        }

        /// <summary>
        /// Prints per-type per-face average color and coverage right after baking
        /// so correctness can be judged at a glance (grass +Y must be green,
        /// slabs must show ~50% side coverage, solid blocks 100% all faces).
        /// </summary>
        public static void LogBakeStats()
        {
            foreach (var kvp in TypeLayerBase)
            {
                string configId = kvp.Key;
                int layerBase = kvp.Value;
                Debug.Log($"[VoxelFaceBaker] === {configId} ===");
                for (int face = 0; face < 6; face++)
                {
                    Color32[] px = FaceTiles.GetPixels32(layerBase + face);
                    long r = 0, g = 0, b = 0;
                    int solid = 0;
                    foreach (Color32 c in px)
                    {
                        if (c.a < 8) continue;
                        r += c.r; g += c.g; b += c.b;
                        solid++;
                    }
                    int n = Mathf.Max(solid, 1);
                    float cov = (float)solid / px.Length;
                    Debug.Log(
                        $"[VoxelFaceBaker]   {FaceNames[face]}: avg=({r / n},{g / n},{b / n}) " +
                        (solid == 0 ? "EMPTY" : $"coverage={cov:P0}"));
                }
            }
        }

        private static void BakeOneType(string configId, TableData.BlockConfig cfg, int typeIndex)
        {
            if (string.IsNullOrEmpty(cfg.prefabAddress))
            {
                Debug.LogWarning($"[VoxelFaceBaker] '{configId}' has no prefabAddress, skipped.");
                return;
            }

            GameObject prefab = null;
            try
            {
                var handle = Addressables.LoadAssetAsync<GameObject>(cfg.prefabAddress);
                prefab = handle.WaitForCompletion();
            }
            catch (Exception e)
            {
                Debug.LogError($"[VoxelFaceBaker] Failed to load prefab '{cfg.prefabAddress}': {e.Message}");
                return;
            }

            if (prefab == null)
            {
                Debug.LogError($"[VoxelFaceBaker] Prefab '{cfg.prefabAddress}' is null.");
                return;
            }

            int layerBase = typeIndex * 6;
            TypeLayerBase[configId] = layerBase;
            VoxelTypeId[cfg.blockType] = (byte)(typeIndex + 1); // 0 = air, 1..15 = types

            GameObject inst = UnityEngine.Object.Instantiate(prefab);
            inst.hideFlags = HideFlags.HideAndDontSave;

            CenterAtOrigin(inst);
            // Meshes that do not fill their cell footprint (the slab FBX is
            // only 0.5 deep) would bake a content band narrower than the cell;
            // shaders sample with frac of the cell position and rays would cut
            // out through the missing half. Scale to the logical cell size.
            NormalizeToCell(inst, cfg);
            SetLayerRecursive(inst, BakeLayer);
            ReplaceWithUnlit(inst);

            Vector3[] dirs =
            {
                Vector3.up,      // 0: +Y
                Vector3.down,    // 1: -Y
                Vector3.right,   // 2: +X
                Vector3.left,    // 3: -X
                Vector3.forward, // 4: +Z
                Vector3.back     // 5: -Z
            };

            for (int face = 0; face < 6; face++)
            {
                faceIndex = face;
                RenderFace(inst, dirs[face], FaceTiles, layerBase + face);
            }

            // The bake camera renders the whole layer-30 mask. Deferred
            // Destroy() only processes at end of frame, which may never come
            // while executing from a menu item, so old instances would stack at
            // the origin and composite into later types' faces. Hide and
            // release the instance immediately instead.
            inst.SetActive(false);
            UnityEngine.Object.DestroyImmediate(inst);
        }

        /// <summary>
        /// Normalizes the instance for orthographic capture.
        /// Project convention: every model's transform anchor sits at the center
        /// of the block's bottom plane. So a zeroed root puts the block bottom
        /// centered on the world origin, matching the 6 ortho views.
        /// Child offsets (scene-snapshot prefabs) are absorbed by recentering the
        /// combined renderer bounds instead of trusting the root.
        /// </summary>
        private static void CenterAtOrigin(GameObject inst)
        {
            Renderer[] renderers = inst.GetComponentsInChildren<Renderer>(true);
            if (renderers.Length == 0)
            {
                inst.transform.SetPositionAndRotation(Vector3.zero, Quaternion.identity);
                return;
            }

            Bounds b = renderers[0].bounds;
            for (int i = 1; i < renderers.Length; i++)
            {
                if (renderers[i] != null)
                {
                    b.Encapsulate(renderers[i].bounds);
                }
            }

            // Block bottom-center to world origin, sizes anchored by convention.
            inst.transform.position -= b.center - new Vector3(0f, 0.5f * b.size.y, 0f);
            inst.transform.rotation = Quaternion.identity;
        }

        /// <summary>World-space bounds of the instance's combined renderers.</summary>
        private static Bounds GetRenderBounds(GameObject inst)
        {
            Renderer[] renderers = inst.GetComponentsInChildren<Renderer>(true);
            Bounds b = renderers.Length > 0 ? renderers[0].bounds : new Bounds();
            for (int i = 1; i < renderers.Length; i++)
            {
                if (renderers[i] != null)
                {
                    b.Encapsulate(renderers[i].bounds);
                }
            }
            return b;
        }

        /// <summary>
        /// Stretches the instance so its renderer bounds match the block's
        /// x/z cell footprint (cfg cell sizes). The bake frames the voxel cell
        /// [0,1]^3 and shaders sample with frac of the cell position, so a
        /// mesh that does not fill the footprint (e.g. a 0.5-deep slab) must
        /// be stretched before capture, or rays cut out through the missing
        /// half. Y is left untouched: block height is baked into the textures
        /// (alpha masks), not the mesh. Runs after CenterAtOrigin, which
        /// zeroed the rotation, so root axes == world axes and the
        /// non-uniform scale cannot shear.
        /// </summary>
        private static void NormalizeToCell(GameObject inst, TableData.BlockConfig cfg)
        {
            Vector3 size = GetRenderBounds(inst).size;
            Vector3 s = inst.transform.localScale;
            if (size.x > 1e-4f) { s.x *= cfg.xCellSize / size.x; }
            if (size.z > 1e-4f) { s.z *= cfg.zCellSize / size.z; }
            inst.transform.localScale = s;
        }

        private static void SetLayerRecursive(GameObject go, int layer)
        {
            go.layer = layer;
            foreach (Transform child in go.transform)
            {
                SetLayerRecursive(child.gameObject, layer);
            }
        }

        private static void InitResources()
        {
            var camGo = new GameObject("_VoxelFaceBakerCam");
            camGo.hideFlags = HideFlags.HideAndDontSave;

            _bakeCam = camGo.AddComponent<Camera>();
            _bakeCam.enabled = false;   // rendered explicitly via Camera.Render() in RenderFace
            _bakeCam.orthographic = true;
            _bakeCam.orthographicSize = 0.5f;      // block spans 1 world unit
            _bakeCam.nearClipPlane = 0.05f;
            _bakeCam.farClipPlane = 4f;
            _bakeCam.clearFlags = CameraClearFlags.SolidColor;
            _bakeCam.backgroundColor = new Color(0, 0, 0, 0);
            _bakeCam.allowHDR = false;
            _bakeCam.allowMSAA = false;
            _bakeCam.allowDynamicResolution = false;
            _bakeCam.useOcclusionCulling = false;
            _bakeCam.renderingPath = RenderingPath.Forward;

            // Bake into an isolated layer so stray scene objects never leak in.
            _bakeCam.cullingMask = 1 << BakeLayer;

            // Disable URP post-processing on the bake camera when present.
            var urpData = camGo.GetComponent<UnityEngine.Rendering.Universal.UniversalAdditionalCameraData>();
            if (urpData == null)
            {
                urpData = camGo.AddComponent<UnityEngine.Rendering.Universal.UniversalAdditionalCameraData>();
            }
            urpData.renderPostProcessing = false;
            urpData.antialiasing = UnityEngine.Rendering.Universal.AntialiasingMode.None;

            _rt = new RenderTexture(FaceRes, FaceRes, 16, RenderTextureFormat.ARGB32)
            {
                filterMode = FilterMode.Point,
                name = "VoxelFaceRT"
            };
            _rt.Create();
        }

        private static void ReleaseResources()
        {
            if (_bakeCam != null)
            {
                UnityEngine.Object.Destroy(_bakeCam.gameObject);
                _bakeCam = null;
            }
            if (_rt != null)
            {
                _rt.Release();
                UnityEngine.Object.Destroy(_rt);
                _rt = null;
            }
        }

        /// <summary>
        /// Replaces every renderer material with an unlit copy that keeps the
        /// original base texture, so the bake captures pure albedo without
        /// lighting / shadow / IBL contributions.
        /// </summary>
        private static void ReplaceWithUnlit(GameObject inst)
        {
            Renderer[] renderers = inst.GetComponentsInChildren<Renderer>(true);
            if (renderers.Length == 0)
            {
                Debug.LogWarning("[VoxelFaceBaker] Prefab has no renderers, face tiles will be empty.");
                return;
            }

            // URP's unlit shader; falls back to Unlit/Texture outside URP.
            Shader unlitShader = Shader.Find("Universal Render Pipeline/Unlit");
            if (unlitShader == null)
            {
                unlitShader = Shader.Find("Unlit/Texture");
            }
            if (unlitShader == null)
            {
                Debug.LogError("[VoxelFaceBaker] No unlit shader available for baking.");
                return;
            }

            foreach (Renderer r in renderers)
            {
                r.enabled = true;
                Material[] src = r.sharedMaterials;
                if (src == null || src.Length == 0)
                {
                    r.sharedMaterial = new Material(unlitShader);
                    continue;
                }

                Material[] dst = new Material[src.Length];
                for (int i = 0; i < src.Length; i++)
                {
                    Material m = new Material(unlitShader);
                    if (src[i] != null)
                    {
                        // Copy the base texture. URP Unlit samples _BaseMap; the
                        // built-in fallback uses _MainTex, so set both. Some
                        // materials (Shader Graph) expose a texture under a
                        // generated property name, so fall back to scanning the
                        // shader's texture properties.
                        Texture2D baseTex = null;
                        if (src[i].HasProperty("_BaseMap"))
                        {
                            baseTex = src[i].GetTexture("_BaseMap") as Texture2D;
                        }
                        if (baseTex == null && src[i].HasProperty("_MainTex"))
                        {
                            baseTex = src[i].GetTexture("_MainTex") as Texture2D;
                        }
                        if (baseTex == null)
                        {
                            for (int p = 0; p < src[i].shader.GetPropertyCount(); p++)
                            {
                                if (src[i].shader.GetPropertyType(p) == UnityEngine.Rendering.ShaderPropertyType.Texture)
                                {
                                    baseTex = src[i].GetTexture(src[i].shader.GetPropertyName(p)) as Texture2D;
                                    if (baseTex != null) break;
                                }
                            }
                        }
                        if (baseTex != null)
                        {
                            m.SetTexture("_BaseMap", baseTex);
                            m.SetTexture("_MainTex", baseTex);
                        }

                        // Tint color: URP stores it in _BaseColor.
                        if (src[i].HasProperty("_BaseColor"))
                        {
                            m.SetColor("_BaseColor", src[i].GetColor("_BaseColor"));
                        }
                        else
                        {
                            m.color = src[i].color;
                        }

                        // Preserve translucency: overlay layers (e.g. grass
                        // side overlay) live in the transparent queue and must
                        // keep alpha blending, or the bake loses the overlay.
                        // Note: every URP material has a _Surface property, so
                        // it must NOT be used as the transparency test — that
                        // converted every material to transparent (SrcAlpha
                        // blend, ZWrite off), which broke the bake.
                        if (src[i].renderQueue >= 3000)
                        {
                            SetTransparent(m);
                        }
                        else if (src[i].IsKeywordEnabled("_ALPHATEST_ON"))
                        {
                            m.EnableKeyword("_ALPHATEST_ON");
                            if (src[i].HasProperty("_Cutoff"))
                            {
                                m.SetFloat("_Cutoff", src[i].GetFloat("_Cutoff"));
                            }
                        }
                    }
                    dst[i] = m;
                }
                r.sharedMaterials = dst;
            }
        }

        /// <summary>
        /// Switches a URP Unlit material into its alpha-blended transparent
        /// variant so overlay layers composite the same way as in-game.
        /// </summary>
        private static void SetTransparent(Material m)
        {
            if (m.HasProperty("_Surface"))
            {
                m.SetFloat("_Surface", 1f);   // 1 = transparent
            }
            if (m.HasProperty("_Blend"))
            {
                m.SetFloat("_Blend", 0f);     // 0 = alpha
            }
            if (m.HasProperty("_SrcBlend"))
            {
                m.SetFloat("_SrcBlend", (float)UnityEngine.Rendering.BlendMode.SrcAlpha);
            }
            if (m.HasProperty("_DstBlend"))
            {
                m.SetFloat("_DstBlend", (float)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
            }
            if (m.HasProperty("_ZWrite"))
            {
                m.SetFloat("_ZWrite", 0f);
            }
            // The shader keys its transparent surface handling off this keyword,
            // not just the _Surface float property.
            m.EnableKeyword("_SURFACE_TYPE_TRANSPARENT");
            m.renderQueue = (int)UnityEngine.Rendering.RenderQueue.Transparent;
        }

        private static void RenderFace(GameObject inst, Vector3 dir, Texture2DArray target, int layer)
        {
            // After CenterAtOrigin the block's bottom-center sits at the origin;
            // the block center is therefore (0, size.y / 2, 0). Aim the ortho
            // camera at that point so a 1x1x1 block fills the whole 16x16 frame.
            // (Models follow the bottom-center anchor convention, so the block
            // spans [-0.5,0.5] on x/z, not [0,1] as a naive (0.5,0.5,0.5) aim.)
            Renderer[] renderers = inst.GetComponentsInChildren<Renderer>(true);
            Bounds b = renderers[0].bounds;
            for (int i = 1; i < renderers.Length; i++)
            {
                b.Encapsulate(renderers[i].bounds);
            }
            // Frame the voxel CELL [0,1]^3 (anchor: bottom-center at origin),
            // not the object's bounds: shaders sample with frac of the cell
            // position, so sub-cell blocks (slabs) must be baked with their
            // content at the bottom of the tile, e.g. a 0.5-high side face
            // occupies tile rows 0..8.
            Vector3 targetPos = new Vector3(b.center.x, 0.5f, b.center.z);

            // Drive a real camera transform so Unity computes view/proj matrices
            // correctly, then render through the camera. A plain Camera.Render is
            // used instead of a CommandBuffer draw: CommandBuffer + the UR
            // unlit replacement materials produced tiles with RGB but zero alpha
            // on this platform, while a normal camera render keeps alpha intact.
            Vector3 up = Mathf.Abs(dir.y) > 0.9f ? Vector3.forward : Vector3.up;
            _bakeCam.transform.SetPositionAndRotation(targetPos + dir * 3f, Quaternion.LookRotation(-dir, up));
            _bakeCam.orthographic = true;
            _bakeCam.orthographicSize = 0.5f;
            _bakeCam.aspect = 1f;
            _bakeCam.nearClipPlane = 0.05f;
            _bakeCam.farClipPlane = 4f;
            _bakeCam.targetTexture = _rt;
            _bakeCam.Render();
            _bakeCam.targetTexture = null;

            // Read the 16x16 result into the target array layer.
            RenderTexture prevActive = RenderTexture.active;
            RenderTexture.active = _rt;
            var tmp = new Texture2D(FaceRes, FaceRes, TextureFormat.RGBA32, false);
            tmp.ReadPixels(new Rect(0, 0, FaceRes, FaceRes), 0, 0);
            tmp.Apply();
            RenderTexture.active = prevActive;

            Color32[] px = tmp.GetPixels32();
            LogTileStats(dir, faceIndex, layer, px);

            target.SetPixels32(px, layer);
            UnityEngine.Object.Destroy(tmp);
        }

        private static int faceIndex;
        private static bool firstRenderThisBatch = true;

        /// <summary>
        /// Prints where the rendered content sits inside the 16x16 tile, as a
        /// quick sanity check that the block fills the frame (expect min~0 max~15
        /// on both axes for a correct bake).
        /// </summary>
        private static void LogTileStats(Vector3 dir, int idx, int layer, Color32[] px)
        {
            int minX = 99, maxX = -1, minY = 99, maxY = -1, solid = 0;
            for (int y = 0; y < FaceRes; y++)
            {
                for (int x = 0; x < FaceRes; x++)
                {
                    if (px[y * FaceRes + x].a >= 8)
                    {
                        solid++;
                        if (x < minX) minX = x;
                        if (x > maxX) maxX = x;
                        if (y < minY) minY = y;
                        if (y > maxY) maxY = y;
                    }
                }
            }
            string name = FaceNames[idx % 6];
            Debug.Log(
                $"[VoxelFaceBaker] {name} layer {layer}: solid={solid}/{(FaceRes * FaceRes)} " +
                $"bbox=({minX},{minY})-({maxX},{maxY})");
        }
    }
}