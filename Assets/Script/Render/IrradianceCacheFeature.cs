using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

namespace Render
{
    /// <summary>
    /// Bakes the static voxel irradiance cache: Jacobi iterations over the
    /// 8x32x8 voxel map into a Texture3D of L2 spherical-harmonics radiance.
    /// Each logical cache texel (4x4x4 per voxel, +1 border per face) stores a
    /// 9-basis x RGB SH plus an accumulation counter N, packed into
    /// IrcShSlices float4 layers stacked along the texture z axis (see
    /// IrradianceCacheCommon.hlsl for the exact layout).
    ///
    /// A,B ping-pong with no CopyTexture: each iteration reads one texture and
    /// writes the other. BakeAll runs all iterations in one frame at load /
    /// edit time; afterwards BakeFrame mode accumulates progressively (1/N)
    /// per frame, so the cache can follow animated light / unit state. The
    /// cache read texture (_IRCCacheRead) is published globally so the PBR
    /// shaders sample the SH (diffuse via band convolution, reflections via
    /// directional radiance).
    /// </summary>
    public class IrradianceCacheFeature : ScriptableRendererFeature
    {
        public static IrradianceCacheFeature Instance { get; private set; }

        internal const int SubRes = 4;
        internal const int MaskCount = 128;
        internal const int EmissiveCount = 64;
        /// <summary>Physical float4 slices per logical cache texel (L2 SH = 9
        /// RGB coeffs + N accumulator = 28 slots). Must match IRC_SH_SLICES in
        /// IrradianceCacheCommon.hlsl.</summary>
        internal const int IrcShSlices = 7;

        static readonly int k_CacheReadId = Shader.PropertyToID("_IRCCacheRead");
        static readonly int k_CachePrevId = Shader.PropertyToID("_IRCCachePrev");
        static readonly int k_CacheWriteId = Shader.PropertyToID("_IRCCacheWrite");
        static readonly int k_MasksId = Shader.PropertyToID("_IRCTypeMasks");
        static readonly int k_EmissiveId = Shader.PropertyToID("_IRCEmissive");
        static readonly int k_BlendId = Shader.PropertyToID("_IrcBlend");
        static readonly int k_FudgeId = Shader.PropertyToID("_IrcFudge");
        static readonly int k_SelfBounceId = Shader.PropertyToID("_IrcSelfBounce");
        static readonly int k_RoundId = Shader.PropertyToID("_IrcRound");
        static readonly int k_SppId = Shader.PropertyToID("_IrcSpp");
        static readonly int k_WaterScatterId = Shader.PropertyToID("_WaterScatter");
        static readonly int k_WaterAbsorbId = Shader.PropertyToID("_WaterAbsorb");
        static readonly int k_WaterPhaseGId = Shader.PropertyToID("_WaterPhaseG");
        static readonly int k_WaterHackDepthId = Shader.PropertyToID("_WaterHackDepth");
        static readonly int k_ForceAlbedoId = Shader.PropertyToID("_IrcForceAlbedo");
        static readonly int k_SkyZenithId = Shader.PropertyToID("_IRCSkyZenith");
        static readonly int k_SkyHorizonId = Shader.PropertyToID("_IRCSkyHorizon");
        static readonly int k_SkyMapId = Shader.PropertyToID("_DynamicSkyMap");
        static readonly int k_UseSkyMapId = Shader.PropertyToID("_IrcUseSkyMap");
        static readonly int k_DebugExposureId = Shader.PropertyToID("_IRCDebugExposure");

        [System.Serializable]
        public class Settings
        {
            public ComputeShader BakeCompute;
            public int BakeIterations = 128;
            [Range(0f, 1f)] public float Blend = 0.9f;
            /// <summary>BakeFrame mode: one Jacobi round per frame so the cache
            /// follows animated main-light / sky state (plan §6). Default off;
            /// static sun should stay on the one-shot BakeAll path.</summary>
            public bool BakeEveryFrame = false;
            /// <summary>Legacy per-frame EMA blend in BakeFrame mode. The SH
            /// kernel now accumulates progressively with 1/N (N carried in the
            /// cache), so this value is ignored for the coefficient blend; it
            /// is kept only for editor-tool compatibility.</summary>
            [Range(0f, 1f)] public float PerFrameBlend = 0.99f;
            public float SphereFudge = 1.6f;
            [Range(0f, 0.1f)] public float SelfBounce = 0.01f;
            /// <summary>Rays per texel per iteration. With progressive 1/N the
            /// per-frame variance is spread across frames, so 1 is sufficient
            /// (higher only speeds re-convergence after a state change at the
            /// cost of per-frame cost).</summary>
            [Range(1, 8)] public int Spp = 1;
            public float DebugExposure = 1.0f;
            public float WaterHackDepth = 2.0f;
            public Vector4 SkyZenith = new Vector4(0.85f, 0.90f, 1.00f, 0f);
            public Vector4 SkyHorizon = new Vector4(0.25f, 0.32f, 0.40f, 0f);
        }

        public Settings settings = new Settings();

        internal RenderTexture CacheA { get; private set; }
        internal RenderTexture CacheB { get; private set; }
        public int CacheWidth { get; private set; }
        public int CacheHeight { get; private set; }
        /// <summary>Physical texture depth = logical depth * IRC_SH_SLICES.</summary>
        public int CacheDepth { get; private set; }
        /// <summary>Logical cache depth (before stacking SH slices), i.e. the
        /// original voxel-chunk depth scale. Dispatch and kernels iterate over
        /// this; the slice stack is an internal z-expansion of the texture.</summary>
        public int LogicalCacheDepth { get; private set; }

        /// <summary>Cache texture published for sampling (final bake target).</summary>
        public RenderTexture ReadCache { get; private set; }

        /// <summary>Bake compute (null when Settings.BakeCompute is missing).</summary>
        public ComputeShader BakeCS => m_CS;

        /// <summary>
        /// Test hook for IrradianceCacheVerify: x &gt; 0.5 replaces every hit
        /// albedo with .yzw, allowing exact albedo-linearity golden tests.
        /// Resets to zero (normal bake) after verification.
        /// </summary>
        public Vector4 ForceAlbedoOverride { get; set; } = Vector4.zero;

        /// <summary>Emissive table (typeId 1..63) used by the bake kernels.</summary>
        public GraphicsBuffer EmissiveBuffer => m_Emissive;

        BakePass m_Pass;
        [System.NonSerialized] ComputeShader m_CS;
        [System.NonSerialized] int m_Kernel = -1;
        [System.NonSerialized] int m_FrameRound;
        [System.NonSerialized] bool m_BakeFrameLogged;
        GraphicsBuffer m_Masks;
        GraphicsBuffer m_Emissive;
        Texture3D m_LastMapVolume;
        bool m_NeedsBake;
        Vector4 m_WaterScatter = new Vector4(0.15f, 0.20f, 0.25f, 0f);
        Vector4 m_WaterAbsorb = new Vector4(0.35f, 0.05f, 0.02f, 0f);
        float m_WaterPhaseG = 0.8f;

        public override void Create()
        {
            m_Pass = new BakePass(this) { renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing };
            Instance = this;
            m_NeedsBake = false; // first bake triggers on the map upload below

            ResolveCompute();
            EnsureResources();
            ResolveWaterParams();
        }

        /// <summary>Requests a full rebake on the next rendered frame (edit flows).</summary>
        public void RequestBake()
        {
            m_NeedsBake = true;
        }

        /// <summary>
        /// One-time compute resolution from the serialized reference. The bake
        /// is disabled with a single warning when it is not assigned.
        /// </summary>
        void ResolveCompute()
        {
            if (settings.BakeCompute == null)
            {
                Debug.LogWarning("[IrradianceCache] settings.BakeCompute not assigned; IRC bake disabled. " +
                                 "Assign the IrradianceCacheBake compute shader on this renderer feature.");
                return;
            }
            m_CS = settings.BakeCompute;
            m_Kernel = m_CS.FindKernel("IRCBake");
        }

        void EnsureResources()
        {
            if (CacheA == null)
            {
                CacheWidth = VoxelGpuMap.ChunkWidth * SubRes + 2;
                CacheHeight = VoxelGpuMap.ChunkHeight * SubRes + 2;
                // Each logical cache texel stores an L2 SH (7 float4 slices) +
                // N counter, stacked along z inside the same Texture3D.
                LogicalCacheDepth = VoxelGpuMap.ChunkDepth * SubRes + 2;
                CacheDepth = LogicalCacheDepth * IrcShSlices;
                CacheA = CreateCache("IRCCacheA");
                CacheB = CreateCache("IRCCacheB");
                ReadCache = CacheA;
                Shader.SetGlobalTexture(k_CacheReadId, CacheA);
            }

            if (m_Masks == null)
            {
                m_Masks = new GraphicsBuffer(GraphicsBuffer.Target.Structured, MaskCount, 8);
                m_Masks.SetData(BuildMaskTable());
            }

            if (m_Emissive == null)
            {
                m_Emissive = new GraphicsBuffer(GraphicsBuffer.Target.Structured, EmissiveCount, 16);
                m_Emissive.SetData(new Vector4[EmissiveCount]);
            }
        }

        RenderTexture CreateCache(string name)
        {
            var rt = new RenderTexture(CacheWidth, CacheHeight, 0, RenderTextureFormat.ARGBHalf)
            {
                name = name,
                dimension = TextureDimension.Tex3D,
                volumeDepth = CacheDepth,
                enableRandomWrite = true,
                filterMode = FilterMode.Point,
                wrapMode = TextureWrapMode.Clamp,
            };
            rt.Create();
            return rt;
        }

        static ulong[] BuildMaskTable()
        {
            // Key = map byte & 0x7F: bits 0..5 typeId, bit 6 half-block.
            // Default shapes: full cube (0xFFFFFFFFFFFFFFFF) or bottom half
            // (0x00000000FFFFFFFF) for half blocks; stairs follow the slab
            // mask (matches the existing DDA half-block branch).
            var masks = new ulong[MaskCount];
            for (int key = 0; key < MaskCount; key++)
            {
                int typeId = key & 0x3F;
                bool half = (key & 0x40) != 0;
                masks[key] = typeId == 0 ? 0ul : half ? 0x00000000FFFFFFFFul : ulong.MaxValue;
            }
            return masks;
        }

        void ResolveWaterParams()
        {
            // Water params mirror Water.shader's material so bake and render
            // produce the same water colors; defaults match the shader's
            // inspector defaults when no material exists yet.
            foreach (var m in Resources.FindObjectsOfTypeAll<Material>())
            {
                if (m == null || m.shader == null ||
                    m.shader.name != "Custom/PhysicsWater_Final_Strict_Fixed")
                {
                    continue;
                }
                if (m.HasProperty("_ScatterColor")) m_WaterScatter = m.GetVector("_ScatterColor");
                if (m.HasProperty("_AbsorptionColor")) m_WaterAbsorb = m.GetVector("_AbsorptionColor");
                if (m.HasProperty("_PhaseG")) m_WaterPhaseG = m.GetFloat("_PhaseG");
                break;
            }
        }

        /// <summary>
        /// Runs the full bake iterations into the caller's command buffer,
        /// synchronously enough for verification tools (editor play mode).
        /// The pass also uses this via DispatchBake.
        /// </summary>
        public void BakeOnce(CommandBuffer cmd)
        {
            DispatchBake(cmd);
        }

        void DispatchBake(CommandBuffer cmd)
        {
            for (int i = 0; i < settings.BakeIterations; i++)
            {
                DispatchRound(cmd, i, settings.Blend);
            }
        }

        /// <summary>
        /// One Jacobi iteration: A/B ping-pong (even round writes B), publishes
        /// the fresh target as the read cache. round seeds decorrelation, and
        /// blend is the EMA mixing weight for the old value.
        /// </summary>
        void DispatchRound(CommandBuffer cmd, int round, float blend)
        {
            if (m_CS == null || m_Kernel < 0) return;

            int wx = (CacheWidth + 3) / 4;
            int wy = (CacheHeight + 3) / 4;
            // Iterate over LOGICAL texels; the kernel expands each into the
            // IRC_SH_SLICES physical z-slices of the stacked texture.
            int wz = (LogicalCacheDepth + 3) / 4;
            RenderTexture prev = (round & 1) == 0 ? CacheA : CacheB;
            RenderTexture write = (round & 1) == 0 ? CacheB : CacheA;
            cmd.SetComputeTextureParam(m_CS, m_Kernel, k_CachePrevId, prev);
            cmd.SetComputeTextureParam(m_CS, m_Kernel, k_CacheWriteId, write);
            cmd.SetComputeBufferParam(m_CS, m_Kernel, k_MasksId, m_Masks);
            cmd.SetComputeBufferParam(m_CS, m_Kernel, k_EmissiveId, m_Emissive);
            cmd.SetComputeFloatParam(m_CS, k_BlendId, blend);
            cmd.SetComputeFloatParam(m_CS, k_FudgeId, settings.SphereFudge);
            cmd.SetComputeFloatParam(m_CS, k_SelfBounceId, settings.SelfBounce);
            cmd.SetComputeIntParam(m_CS, k_RoundId, round);
            cmd.SetComputeFloatParam(m_CS, k_SppId, settings.Spp);
            cmd.SetComputeVectorParam(m_CS, k_WaterScatterId, m_WaterScatter);
            cmd.SetComputeVectorParam(m_CS, k_WaterAbsorbId, m_WaterAbsorb);
            cmd.SetComputeFloatParam(m_CS, k_WaterPhaseGId, m_WaterPhaseG);
            cmd.SetComputeFloatParam(m_CS, k_WaterHackDepthId, settings.WaterHackDepth);
            cmd.SetComputeVectorParam(m_CS, k_ForceAlbedoId, ForceAlbedoOverride);
            cmd.DispatchCompute(m_CS, m_Kernel, wx, wy, wz);

            ReadCache = write;
            Shader.SetGlobalTexture(k_CacheReadId, write);
        }

        class BakePass : ScriptableRenderPass
        {
            readonly IrradianceCacheFeature m_Feature;

            public BakePass(IrradianceCacheFeature feature)
            {
                m_Feature = feature;
                profilingSampler = new ProfilingSampler("IRCBake");
            }

            public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
            {
                if (m_Feature.m_CS == null) return;

                // Detect map (re)uploads; keep the old cache for blend-away.
                Texture3D vol = VoxelGpuMap.Volume;
                if (vol != m_Feature.m_LastMapVolume)
                {
                    m_Feature.m_LastMapVolume = vol;
                    if (vol != null) m_Feature.m_NeedsBake = true;
                }

                // Sky/exposure globals for the cache read sampling shaders.
                Shader.SetGlobalVector(k_SkyZenithId, m_Feature.settings.SkyZenith);
                Shader.SetGlobalVector(k_SkyHorizonId, m_Feature.settings.SkyHorizon);
                Shader.SetGlobalFloat(k_DebugExposureId, m_Feature.settings.DebugExposure);

                // Real-time sky map (published per-frame by FakeSunLight) drives
                // the missed-ray color in the bake when present; otherwise the
                // gradient fallback keeps the cache functional standalone.
                Texture skyMap = Shader.GetGlobalTexture(k_SkyMapId);
                Shader.SetGlobalTexture(k_SkyMapId, skyMap);
                Shader.SetGlobalFloat(k_UseSkyMapId, skyMap != null ? 1f : 0f);

                // Full rebake on map upload/edit; otherwise BakeFrame mode
                // follows animated light state with one round per frame.
                bool doFull = m_Feature.m_NeedsBake;
                bool doFrame = !doFull && m_Feature.settings.BakeEveryFrame &&
                               m_Feature.m_LastMapVolume != null;
                if (!doFull && !doFrame) return;

                if (!m_Feature.m_BakeFrameLogged && doFrame)
                {
                    m_Feature.m_BakeFrameLogged = true;
                    Debug.Log("[IrradianceCache] BakeFrame mode active (per-frame round).");
                }

                var cmd = CommandBufferPool.Get("IRCBake");
                using (new ProfilingScope(cmd, profilingSampler))
                {
                    if (doFull)
                    {
                        m_Feature.DispatchBake(cmd);
                        m_Feature.m_NeedsBake = false;
                    }
                    else
                    {
                        m_Feature.DispatchRound(cmd, m_Feature.m_FrameRound++,
                                                m_Feature.settings.PerFrameBlend);
                    }
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
            if (CacheA != null) CoreUtils.Destroy(CacheA);
            if (CacheB != null) CoreUtils.Destroy(CacheB);
            CacheA = CacheB = null;
            m_Masks?.Release();
            m_Masks = null;
            m_Emissive?.Release();
            m_Emissive = null;
            m_CS = null;
            m_Kernel = -1;
            ReadCache = null;
            Instance = null;
        }
    }
}
