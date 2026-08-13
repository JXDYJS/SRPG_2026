using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class ApplyExposureRenderFeature : ScriptableRendererFeature
{
    [System.Serializable]
    public class Settings
    {
        public Shader shader;
    }

    public Settings settings = new Settings();
    ApplyExposurePass m_ScriptablePass;
    Material m_Material;
    
    Texture2D m_DebugStubTexture;

    class ApplyExposurePass : ScriptableRenderPass
    {
        Material m_Material;
        RTHandle m_TempTexture; 
        Texture2D m_StubTexture;
        string m_ProfilerTag = "Apply Auto Exposure";
        
        static readonly int ExposureTexID = Shader.PropertyToID("_GlobalExposureTexture");

        float lastDebugTime = 0;

        public ApplyExposurePass(Material material, Texture2D stubTex)
        {
            m_Material = material;
            m_StubTexture = stubTex;
        }

        public override void OnCameraSetup(CommandBuffer cmd, ref RenderingData renderingData)
        {
            var desc = renderingData.cameraData.cameraTargetDescriptor;
            desc.depthBufferBits = 0; 
            RenderingUtils.ReAllocateIfNeeded(ref m_TempTexture, desc, FilterMode.Bilinear, TextureWrapMode.Clamp, name: "_TempExposureApplyTex");
            ConfigureInput(ScriptableRenderPassInput.Color);
        }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (m_Material == null) return;

            CommandBuffer cmd = CommandBufferPool.Get(m_ProfilerTag);
            RTHandle source = renderingData.cameraData.renderer.cameraColorTargetHandle;

            RenderTexture targetExposureTex = AutoExposureRenderFeature.CurrentExposureTexture;
            
            if (targetExposureTex == null || !targetExposureTex.IsCreated())
            {
                Debug.LogError($"[ApplyExposure] 曝光纹理失效 (null={targetExposureTex == null}, created={targetExposureTex?.IsCreated()})，使用 Stub 兜底");
                cmd.SetGlobalTexture(ExposureTexID, m_StubTexture);
            }
            else
            {
                cmd.SetGlobalTexture(ExposureTexID, targetExposureTex);
            }

            Blitter.BlitCameraTexture(cmd, source, m_TempTexture, m_Material, 0);

            cmd.Blit(m_TempTexture, source);

            context.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
        }

        public override void OnCameraCleanup(CommandBuffer cmd)
        {
            m_TempTexture?.Release();
        }
    }

    public override void Create()
    {
        // Green stub: shader reads the G channel (1.0 = neutral).
        if (m_DebugStubTexture == null)
        {
            m_DebugStubTexture = new Texture2D(1, 1, TextureFormat.RGBAFloat, false);
            m_DebugStubTexture.SetPixel(0, 0, new Color(0.0f, 1.0f, 0.0f, 1.0f));
            m_DebugStubTexture.Apply();
            m_DebugStubTexture.name = "DEBUG_GREEN_STUB";
        }

        if (settings.shader == null) return;
        m_Material = new Material(settings.shader);
        m_ScriptablePass = new ApplyExposurePass(m_Material, m_DebugStubTexture);
        m_ScriptablePass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
    }

    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
    {
        if (settings.shader != null && renderingData.cameraData.cameraType == CameraType.Game)
        {
            renderer.EnqueuePass(m_ScriptablePass);
        }
    }

    protected override void Dispose(bool disposing)
    {
        #if UNITY_EDITOR
        if (UnityEditor.EditorApplication.isPlaying) { Destroy(m_Material); Destroy(m_DebugStubTexture); }
        else { DestroyImmediate(m_Material); DestroyImmediate(m_DebugStubTexture); }
        #else
            Destroy(m_Material); Destroy(m_DebugStubTexture);
        #endif
    }
}
