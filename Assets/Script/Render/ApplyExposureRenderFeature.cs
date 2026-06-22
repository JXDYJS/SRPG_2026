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
        string m_ProfilerTag = "Apply Auto Exposure";
        
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

            // ================== C#调试日志 ==================
            // if (Time.time - lastDebugTime > 1.0f)
            // {
            //     lastDebugTime = Time.time;
            //     Debug.Log("--- [ApplyExposure] 开始每秒体检 ---");

            //     // 检查 1: 屏幕源是否有效
            //     if (source == null || source.rt == null)
            //         Debug.LogError("❌ 错误: Camera Color Target (Source) 为空！URP 可能没把画面传过来。");
            //     else
            //         Debug.Log($"✅ 屏幕源状态: ID={source.nameID}, Size={source.rt.width}x{source.rt.height}");

            //     // 检查 2: 曝光纹理是否有效
            //     var realExpTex = AutoExposureRenderFeature.CurrentExposureTexture;
            //     if (realExpTex == null)
            //         Debug.LogError("❌ 错误: AutoExposure 的 CurrentExposureTexture 是 NULL！(计算Pass可能没跑)");
            //     else if (!realExpTex.IsCreated())
            //         Debug.LogError("❌ 错误: 曝光纹理 Object 存在，但 GPU 显存未创建 (IsCreated = false)！");
            //     else
            //         Debug.Log($"✅ 曝光纹理状态: OK, Size={realExpTex.width}x{realExpTex.height}, Format={realExpTex.format}");
            // }
            // ===================================================

            // 2. 准备纹理 (如果拿不到真的，就用安全的备用图)
            RenderTexture targetExposureTex = AutoExposureRenderFeature.CurrentExposureTexture;
            
            // 3. 显式绑定全局变量 (暂停时 Compute Pass 停摆致纹理失效，用 Stub 兜底)
            if (targetExposureTex == null || !targetExposureTex.IsCreated())
            {
                Debug.LogError($"[ApplyExposure] 曝光纹理失效 (null={targetExposureTex == null}, created={targetExposureTex?.IsCreated()})，使用 Stub 兜底");
                cmd.SetGlobalTexture(ExposureTexID, m_StubTexture);
            }
            else
            {
                cmd.SetGlobalTexture(ExposureTexID, targetExposureTex);
            }

            // 4. 执行绘制 (使用 URP 官方 Blitter)
            // Blitter 内部会自动处理 _ProjectionParams 和所有翻转逻辑
            Blitter.BlitCameraTexture(cmd, source, m_TempTexture, m_Material, 0);

            // 第二次 Blit 拷回屏幕。因为不需要特殊材质，直接传 source
            Blitter.BlitCameraTexture(cmd, m_TempTexture, source);

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
        // 【修改】只保留 Game 类型的相机
        // 确保它和 AutoExposure 的判断条件完全一致！
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