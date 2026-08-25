using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using GamePlay.Units;

namespace Render
{
    /// <summary>
    /// Bakes every registered unit into its own fine 3D voxel volume once per
    /// frame via three-axis orthographic surface voxelization: the pixel shader
    /// writes RWTexture3D directly (shader: "Custom/VoxelUnitWrite", bound as
    /// random write target u1).
    ///
    /// Slot identity == UnitObjectIdRegistry objID == outline system id.
    ///
    /// Vertical slice: the canonical space is still world-aligned (grid box
    /// centered above the unit origin); switching to per-unit local grids
    /// (origin/yaw from a data buffer) is a follow-up.
    /// </summary>
    public class VoxelUnitBakerFeature : ScriptableRendererFeature
    {
        public static VoxelUnitBakerFeature Instance { get; private set; }

        // Canonical grid shared by all units: 2x6x2 world units at 1/8-unit voxels,
        // fits a ~1x3 tile footprint with margin for animation poses.
        internal const int GridResX = 16;
        internal const int GridResY = 48;
        internal const int GridResZ = 16;
        internal static readonly Vector3 GridWorldSize = new Vector3(2f, 6f, 2f);

        static readonly int k_CanonicalToClipId = Shader.PropertyToID("_CanonicalToClip");
        static readonly int k_GridResId = Shader.PropertyToID("_GridRes");
        static readonly int k_GridWorldSizeId = Shader.PropertyToID("_GridWorldSize");

        [System.Serializable]
        public class Settings
        {
            public Shader VoxelWriteShader;
        }

        public Settings settings = new Settings();

        class VolumeEntry
        {
            public RenderTexture volume;
            public Renderer[] renderers;
        }

        BakePass m_Pass;
        Material m_Material;
        bool m_MaterialMissingLogged;
        Texture3D m_BlankTemplate;
        readonly Dictionary<int, VolumeEntry> m_Entries = new Dictionary<int, VolumeEntry>();
        int m_LastBakeFrame = -1;

        /// <summary>Fine voxel volume of a unit (false until first bake).</summary>
        public bool TryGetVolume(int objID, out RenderTexture volume)
        {
            if (m_Entries.TryGetValue(objID, out var e) && e?.volume != null)
            {
                volume = e.volume;
                return true;
            }
            volume = null;
            return false;
        }

        public override void Create()
        {
            m_Pass = new BakePass(this);
            m_Pass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
            Instance = this;
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

        void EnsureEntries()
        {
            foreach (int id in UnitObjectIdRegistry.ActiveIds)
            {
                if (m_Entries.ContainsKey(id)) continue;

                if (!UnitObjectIdRegistry.TryGetUnit(id, out var unit) || unit == null) continue;

                var entry = new VolumeEntry
                {
                    volume = CreateVolume($"UnitVoxelVolume_{id}"),
                    renderers = CollectRenderers(unit),
                };
                m_Entries[id] = entry;
            }

            if ((m_BlankTemplate == null) && m_Entries.Count > 0)
            {
                // CPU-zeroed source texture used to GPU-clear unit volumes each frame.
                m_BlankTemplate = new Texture3D(GridResX, GridResY, GridResZ,
                    TextureFormat.RGBA32, false)
                {
                    name = "UnitVoxelVolume_Blank",
                    filterMode = FilterMode.Point,
                    wrapMode = TextureWrapMode.Clamp,
                };
                m_BlankTemplate.SetPixels(new Color[GridResX * GridResY * GridResZ]);
                m_BlankTemplate.Apply(false, true);
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

        // 3D RenderTexture with random write (UAV): the well-supported path for
        // pixel-shader RWTexture3D output.
        static RenderTexture CreateVolume(string name)
        {
            var rt = new RenderTexture(GridResX, GridResY, 0, RenderTextureFormat.ARGB32)
            {
                name = name,
                dimension = TextureDimension.Tex3D,
                volumeDepth = GridResZ,
                enableRandomWrite = true,
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp,
            };
            rt.Create();
            return rt;
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
                if (m_Entries[id].volume != null) Destroy(m_Entries[id].volume);
                m_Entries.Remove(id);
            }
        }

        void Bake(CommandBuffer cmd, int objID, VolumeEntry entry)
        {
            if (entry.renderers == null || entry.renderers.Length == 0) return;
            if (!UnitObjectIdRegistry.TryGetUnit(objID, out var unit) || unit == null) return;
            if (!unit.gameObject.activeInHierarchy) return;

            // GPU clear: copy the untouched blank template over last frame's data.
            cmd.CopyTexture(m_BlankTemplate, entry.volume);

            // Vertical slice: canonical space == world space, grid box centered
            // above the unit's feet.
            Vector3 center = unit.transform.position + Vector3.up * (GridWorldSize.y * 0.5f);
            Vector3 half = GridWorldSize * 0.5f;
            float pad = GridWorldSize.x / GridResX; // one voxel of margin against clipping
            float px = half.x + pad, py = half.y + pad, pz = half.z + pad;

            cmd.SetRandomWriteTarget(1, entry.volume);

            Material mat = m_Material;

            // -Y sweep (top-down): records horizontal surfaces.
            cmd.SetGlobalMatrix(k_CanonicalToClipId,
                MakeSweep(center, Vector3.up * py, Vector3.forward, new Vector2(px, pz), 2f * py));
            DrawAll(cmd, entry, mat);

            // +Z sweep: records front/back facing surfaces.
            cmd.SetGlobalMatrix(k_CanonicalToClipId,
                MakeSweep(center, Vector3.forward * pz, Vector3.up, new Vector2(px, py), 2f * pz));
            DrawAll(cmd, entry, mat);

            // +X sweep: records left/right facing surfaces.
            cmd.SetGlobalMatrix(k_CanonicalToClipId,
                MakeSweep(center, Vector3.right * px, Vector3.up, new Vector2(pz, py), 2f * px));
            DrawAll(cmd, entry, mat);
        }

        static void DrawAll(CommandBuffer cmd, VolumeEntry entry, Material material)
        {
            foreach (var r in entry.renderers)
            {
                if (r == null || !r.enabled) continue;
                cmd.DrawRenderer(r, material);
            }
        }

        static Matrix4x4 MakeSweep(Vector3 center, Vector3 eyeOffset, Vector3 up,
            Vector2 rectHalf, float span)
        {
            var view = Matrix4x4.LookAt(center + eyeOffset, center, up);
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
                if (m_Feature.m_Entries.Count == 0) return;

                var cmd = CommandBufferPool.Get("VoxelizeUnits");
                using (new ProfilingScope(cmd, profilingSampler))
                {
                    // Constant grid parameters for the voxel write shader.
                    cmd.SetGlobalVector(k_GridResId, new Vector3(GridResX, GridResY, GridResZ));
                    cmd.SetGlobalVector(k_GridWorldSizeId, GridWorldSize);

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
            foreach (var e in m_Entries.Values)
            {
                if (e.volume != null) Destroy(e.volume);
            }
            m_Entries.Clear();
            if (m_BlankTemplate != null) Destroy(m_BlankTemplate);
            if (m_Material != null) Destroy(m_Material);
            Instance = null;
        }
    }
}
