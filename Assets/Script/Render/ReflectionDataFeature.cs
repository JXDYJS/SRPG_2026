using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

namespace Render
{
    /// <summary>
    /// Draws opaque PBR geometry into per-pixel reflection-data buffers, using
    /// each object's OWN material (not an override) via LightMode=ReflectionData.
    /// Materials that do not declare a ReflectionData pass (e.g. stock URP Lit
    /// used by units) simply do not write here; their pixels read 0 and the SSR
    /// pass treats them via the voxel/geometric fallback.
    ///
    /// Target layout (RGBA16F, point clamp):
    ///   _ReflAlbedo    rgb  = albedo
    ///   _ReflRoughMetal.r = perceptual roughness  .g = metallic
    ///   _ReflNormal    rg  = oct-encoded world normal
    /// These are the per-pixel inputs for the temporal SSR pass (reflector
    /// roughness drives the GGX lobe, metal drives composite strength). The
    /// pass reuses CustomLit's GBuffer fragment so albedo/rough/metal/normal
    /// come from the exact same material sampling as the forward shading.
    /// </summary>
    public class ReflectionDataFeature : ScriptableRendererFeature
    {
        static List<ShaderTagId> s_ShaderTags;

        static void EnsureShaderTags()
        {
            if (s_ShaderTags != null) return;
            // Built in Create()/OnEnable-time only: ShaderTagId ctor calls
            // TagToID, which is illegal from a field initializer / serialization.
            s_ShaderTags = new List<ShaderTagId>
            {
                new ShaderTagId("ReflectionData"),
            };
        }

        [System.Serializable]
        public class Settings
        {
            public float scale = 1f; // 1 = full res, 0.5 = half res
        }

        public Settings settings = new Settings();

        ReflectionDataPass m_Pass;

        public override void Create()
        {
            EnsureShaderTags();
            m_Pass = new ReflectionDataPass(settings);
            m_Pass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
        }

        public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
        {
            if (renderingData.cameraData.cameraType != CameraType.Game) return;
            renderer.EnqueuePass(m_Pass);
        }

        class ReflectionDataPass : ScriptableRenderPass
        {
            readonly Settings m_Settings;

            RTHandle m_Albedo;
            RTHandle m_RoughMetal;
            RTHandle m_Normal;
            RTHandle m_CameraDepth;

            static readonly int k_ReflAlbedoId = Shader.PropertyToID("_ReflAlbedo");
            static readonly int k_ReflRoughMetalId = Shader.PropertyToID("_ReflRoughMetal");
            static readonly int k_ReflNormalId = Shader.PropertyToID("_ReflNormal");

            public ReflectionDataPass(Settings settings)
            {
                m_Settings = settings;
                profilingSampler = new ProfilingSampler("ReflectionData");
            }

            public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
            {
                var desc = renderingData.cameraData.cameraTargetDescriptor;
                desc.msaaSamples = 1;
                desc.depthBufferBits = 0;
                desc.graphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat.R16G16B16A16_SFloat;
                int w = Mathf.Max(1, (int)(desc.width * m_Settings.scale));
                int h = Mathf.Max(1, (int)(desc.height * m_Settings.scale));
                desc.width = w;
                desc.height = h;

                RenderingUtils.ReAllocateIfNeeded(ref m_Albedo, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "ReflAlbedo");
                RenderingUtils.ReAllocateIfNeeded(ref m_RoughMetal, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "ReflRoughMetal");
                RenderingUtils.ReAllocateIfNeeded(ref m_Normal, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "ReflNormal");

                m_CameraDepth = renderingData.cameraData.renderer.cameraDepthTargetHandle;
                ConfigureTarget(new RTHandle[] { m_Albedo, m_RoughMetal, m_Normal }, m_CameraDepth);
            }

            public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
            {
                var cmd = CommandBufferPool.Get("ReflectionData");
                using (new ProfilingScope(cmd, profilingSampler))
                {
                    CoreUtils.SetRenderTarget(cmd,
                        new RenderTargetIdentifier[] { m_Albedo, m_RoughMetal, m_Normal },
                        m_CameraDepth);
                    cmd.ClearRenderTarget(RTClearFlags.Color, Color.clear, 1.0f, 0);

                    var ds = CreateDrawingSettings(s_ShaderTags, ref renderingData, SortingCriteria.CommonOpaque);
                    var filter = new FilteringSettings(RenderQueueRange.opaque);
                    var rlParams = new RendererListParams(renderingData.cullResults, ds, filter);
                    var rl = context.CreateRendererList(ref rlParams);
                    cmd.DrawRendererList(rl);

                    cmd.SetGlobalTexture(k_ReflAlbedoId, m_Albedo);
                    cmd.SetGlobalTexture(k_ReflRoughMetalId, m_RoughMetal);
                    cmd.SetGlobalTexture(k_ReflNormalId, m_Normal);
                }
                context.ExecuteCommandBuffer(cmd);
                CommandBufferPool.Release(cmd);
            }

            public void Cleanup()
            {
                m_Albedo?.Release();
                m_RoughMetal?.Release();
                m_Normal?.Release();
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                m_Pass?.Cleanup();
                m_Pass = null;
            }
        }
    }
}
