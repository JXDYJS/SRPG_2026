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
        // 与 URP DrawObjectsPass 一致：overrideMaterial 仍要求原 shader 存在匹配 pass，
        // 必须同时匹配 SRPDefaultUnlit（无标签/旧 shader）与 UniversalForward（URP Lit 等）
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

            // 单位深度 RT：只存单位之间互相遮挡后的最近深度，与相机深度无关（穿墙保留）
            var depthDesc = renderingData.cameraData.cameraTargetDescriptor;
            depthDesc.msaaSamples = 1;
            depthDesc.graphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat.None;
            depthDesc.depthBufferBits = 24;
            RenderingUtils.ReAllocateIfNeeded(ref m_UnitDepth, depthDesc, name: "GBufferUnitDepth");

            // 目标 = 类型缓冲 + 相机真实深度；ZTest 直接对着相机深度测，不用自己渲深度
            m_CameraDepth = renderingData.cameraData.renderer.cameraDepthTargetHandle;
            ConfigureTarget(m_GBuffer, m_CameraDepth);
        }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (m_Settings.Mat == null) return;

            // 用带名 CommandBuffer 包裹，ProfilingScope 写入 BeginSample marker → Frame Debugger 可见
            var cmd = CommandBufferPool.Get("GBufferPass");
            using (new ProfilingScope(cmd, profilingSampler))
            {
                // 1. 每帧清空类型缓冲（只清颜色，不动相机深度），否则跨帧累积成拖影
                CoreUtils.SetRenderTarget(cmd, m_GBuffer, m_CameraDepth);
                cmd.ClearRenderTarget(RTClearFlags.Color, Color.clear, 1.0f, 0);

                // 2. 可见步：ZTest LEqual（对着相机深度）——低 nibble 写 visibleType
                DrawLayerPass(cmd, context, ref renderingData, "Block", 0, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);
                DrawLayerPass(cmd, context, ref renderingData, "Unit", 1, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);
                DrawLayerPass(cmd, context, ref renderingData, "Water", 2, RenderQueueRange.transparent, SortingCriteria.CommonTransparent);

                // 3. 单位深度预绘制：清深度后 draw 一次 Unit（pass4 只写深度不写颜色）
                //    单位间互相 depth test → 每像素留下最近单位的深度；墙不参与该缓冲 → 穿墙保留
                CoreUtils.SetRenderTarget(cmd, m_GBuffer, m_UnitDepth);
                cmd.ClearRenderTarget(RTClearFlags.Depth, Color.clear, 1.0f, 0);
                DrawLayerPass(cmd, context, ref renderingData, "Unit", 4, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);

                // 4. 占用步：再 draw 一次 Unit，ZTest LEqual 对着单位深度RT，覆盖写（无 Blend）
                //    只有最近单位通过 → R 恒为 34，G=最近单位 objID，不再累加溢出
                DrawLayerPass(cmd, context, ref renderingData, "Unit", 3, RenderQueueRange.opaque, SortingCriteria.CommonOpaque);

                // 5. 暴露为全局纹理 _GBuffer，供描边/SSR 等后续 shader 采样
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

            // RendererList：把 DrawRenderers 转为可写入 CommandBuffer 的绘制（否则 pass 在 Frame Debugger 不可见）
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
        // 与 UnitStrokeRenderFeature 同为 BeforeRenderingPostProcessing，执行顺序依赖渲染器资产
        // m_RendererFeatures 的列表顺序（GBuffer 必须排在 UnitStroke 之前）。调整 feature 顺序前先确认此约束。
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
