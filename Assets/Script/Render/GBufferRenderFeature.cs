using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class GBufferRenderFeature : ScriptableRendererFeature
{
    [System.Serializable]
    public class Settings
    {
        public Material Mat;
    }

    public Settings settings = new Settings();

    GBufferPass m_ScriptablePass;

    class GBufferPass : ScriptableRenderPass
    {
        // Override materials require matching passes for both SRPDefaultUnlit and UniversalForward.
        static readonly List<ShaderTagId> k_ShaderTags = new List<ShaderTagId>
        {
            new ShaderTagId("SRPDefaultUnlit"),
            new ShaderTagId("UniversalForward"),
            new ShaderTagId("UniversalForwardOnly"),
        };

        static readonly int k_GBufferTexId = Shader.PropertyToID("_GBuffer");

        RTHandle m_GBuffer;
        RTHandle m_UnitDepth;
        RTHandle m_CameraDepth;
        Settings m_Settings;

        public GBufferPass(Settings settings)
        {
            m_Settings = settings;
            profilingSampler = new ProfilingSampler("GBufferPass");
        }

        public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
        {
            var desc = renderingData.cameraData.cameraTargetDescriptor;
            desc.msaaSamples = 1;
            desc.depthBufferBits = 0;
            desc.graphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat.R8G8B8A8_UNorm;
            RenderingUtils.ReAllocateIfNeeded(ref m_GBuffer, desc, FilterMode.Point, TextureWrapMode.Clamp, name: "GBufferType");

            // Unit-only depth RT, so walls do not occlude units.
            var depthDesc = renderingData.cameraData.cameraTargetDescriptor;
            depthDesc.msaaSamples = 1;
            depthDesc.graphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat.None;
            depthDesc.depthBufferBits = 24;
            RenderingUtils.ReAllocateIfNeeded(ref m_UnitDepth, depthDesc, name: "GBufferUnitDepth");

            // ZTest against real camera depth; no custom depth render needed.
            m_CameraDepth = renderingData.cameraData.renderer.cameraDepthTargetHandle;
            ConfigureTarget(m_GBuffer, m_CameraDepth);
        }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (m_Settings.Mat == null) return;

            // Named buffer so the pass is visible in the Frame Debugger.
            var cmd = CommandBufferPool.Get("GBufferPass");
            using (new ProfilingScope(cmd, profilingSampler))
            {
                // Clear color only, keeping camera depth.
                CoreUtils.SetRenderTarget(cmd, m_GBuffer, m_CameraDepth);
                cmd.ClearRenderTarget(RTClearFlags.Color, Color.clear, 1.0f, 0);

                // Visible pass: ZTest LEqual against camera depth; low nibble = visible type.
                DrawLayerPass(cmd, context, ref renderingData, "Block", 0, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);
                DrawLayerPass(cmd, context, ref renderingData, "Unit", 1, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);
                DrawLayerPass(cmd, context, ref renderingData, "Water", 2, RenderQueueRange.transparent, SortingCriteria.CommonTransparent);

                // Unit-depth pre-pass: nearest unit wins; walls excluded so units show through.
                CoreUtils.SetRenderTarget(cmd, m_GBuffer, m_UnitDepth);
                cmd.ClearRenderTarget(RTClearFlags.Depth, Color.clear, 1.0f, 0);
                DrawLayerPass(cmd, context, ref renderingData, "Unit", 4, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);

                // Occupancy pass: only the nearest unit passes; G = unit objID.
                DrawLayerPass(cmd, context, ref renderingData, "Unit", 3, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);

                cmd.SetGlobalTexture(k_GBufferTexId, m_GBuffer);
            }
            context.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
        }

        void DrawLayerPass(CommandBuffer cmd, ScriptableRenderContext context, ref RenderingData renderingData, string layerName, int passIndex, RenderQueueRange queueRange, SortingCriteria sortingCriteria)
        {
            var culling = renderingData.cullResults;
            var layer = 1 << LayerMask.NameToLayer(layerName);

            var ds = CreateDrawingSettings(k_ShaderTags, ref renderingData, sortingCriteria);
            ds.overrideMaterial = m_Settings.Mat;
            ds.overrideMaterialPassIndex = passIndex;

            var fs = new FilteringSettings(queueRange, layer);

            // RendererList lets the pass appear in the Frame Debugger.
            var rlParams = new RendererListParams(culling, ds, fs);
            var rl = context.CreateRendererList(ref rlParams);
            cmd.DrawRendererList(rl);
        }

        public void Cleanup()
        {
            m_GBuffer?.Release();
            m_UnitDepth?.Release();
        }
    }

    public override void Create()
    {
        m_ScriptablePass = new GBufferPass(settings);
        // GBuffer must run before UnitStrokeRenderFeature (renderer feature list order).
        m_ScriptablePass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
    }

    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
    {
        if (settings.Mat == null) return;
        if (renderingData.cameraData.cameraType != CameraType.Game) return;
        renderer.EnqueuePass(m_ScriptablePass);
    }

    protected override void Dispose(bool disposing)
    {
        m_ScriptablePass?.Cleanup();
    }
}
