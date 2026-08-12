using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class UnitStrokeRenderFeature : ScriptableRendererFeature
{
    [System.Serializable]
    public class Settings
    {
        public Material Mat;
    }

    public Settings settings = new Settings();

    StrokePass m_ScriptablePass;

    class StrokePass : ScriptableRenderPass
    {
        RTHandle m_SceneColor;
        Material m_Mat;

        public StrokePass(Material mat)
        {
            m_Mat = mat;
            profilingSampler = new ProfilingSampler("UnitStrokePass");
        }

        public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
        {
            var desc = renderingData.cameraData.cameraTargetDescriptor;
            RenderingUtils.ReAllocateIfNeeded(ref m_SceneColor, desc, name: "UnitStrokeSceneColor");
        }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (m_Mat == null) return;

            var cmd = CommandBufferPool.Get("UnitStroke");
            using (new ProfilingScope(cmd, profilingSampler))
            {
                var camColor = renderingData.cameraData.renderer.cameraColorTargetHandle;

                // 1. 把当前画面颜色拷贝到临时 RT（不能直接采样正在写的相机目标）
                Blitter.BlitCameraTexture(cmd, camColor, m_SceneColor);

                // 2. 用描边材质画回相机目标；Blitter 自动把 m_SceneColor 绑定为 _BlitTexture 并处理翻转
                //    必须在渲染器资产里把本 feature 排在 GBufferRenderFeature 之后（_GBuffer 需先写入）
                Blitter.BlitCameraTexture(cmd, m_SceneColor, camColor, m_Mat, 0);
            }
            context.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
        }

        public void Cleanup()
        {
            m_SceneColor?.Release();
        }
    }

    public override void Create()
    {
        m_ScriptablePass = new StrokePass(settings.Mat);
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
