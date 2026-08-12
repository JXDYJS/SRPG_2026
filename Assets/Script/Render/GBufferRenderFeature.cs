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
        RTHandle m_GBuffer;
        Settings m_Settings;
        static bool s_didLog;

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

            // 目标 = 类型缓冲 + 相机真实深度；ZTest 直接对着相机深度测，不用自己渲深度
            ConfigureTarget(m_GBuffer, renderingData.cameraData.renderer.cameraDepthTargetHandle);
        }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (m_Settings.Mat == null) return;

            if (!s_didLog)
            {
                Debug.Log($"[GBufferRenderFeature] pass 执行 frame={Time.frameCount} camera={renderingData.cameraData.camera.name}");
                s_didLog = true;
            }

            // 可见步：ZTest LEqual（对着相机深度）——低 nibble 写 visibleType
            DrawLayerPass(context, ref renderingData, "Block", 0, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);
            DrawLayerPass(context, ref renderingData, "Unit", 1, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);
            DrawLayerPass(context, ref renderingData, "Water", 2, RenderQueueRange.transparent, SortingCriteria.CommonTransparent);

            // 占用步：pass 3 = ZTest Always + Blend One One，只画单位
            DrawLayerPass(context, ref renderingData, "Unit", 3, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);
        }

        void DrawLayerPass(ScriptableRenderContext context, ref RenderingData renderingData, string layerName, int passIndex, RenderQueueRange queueRange, SortingCriteria sortingCriteria)
        {
            var culling = renderingData.cullResults;
            var sorting = new SortingSettings(renderingData.cameraData.camera) { criteria = sortingCriteria };
            var layer = 1 << LayerMask.NameToLayer(layerName);

            var ds = new DrawingSettings(new ShaderTagId("SRPDefaultUnlit"), sorting)
            {
                overrideMaterial = m_Settings.Mat,
                overrideMaterialPassIndex = passIndex
            };
            var fs = new FilteringSettings(queueRange, layer);
            var rsb = new RenderStateBlock(RenderStateMask.Nothing);

            context.DrawRenderers(culling, ref ds, ref fs, ref rsb);
        }

        public void Cleanup()
        {
            m_GBuffer?.Release();
        }
    }

    public override void Create()
    {
        m_ScriptablePass = new GBufferPass(settings);
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
