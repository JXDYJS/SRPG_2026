using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using GamePlay.Units;

namespace Render
{
    /// <summary>
    /// Bakes every registered unit into its slot of ONE packed 3D voxel volume
    /// once per frame via three-axis orthographic surface voxelization (pixel
    /// shader writes RWTexture3D; shader: "Custom/VoxelUnitWrite").
    ///
    /// Slot identity == UnitObjectIdRegistry objID == outline system id.
    /// Slot layout: X-linear, slot X offset = (objID-1) * GridResX.
    ///
    /// Also maintains _UnitGrids, a GPU "roster" indexed by objID holding the
    /// continuous world position of every unit's grid box, so shaders can find
    /// and intersect each unit's sub-grid (see VoxelRaytrace.hlsl).
    ///
    /// Vertical slice: canonical space is still world-axis-aligned around the
    /// unit position (yaw stored but unused); per-unit local grids come later.
    /// </summary>
    public class VoxelUnitBakerFeature : ScriptableRendererFeature
    {
        public static VoxelUnitBakerFeature Instance { get; private set; }

        internal const int GridResX = 16;
        internal const int GridResY = 48;
        internal const int GridResZ = 16;
        internal const int MaxSlots = 256;                 // one slot per possible objID
        internal static readonly Vector3 GridWorldSize = new Vector3(2f, 6f, 2f);
        internal static readonly int PackedWidth = GridResX * MaxSlots; // 4096

        static readonly int k_CanonicalToClipId = Shader.PropertyToID("_CanonicalToClip");
        static readonly int k_GridResId = Shader.PropertyToID("_GridRes");
        static readonly int k_GridWorldSizeId = Shader.PropertyToID("_GridWorldSize");
        static readonly int k_SlotOffsetXId = Shader.PropertyToID("_SlotOffsetX");
        static readonly int k_GridOriginId = Shader.PropertyToID("_GridOrigin");
        static readonly int k_PackedVolumeId = Shader.PropertyToID("_PackedUnitVolume");
        static readonly int k_UnitGridsId = Shader.PropertyToID("_UnitGrids");
        static readonly int k_UnitScanParamsId = Shader.PropertyToID("_UnitScanParams");
        static readonly int k_UnitAlbedoMapId = Shader.PropertyToID("_UnitAlbedoMap");
        static readonly int k_UnitAlbedoColorId = Shader.PropertyToID("_UnitAlbedoColor");
        static readonly int k_UnitAlbedoMapStId = Shader.PropertyToID("_UnitAlbedoMap_ST");

        /// <summary>
        /// GPU roster entry, 48 bytes (3x float4) to stay alignment-safe.
        /// Mirrored by struct UnitGridData in VoxelRaytrace.hlsl.
        /// </summary>
        public struct UnitGpuData
        {
            public Vector4 originYaw; // xyz = world min corner of the grid box, w = yaw (reserved)
            public Vector4 sizeSlot;  // xyz = grid world size, w = packed volume X offset
            public Vector4 flags;     // x = active
        }

        [System.Serializable]
        public class Settings
        {
            public Shader VoxelWriteShader;
        }

        public Settings settings = new Settings();

        class UnitEntry
        {
            public Renderer[] renderers;
            public Vector3 bakeCenter; // world center of the voxel grid box
            public bool debugLogged;
        }

        BakePass m_Pass;
        Material m_Material;
        bool m_MaterialMissingLogged;
        Texture3D m_BlankTemplate;
        RenderTexture m_PackedVolume;
        GraphicsBuffer m_GridsBuffer;
        readonly UnitGpuData[] m_GridData = new UnitGpuData[MaxSlots];
        readonly Dictionary<int, UnitEntry> m_Entries = new Dictionary<int, UnitEntry>();
        int m_LastBakeFrame = -1;

        public RenderTexture PackedVolume => m_PackedVolume;
        public GraphicsBuffer GridsBuffer => m_GridsBuffer;

        public override void Create()
        {
            m_Pass = new BakePass(this);
            m_Pass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
            Instance = this;

            // Create GPU resources and publish their bindings eagerly: consuming
            // shaders (VoxelRaytrace.hlsl) must never see them unbound, whatever
            // order features execute in.
            EnsureMaterial();
            EnsureResources();
            m_GridsBuffer.SetData(m_GridData);
            Shader.SetGlobalTexture(k_PackedVolumeId, m_PackedVolume);
            Shader.SetGlobalBuffer(k_UnitGridsId, m_GridsBuffer);
            Shader.SetGlobalVector(k_UnitScanParamsId, Vector4.zero);
        }

        void EnsureMaterial()
        {
            if (m_Material != null) return;

            var shader = settings.VoxelWriteShader != null
                ? settings.VoxelWriteShader
                : Shader.Find("Custom/VoxelUnitWrite");
            if (shader == null)
            {
                if (!m_MaterialMissingLogged)
                {
                    Debug.LogWarning("[VoxelUnitBaker] shader 'Custom/VoxelUnitWrite' not found; unit voxel baking disabled.");
                    m_MaterialMissingLogged = true;
                }
                return;
            }
            m_Material = new Material(shader) { name = "VoxelUnitWriteRuntime" };
        }

        void EnsureResources()
        {
            if (m_PackedVolume == null)
            {
                m_PackedVolume = new RenderTexture(PackedWidth, GridResY, 0, RenderTextureFormat.ARGB32)
                {
                    name = "UnitVoxelPackedVolume",
                    dimension = TextureDimension.Tex3D,
                    volumeDepth = GridResZ,
                    enableRandomWrite = true,
                    filterMode = FilterMode.Point,
                    wrapMode = TextureWrapMode.Clamp,
                };
                m_PackedVolume.Create();
            }

            if (m_BlankTemplate == null)
            {
                // CPU-zeroed source texture used to GPU-clear the packed volume.
                m_BlankTemplate = new Texture3D(PackedWidth, GridResY, GridResZ,
                    TextureFormat.RGBA32, false)
                {
                    name = "UnitVoxelVolume_Blank",
                    filterMode = FilterMode.Point,
                    wrapMode = TextureWrapMode.Clamp,
                };
                m_BlankTemplate.SetPixels(new Color[PackedWidth * GridResY * GridResZ]);
                m_BlankTemplate.Apply(false, true);
            }

            if (m_GridsBuffer == null)
            {
                // 48-byte stride mirrors UnitGpuData (3 x float4) exactly.
                m_GridsBuffer = new GraphicsBuffer(GraphicsBuffer.Target.Structured,
                    MaxSlots, 3 * 16);
            }
        }

        void EnsureEntries()
        {
            foreach (int id in UnitObjectIdRegistry.ActiveIds)
            {
                if (m_Entries.ContainsKey(id)) continue;

                if (!UnitObjectIdRegistry.TryGetUnit(id, out var unit) || unit == null) continue;

                m_Entries[id] = new UnitEntry
                {
                    renderers = CollectRenderers(unit),
                    bakeCenter = unit.transform.position + Vector3.up * (GridWorldSize.y * 0.5f),
                };
            }
        }

        static Renderer[] CollectRenderers(MapUnit unit)
        {
            var all = unit.GetComponentsInChildren<Renderer>(true);
            var list = new List<Renderer>();
            foreach (var r in all)
            {
                if (r is SkinnedMeshRenderer || r is MeshRenderer) list.Add(r);
            }
            return list.ToArray();
        }

        void PruneReleased()
        {
            List<int> stale = null;
            foreach (var kv in m_Entries)
            {
                if (!UnitObjectIdRegistry.IsRegistered(kv.Key))
                {
                    (stale ??= new List<int>()).Add(kv.Key);
                }
            }
            if (stale == null) return;
            foreach (int id in stale)
            {
                m_Entries.Remove(id);
            }
        }

        /// <summary>
        /// Rebuilds the GPU roster from the registry: continuous positions +
        /// slot offsets. Returns the highest live objID (= scan bound).
        /// </summary>
        int UpdateGridData()
        {
            System.Array.Clear(m_GridData, 0, m_GridData.Length);
            int maxId = 0;
            Vector3 half = GridWorldSize * 0.5f;
            foreach (var kv in m_Entries)
            {
                int id = kv.Key;
                if (id < 1 || id > MaxSlots || !UnitObjectIdRegistry.TryGetUnit(id, out var unit) || unit == null)
                {
                    continue;
                }
                if (!unit.gameObject.activeInHierarchy) continue;

                // Center the grid box on the union of renderer bounds: for skinned
                // meshes the renderer transform can diverge from the visual mesh,
                // and bounds are the authoritative skinned location.
                Vector3 center = ComputeBoundsCenter(kv.Value.renderers, unit.transform.position);
                kv.Value.bakeCenter = center;

                Vector3 pos = center;
                // Min corner on ALL axes so the roster box == writer/reader box
                // ([bakeCenter-half, bakeCenter+half]).
                Vector3 origin = pos - half;
                m_GridData[id] = new UnitGpuData
                {
                    originYaw = new Vector4(origin.x, origin.y, origin.z, 0f),
                    sizeSlot = new Vector4(GridWorldSize.x, GridWorldSize.y, GridWorldSize.z,
                                           (id - 1) * GridResX),
                    flags = new Vector4(1f, 0f, 0f, 0f),
                };
                maxId = Mathf.Max(maxId, id);
            }

            m_GridsBuffer.SetData(m_GridData);
            return maxId;
        }

        static Vector3 ComputeBoundsCenter(Renderer[] renderers, Vector3 fallback)
        {
            Bounds? acc = null;
            foreach (var r in renderers)
            {
                if (r == null || !r.enabled || !r.gameObject.activeInHierarchy) continue;
                var b = r.bounds;
                if (b.extents == Vector3.zero) continue; // never-yet-skinned
                acc = acc.HasValue ? Union(acc.Value, b) : b;
            }
            return acc.HasValue ? acc.Value.center : fallback + Vector3.up * (GridWorldSize.y * 0.5f);
        }

        static Bounds Union(Bounds a, Bounds b)
        {
            a.Encapsulate(b.min);
            a.Encapsulate(b.max);
            return a;
        }

        void Bake(CommandBuffer cmd, int objID, UnitEntry entry)
        {
            if (entry.renderers == null || entry.renderers.Length == 0) return;
            if (!UnitObjectIdRegistry.TryGetUnit(objID, out var unit) || unit == null) return;
            if (!unit.gameObject.activeInHierarchy) return;

            // Vertical slice: canonical space == world axis-aligned box around
            // the skinned mesh's real location.
            Vector3 center = entry.bakeCenter;
            Vector3 half = GridWorldSize * 0.5f;
            float pad = GridWorldSize.x / GridResX; // one voxel of margin against clipping
            float px = half.x + pad, py = half.y + pad, pz = half.z + pad;

            // Same min corner the roster reports: writer and reader must agree
            // on where this unit's box sits in the world.
            cmd.SetGlobalVector(k_GridOriginId, center - half);
            cmd.SetGlobalFloat(k_SlotOffsetXId, (objID - 1) * GridResX);
            Material mat = m_Material;

            // Sweeps work purely in canonical space [0,size]: the writer feeds
            // corner-relative coords, so the virtual camera must look at the
            // box center measured from the SAME origin (= half).
            cmd.SetGlobalMatrix(k_CanonicalToClipId,
                MakeSweep(half, Vector3.up * py, Vector3.forward, new Vector2(px, pz), 2f * py));
            DrawAll(cmd, entry, mat);

            // +Z sweep: records front/back facing surfaces.
            cmd.SetGlobalMatrix(k_CanonicalToClipId,
                MakeSweep(half, Vector3.forward * pz, Vector3.up, new Vector2(px, py), 2f * pz));
            DrawAll(cmd, entry, mat);

            // +X sweep: records left/right facing surfaces.
            cmd.SetGlobalMatrix(k_CanonicalToClipId,
                MakeSweep(half, Vector3.right * px, Vector3.up, new Vector2(pz, py), 2f * px));
            DrawAll(cmd, entry, mat);

#if UNITY_EDITOR
            if (!entry.debugLogged)
            {
                entry.debugLogged = true;
                var r0 = entry.renderers[0];
                Debug.Log($"[VoxelUnitBaker] id={objID} unit='{unit.name}' root={unit.transform.position:F2} " +
                          $"bakeCenter={center:F2} renderer='{r0.name}' rendererPos={r0.transform.position:F2} " +
                          $"boundsCenter={r0.bounds.center:F2} boundsExtents={r0.bounds.extents:F2}");
            }
#endif
        }

        void DrawAll(CommandBuffer cmd, UnitEntry entry, Material material)
        {
            foreach (var r in entry.renderers)
            {
                if (r == null || !r.enabled) continue;

                // CommandBuffer.DrawRenderer takes no MaterialPropertyBlock, so
                // the writer's albedo props are CB-local globals set right
                // before the draw. Fallbacks mirror URP Lit (_BaseMap/_BaseColor)
                // and built-in Lit (_MainTex/_Color); texture-less materials
                // stay white. The renderer's own MPB is never touched: taunt /
                // hit-tint blocks would otherwise be overwritten.
                var sm = r.sharedMaterial;
                Texture2D tex = null;
                Color col = Color.white;
                Vector4 st = new Vector4(1f, 1f, 0f, 0f);
                if (sm != null)
                {
                    tex = sm.HasProperty("_BaseMap") ? sm.GetTexture("_BaseMap") as Texture2D
                        : sm.HasProperty("_MainTex") ? sm.GetTexture("_MainTex") as Texture2D
                        : null;
                    col = sm.HasProperty("_BaseColor") ? sm.GetColor("_BaseColor")
                        : sm.HasProperty("_Color") ? sm.GetColor("_Color")
                        : Color.white;
                    st = sm.HasProperty("_BaseMap_ST") ? sm.GetVector("_BaseMap_ST")
                       : sm.HasProperty("_MainTex_ST") ? sm.GetVector("_MainTex_ST")
                       : new Vector4(1f, 1f, 0f, 0f);
                }
                cmd.SetGlobalTexture(k_UnitAlbedoMapId, tex != null ? tex : Texture2D.whiteTexture);
                cmd.SetGlobalColor(k_UnitAlbedoColorId, col);
                cmd.SetGlobalVector(k_UnitAlbedoMapStId, st);
                cmd.DrawRenderer(r, material);
            }
        }

        static Matrix4x4 MakeSweep(Vector3 center, Vector3 eyeOffset, Vector3 up,
            Vector2 rectHalf, float span)
        {
            // Matrix4x4.LookAt returns the camera WORLD matrix (TRS(eye, rot, 1)),
            // NOT a view matrix. Per Unity docs, a view matrix needs
            // scale(1,1,-1) * LookAt.inverse; otherwise every vertex is offset
            // by +eye and lands outside NDC (nothing rasterizes).
            var look = Matrix4x4.LookAt(center + eyeOffset, center, up);
            var mirrorZ = Matrix4x4.TRS(Vector3.zero, Quaternion.identity, new Vector3(1f, 1f, -1f));
            var view = mirrorZ * look.inverse;
            var proj = Matrix4x4.Ortho(-rectHalf.x, rectHalf.x, -rectHalf.y, rectHalf.y, 0.01f, span);
            return proj * view;
        }

        class BakePass : ScriptableRenderPass
        {
            VoxelUnitBakerFeature m_Feature;

            public BakePass(VoxelUnitBakerFeature feature)
            {
                m_Feature = feature;
                profilingSampler = new ProfilingSampler("VoxelizeUnits");
            }

            public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
            {
                m_Feature.EnsureMaterial();
                if (m_Feature.m_Material == null) return;
                // Bake once per frame, not once per camera.
                if (m_Feature.m_LastBakeFrame == Time.frameCount) return;
                m_Feature.m_LastBakeFrame = Time.frameCount;

                m_Feature.PruneReleased();
                m_Feature.EnsureEntries();

                int maxId = m_Feature.UpdateGridData();

                // Re-publish bindings (positions changed; keeps other cameras covered).
                Shader.SetGlobalTexture(k_PackedVolumeId, m_Feature.m_PackedVolume);
                Shader.SetGlobalBuffer(k_UnitGridsId, m_Feature.m_GridsBuffer);
                Shader.SetGlobalVector(k_UnitScanParamsId, new Vector4(maxId, 0f, 0f, 0f));

                var cmd = CommandBufferPool.Get("VoxelizeUnits");
                using (new ProfilingScope(cmd, profilingSampler))
                {
                    // Constant grid parameters for the voxel write shader.
                    cmd.SetGlobalVector(k_GridResId, new Vector3(GridResX, GridResY, GridResZ));
                    cmd.SetGlobalVector(k_GridWorldSizeId, GridWorldSize);

                    // Clear last frame's voxels, then rebind the UAV once for all units.
                    cmd.CopyTexture(m_Feature.m_BlankTemplate, m_Feature.m_PackedVolume);
                    cmd.SetRandomWriteTarget(1, m_Feature.m_PackedVolume);

                    foreach (var kv in m_Feature.m_Entries)
                    {
                        m_Feature.Bake(cmd, kv.Key, kv.Value);
                    }
                    cmd.ClearRandomWriteTargets();
                }
                context.ExecuteCommandBuffer(cmd);
                CommandBufferPool.Release(cmd);
            }
        }

        public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
        {
            if (renderingData.cameraData.cameraType != CameraType.Game) return;
            renderer.EnqueuePass(m_Pass);
        }

        protected override void Dispose(bool disposing)
        {
            m_Entries.Clear();
            // CoreUtils.Destroy works in both edit and play mode contexts.
            if (m_PackedVolume != null) CoreUtils.Destroy(m_PackedVolume);
            if (m_BlankTemplate != null) CoreUtils.Destroy(m_BlankTemplate);
            m_GridsBuffer?.Release();
            m_GridsBuffer = null;
            if (m_Material != null) CoreUtils.Destroy(m_Material);
            // Stop shaders from scanning a dead roster.
            Shader.SetGlobalVector(k_UnitScanParamsId, Vector4.zero);
            Instance = null;
        }
    }
}
