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
    
    // 备用调试纹理 (1x1 绿色)
    Texture2D m_DebugStubTexture;

    class ApplyExposurePass : ScriptableRenderPass
    {
        Material m_Material;
        RTHandle m_TempTexture; 
        Texture2D m_StubTexture;
        string m_ProfilerTag = "Apply Auto Exposure (DEBUG)";
        
        static readonly int MainTexID = Shader.PropertyToID("_MainTex");
        static readonly int ExposureTexID = Shader.PropertyToID("_GlobalExposureTexture");

        // 限制日志频率，防止卡死
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
            // 1. 基础检查
            if (m_Material == null) return;

            CommandBuffer cmd = CommandBufferPool.Get(m_ProfilerTag);
            RTHandle source = renderingData.cameraData.renderer.cameraColorTargetHandle;

            // ================== C# 强力调试日志 ==================
            if (Time.time - lastDebugTime > 1.0f)
            {
                lastDebugTime = Time.time;
                Debug.Log("--- [ApplyExposure] 开始每秒体检 ---");

                // 检查 1: 屏幕源是否有效
                if (source == null || source.rt == null)
                    Debug.LogError("❌ 错误: Camera Color Target (Source) 为空！URP 可能没把画面传过来。");
                else
                    Debug.Log($"✅ 屏幕源状态: ID={source.nameID}, Size={source.rt.width}x{source.rt.height}");

                // 检查 2: 曝光纹理是否有效
                var realExpTex = AutoExposureRenderFeature.CurrentExposureTexture;
                if (realExpTex == null)
                    Debug.LogError("❌ 错误: AutoExposure 的 CurrentExposureTexture 是 NULL！(计算Pass可能没跑)");
                else if (!realExpTex.IsCreated())
                    Debug.LogError("❌ 错误: 曝光纹理 Object 存在，但 GPU 显存未创建 (IsCreated = false)！");
                else
                    Debug.Log($"✅ 曝光纹理状态: OK, Size={realExpTex.width}x{realExpTex.height}, Format={realExpTex.format}");
            }
            // ===================================================

            // 2. 准备纹理 (如果拿不到真的，就用绿色的调试图)
            var targetExposureTex = AutoExposureRenderFeature.CurrentExposureTexture;
            
            if (targetExposureTex == null || !targetExposureTex.IsCreated())
            {
                // 没拿到数据，强行塞绿色调试图
                // 如果屏幕变绿，说明管线是通的，只是数据没传过来
                Debug.LogError($"❌ 警告: 曝光纹理为空！使用绿色调试图 (1x1) 作为替代。");
            }

            // 3. 显式绑定全局变量
            // 注意：cmd.Blit 会自动绑定 _MainTex，所以这里只绑曝光图
            cmd.SetGlobalTexture(ExposureTexID, targetExposureTex);

            // 4. 执行绘制 (使用 cmd.Blit 替代 Blitter，更传统稳健)
            // 步骤 A: Screen -> Temp
            cmd.Blit(source, m_TempTexture, m_Material);
            
            // 步骤 B: Temp -> Screen
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
        // 创建一个纯绿色的备用图 (R=0, G=1, B=0)
        // 我们的 Shader 读取的是 G 通道，所以 G=1 意味着亮度不变 (x1.0)
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
        if (settings.shader != null && (renderingData.cameraData.cameraType == CameraType.Game || renderingData.cameraData.cameraType == CameraType.SceneView))
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