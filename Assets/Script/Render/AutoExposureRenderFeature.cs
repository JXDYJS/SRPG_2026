using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class AutoExposureRenderFeature : ScriptableRendererFeature
{
    // ... 你的 Settings 类保持不变 ...
    [System.Serializable]
    public class Settings
    {
        public ComputeShader computeShader;
        public bool showLog = true;
        [Range(0.1f, 5.0f)] public float keyValue = 0.5f;
        [Range(-4.0f, 4.0f)] public float compensationEV = 0.0f;
        public float speedDarkToLight = 3.0f;
        public float speedLightToDark = 1.0f;
        public float minLuminance = 0.001f;
        public float maxLuminance = 20.0f;
    }

    public Settings settings = new Settings();
    AutoExposurePass m_ScriptablePass;
    RenderTexture m_RawTexture; 

    // 【新增 1】建立一个全局静态访问点，让 ApplyFeature 能百分百找到它
    public static RenderTexture CurrentExposureTexture;

    class AutoExposurePass : ScriptableRenderPass
    {
        // ... 你的变量保持不变 ...
        string m_ProfilerTag = "Auto Exposure Compute";
        Settings m_Settings;
        RenderTexture m_TargetRT;
        ComputeShader m_ComputeShader;

        public AutoExposurePass(Settings settings)
        {
            m_Settings = settings;
            m_ComputeShader = settings.computeShader;
        }

        public void Setup(RenderTexture rt)
        {
            m_TargetRT = rt;
        }

        public override void Configure(CommandBuffer cmd, RenderTextureDescriptor cameraTextureDescriptor)
        {
            ConfigureInput(ScriptableRenderPassInput.Color);
        }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData)
        {
            if (m_ComputeShader == null || m_TargetRT == null) return;

            // 【新增 2】每一帧把当前的纹理挂到静态变量上
            // 这样无论 Unity 的 GlobalTexture 机制是否失效，Apply 阶段都能直接读到这个对象
            AutoExposureRenderFeature.CurrentExposureTexture = m_TargetRT;

            CommandBuffer cmd = CommandBufferPool.Get(m_ProfilerTag);
            RTHandle source = renderingData.cameraData.renderer.cameraColorTargetHandle;

            // ... 你的计算逻辑完全保持不变 ...
            cmd.SetComputeTextureParam(m_ComputeShader, 0, "_SourceTexture", source);
            cmd.SetComputeTextureParam(m_ComputeShader, 0, "_OutputTexture", m_TargetRT);
            cmd.SetComputeFloatParam(m_ComputeShader, "_DeltaTime", Time.deltaTime);
            cmd.SetComputeFloatParam(m_ComputeShader, "_KeyValue", m_Settings.keyValue);
            cmd.SetComputeFloatParam(m_ComputeShader, "_SpeedDarkToLight", m_Settings.speedDarkToLight);
            cmd.SetComputeFloatParam(m_ComputeShader, "_SpeedLightToDark", m_Settings.speedLightToDark);
            cmd.SetComputeFloatParam(m_ComputeShader, "_MinLuminance", m_Settings.minLuminance);
            cmd.SetComputeFloatParam(m_ComputeShader, "_MaxLuminance", m_Settings.maxLuminance);
            cmd.SetComputeFloatParam(m_ComputeShader, "_CompensationEV", m_Settings.compensationEV);

            cmd.DispatchCompute(m_ComputeShader, 0, 1, 1, 1);
            
            // 依然保留 GlobalTexture 设置，以防其他 Shader 需要
            cmd.SetGlobalTexture("_GlobalExposureTexture", m_TargetRT);

            context.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
        }
    }

    // ... Create, AddRenderPasses, CheckAndCreateTexture 保持不变 ...
    public override void Create()
    {
        m_ScriptablePass = new AutoExposurePass(settings);
        m_ScriptablePass.renderPassEvent = RenderPassEvent.BeforeRenderingPostProcessing;
    }

    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData)
    {
        // 如果 Shader 没丢
        if (settings.computeShader == null) return;

        // 【关键修改】只允许 Game 类型的相机运行 (排除 SceneView, Preview, Reflection 等)
        if (renderingData.cameraData.cameraType == CameraType.Game) 
        {
            CheckAndCreateTexture();
            m_ScriptablePass.Setup(m_RawTexture);
            renderer.EnqueuePass(m_ScriptablePass);
        }
    }

    void CheckAndCreateTexture()
    {
        if (m_RawTexture != null && m_RawTexture.IsCreated()) return;
        if (m_RawTexture != null) m_RawTexture.Release();
        m_RawTexture = new RenderTexture(1, 1, 0, RenderTextureFormat.RGFloat);
        m_RawTexture.enableRandomWrite = true;
        m_RawTexture.useMipMap = false;
        m_RawTexture.autoGenerateMips = false;
        m_RawTexture.filterMode = FilterMode.Point;
        m_RawTexture.wrapMode = TextureWrapMode.Clamp;
        m_RawTexture.Create();
        m_RawTexture.name = "AutoExposure_RAW_Manual";
    }

    protected override void Dispose(bool disposing)
    {
        if (m_RawTexture != null) { m_RawTexture.Release(); DestroyImmediate(m_RawTexture); }
    }
}