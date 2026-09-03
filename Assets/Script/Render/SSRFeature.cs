using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

namespace Render
{
    /// <summary>
    /// Screen-space reflections with temporal accumulation + voxel DDA fallback.
    ///
    /// Runs after transparents, before tonemap (post-processing). For each block
    /// reflector pixel it GGX-samples a reflection ray, marches the scene depth
    /// (screen-space), and on miss relights the voxel world (map+units+sky+water)
    /// via the SH irradiance cache. Every reflector pixel yields a radiance sample
    /// every frame. Accumulates into a ping-pong pair (_Accum / _PrevAccum) with a
    /// count in .w; history is accepted only when reprojection lands on the same
    /// reflector surface (validated with the ping-pong _PrevMeta normal/depth
    /// buffers), so a 1-spp per-frame trace converges over frames without being
    /// reset by sky/water rays or disocclusion smearing.
    ///
    /// The reflected radiance is consumed by CustomDynamicGI (materials read
    /// _Accum as the environment-specular term instead of the sky map), so the
    /// reflector's own per-pixel BRDF weight is applied in the shade, not here.
    /// Requires the ReflectionDataFeature to have filled _ReflAlbedo/
    /// _ReflRoughMetal/_ReflNormal and the GBufferRenderFeature to have filled
    /// _GBuffer.
    /// </summary>
    public class SSRFeature : ScriptableRendererFeature
    {
        [SerializeField] private Shader _shader; // optional; auto-found when null

        [System.Serializable]
        public class Settings
        {
            [Range(1f, 1024f)] public float MaxAccum = 128f;
            [Range(0.1f, 1f)] public float Scale = 1f;

            [Tooltip("Debug: colorize the reflection hit path. Red = screen-space scene hit, green = voxel relight.")]
            public bool DebugHitPath = false;
        }

        public Settings settings = new Settings();

        Material m_Material;
        SSRTracePass m_Pass;

        static readonly int k_ShaderId = Shader.PropertyToID("Hidden/SSR");
        static readonly int k_PrevVPId = Shader.PropertyToID("_PrevVP");
        static readonly int k_InvViewProjId = Shader.PropertyToID("_InvViewProj");
        static readonly int k_SSRParamsId = Shader.PropertyToID("_SSRParams");
        static readonly int k_FrameId = Shader.PropertyToID("_Frame");
        static readonly int k_FrameIdxId = Shader.PropertyToID("_FrameIdx");
        static readonly int k_PrevAccumId = Shader.PropertyToID("_PrevAccum");
        static readonly int k_AccumId = Shader.PropertyToID("_Accum");
        static readonly int k_DebugHitPathId = Shader.PropertyToID("_SSRDebugHitPath");

        public override void Create()
        {
            EnsureMaterial();
            m_Pass = new SSRTracePass(m_Material, settings);
            m_Pass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
        }

        void EnsureMaterial()
        {
            if (m_Material != null) return;
            Shader shader = _shader != null ? _shader : Shader.Find("Hidden/SSR");
            if (shader == null)
            {
                Debug.LogWarning("[SSR] Hidden/SSR shader not found; SSR disabled.");
                return;
            }
            _shader = shader;
            m_Material = CoreUtils.CreateEngineMaterial(shader);
        }

        public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
        {
            EnsureMaterial();
            if (m_Material == null) return;
            if (renderingData.cameraData.cameraType != CameraType.Game) return;
            renderer.EnqueuePass(m_Pass);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                m_Pass?.Cleanup();
                m_Pass = null;
                if (m_Material != null) CoreUtils.Destroy(m_Material);
                m_Material = null;
            }
        }

        class SSRTracePass : ScriptableRenderPass
        {
            readonly Material m_Material;
            readonly Settings m_Settings;

            RTHandle m_AccumA;
            RTHandle m_AccumB;
            RTHandle mMetaA;
            RTHandle mMetaB;
            bool m_ReadA; // true: this frame reads A, writes B
            int m_FrameIdx;
            Matrix4x4 m_PrevVP;
            static readonly int k_SceneColorId = Shader.PropertyToID("_SceneColor");
            static readonly int k_PrevMetaId = Shader.PropertyToID("_PrevMeta");

            public SSRTracePass(Material material, Settings settings)
            {
                m_Material = material;
                m_Settings = settings;
                m_ReadA = true;
                m_PrevVP = Matrix4x4.identity;
                profilingSampler = new ProfilingSampler("SSRTrace");
                // Ensure depth + scene color exist for the trace (SSR.hlsl reads
                // _CameraDepthTexture; we read the post-transparent color target).
                ConfigureInput(ScriptableRenderPassInput.Depth | ScriptableRenderPassInput.Color);
            }

            public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
            {
                var desc = renderingData.cameraData.cameraTargetDescriptor;
                desc.msaaSamples = 1;
                desc.depthBufferBits = 0;
                desc.graphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16A16_SFloat;
                int w = Mathf.Max(1, Mathf.RoundToInt(desc.width * m_Settings.Scale));
                int h = Mathf.Max(1, Mathf.RoundToInt(desc.height * m_Settings.Scale));
                desc.width = w;
                desc.height = h;

                // Point sampling keeps the accumulated hit-count in .w pristine:
                // bilinear reads would mix neighboring pixels' counts and
                // produce fractional, invalid blend weights. The consumer
                // (CustomDynamicGI) samples _Accum once per pixel at the same
                // resolution, so point is visually consistent.
                RenderingUtils.ReAllocateIfNeeded(ref m_AccumA, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "SSRAccumA");
                RenderingUtils.ReAllocateIfNeeded(ref m_AccumB, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "SSRAccumB");

                // Per-pixel reflector surface meta (oct world normal + flag),
                // ping-ponged alongside the accumulation for the history gate.
                // Point filter keeps the reflector flag binary and avoids blending
                // oct normals across surface edges.
                RenderingUtils.ReAllocateIfNeeded(ref mMetaA, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "SSRMetaA");
                RenderingUtils.ReAllocateIfNeeded(ref mMetaB, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "SSRMetaB");
            }

            public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
            {
                if (m_Material == null) return;

                var cameraData = renderingData.cameraData;
                Camera cam = cameraData.camera;

                RTHandle read = m_ReadA ? m_AccumA : m_AccumB;
                RTHandle write = m_ReadA ? m_AccumB : m_AccumA;
                RTHandle metaRead = m_ReadA ? mMetaA : mMetaB;
                RTHandle metaWrite = m_ReadA ? mMetaB : mMetaA;
                m_ReadA = !m_ReadA;
                m_FrameIdx++;

                // Sync the debug-hit-path float uniform with the Inspector toggle.
                // Set every frame (cheap) so toggling in the Inspector applies
                // immediately without a keyword/variant dependency.
                m_Material.SetFloat(k_DebugHitPathId, m_Settings.DebugHitPath ? 1f : 0f);

                // Scene color (post-transparent, pre-tonemap HDR).
                RTHandle sceneColor = cameraData.renderer.cameraColorTargetHandle;

                Matrix4x4 gpuProj = GL.GetGPUProjectionMatrix(cam.projectionMatrix, true);
                Matrix4x4 view = cam.worldToCameraMatrix;
                Matrix4x4 vp = gpuProj * view;

                var cmd = CommandBufferPool.Get("SSRTrace");
                using (new ProfilingScope(cmd, profilingSampler))
                {
                    cmd.SetGlobalTexture(k_SceneColorId, sceneColor);
                    cmd.SetGlobalTexture(k_PrevAccumId, read);
                    cmd.SetGlobalTexture(k_AccumId, write);
                    cmd.SetGlobalTexture(k_PrevMetaId, metaRead);

                    // Matrices for reprojection + world unprojection.
                    cmd.SetGlobalMatrix(k_PrevVPId, m_PrevVP);
                    cmd.SetGlobalMatrix(k_InvViewProjId, vp.inverse);

                    cmd.SetGlobalVector(k_SSRParamsId, new Vector4(0, m_Settings.MaxAccum, 0, 0));
                    cmd.SetGlobalFloat(k_FrameId, m_FrameIdx * 0.005f);
                    cmd.SetGlobalInt(k_FrameIdxId, m_FrameIdx);

                    // Fullscreen trace into the write target. Blitter issues the
                    // procedural draw through the engine-managed blit path (same
                    // as UnitStroke/ApplyExposure); a bare DrawProcedural after
                    // manual SetRenderTarget ran inside the pass URP already
                    // began for the ConfigureTarget, so it never wrote.
                    Blitter.BlitCameraTexture(cmd, sceneColor, write, m_Material, 0);

                    // Store this frame's reflector meta into the other ping-pong
                    // half for next frame's history validation.
                    Blitter.BlitCameraTexture(cmd, sceneColor, metaWrite, m_Material, 1);
                }
                context.ExecuteCommandBuffer(cmd);
                CommandBufferPool.Release(cmd);

                m_PrevVP = vp;

                // Publish the freshest accumulation as _Accum for the material
                // GI to read next frame.
                Shader.SetGlobalTexture(k_AccumId, write);
            }

            public void Cleanup()
            {
                m_AccumA?.Release();
                m_AccumB?.Release();
                mMetaA?.Release();
                mMetaB?.Release();
            }
        }
    }
}
