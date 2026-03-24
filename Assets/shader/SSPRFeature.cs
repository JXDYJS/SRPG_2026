using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class SSPRFeature : ScriptableRendererFeature
{
    [System.Serializable]
    public class SSPRSettings {
        public ComputeShader ssprCompute;
        public float waterHeight = 0;
        [Range(0, 2)] public float stretchIntensity = 1.0f;
        [Range(0, 1)] public float stretchThreshold = 0.5f;
        [Range(0, 1)] public float edgeFadeOut = 0.1f;
    }

    public SSPRSettings settings = new SSPRSettings();
    private SSPRPass m_Pass;

    public override void Create() {
        m_Pass = new SSPRPass(settings);
        m_Pass.renderPassEvent = RenderPassEvent.AfterRenderingOpaques;
    }

    public override void AddRenderPasses(ScriptableRenderer renderer, ref RenderingData renderingData) {
        renderer.EnqueuePass(m_Pass);
    }

    class SSPRPass : ScriptableRenderPass {
        private SSPRSettings settings;
        private ComputeBuffer hashBuffer;
        private RenderTexture reflectionRT;

        public SSPRPass(SSPRSettings settings) { this.settings = settings; }

        public override void Execute(ScriptableRenderContext context, ref RenderingData renderingData) {
            var cameraData = renderingData.cameraData;
            // 1. 严格过滤非游戏相机
            if (cameraData.isSceneViewCamera || cameraData.isPreviewCamera) return;
            if (settings.ssprCompute == null) return;

            var cmd = CommandBufferPool.Get("SSPR_Pass");
            var camera = cameraData.camera;
            int w = camera.pixelWidth;
            int h = camera.pixelHeight;

            // 缓存管理
            if (hashBuffer == null || hashBuffer.count != w * h) {
                if (hashBuffer != null) hashBuffer.Release();
                hashBuffer = new ComputeBuffer(w * h, sizeof(uint));
                if (reflectionRT != null) reflectionRT.Release();
                reflectionRT = new RenderTexture(w, h, 0, RenderTextureFormat.ARGBHalf) { enableRandomWrite = true };
                reflectionRT.Create();
            }

            var cs = settings.ssprCompute;
            int kernelClear = cs.FindKernel("SSPR_Clear");
            int kernelRender = cs.FindKernel("SSPR_Render");
            int kernelResolve = cs.FindKernel("SSPR_Resolve");

            // // 2. 获取当前相机的 GPU 矩阵 (这是最稳妥的办法)
            // Matrix4x4 gpuProj = GL.GetGPUProjectionMatrix(camera.projectionMatrix, false);
            // Matrix4x4 viewMat = camera.worldToCameraMatrix;
            // Matrix4x4 vpMatrix = gpuProj * viewMat;

            // ----------------------------------------------------
            // 2. 获取当前相机的 URP 标准矩阵 (这是最稳妥的办法)
            // 放弃 GL.GetGPUProjectionMatrix，直接用 URP 封装好的数据
            // ----------------------------------------------------
            Matrix4x4 viewMat = cameraData.GetViewMatrix();
            Matrix4x4 projMat = cameraData.GetProjectionMatrix();
            Matrix4x4 vpMatrix = projMat * viewMat;

            // 如果是渲染到纹理（URP 默认也是），projMat 内部已经处理了 Y 轴翻转，
            // 此时传给 UNITY_MATRIX_I_VP 的矩阵在垂直方向上就是倒着的，这完全正确。

            cmd.SetComputeMatrixParam(cs, "UNITY_MATRIX_VP", vpMatrix);
            cmd.SetComputeMatrixParam(cs, "UNITY_MATRIX_I_VP", vpMatrix.inverse);

            // 3. 显式绑定：只使用当前相机的资源
            cmd.SetComputeTextureParam(cs, kernelRender, "_CameraColorTexture", cameraData.renderer.cameraColorTargetHandle);
            cmd.SetComputeTextureParam(cs, kernelRender, "_CameraDepthTexture", cameraData.renderer.cameraDepthTargetHandle);
            
            cmd.SetComputeMatrixParam(cs, "UNITY_MATRIX_VP", vpMatrix);
            cmd.SetComputeMatrixParam(cs, "UNITY_MATRIX_I_VP", vpMatrix.inverse);

            // 4. 传递参数
            cmd.SetComputeVectorParam(cs, "_SSPR_RT_Size", new Vector4(w, h, 1f / w, 1f / h));
            cmd.SetComputeFloatParam(cs, "_ReflectPlaneHeight", settings.waterHeight);
            cmd.SetComputeFloatParam(cs, "_StretchIntensity", settings.stretchIntensity);
            cmd.SetComputeFloatParam(cs, "_StretchThreshold", settings.stretchThreshold);
            cmd.SetComputeFloatParam(cs, "_EdgeFadeOut", settings.edgeFadeOut);
            cmd.SetComputeVectorParam(cs, "_CameraDirectionY", camera.transform.forward);
            cmd.SetComputeVectorParam(cs, "_ProjectionParams", new Vector4(SystemInfo.usesReversedZBuffer ? -1 : 1, camera.nearClipPlane, camera.farClipPlane, 1 / camera.farClipPlane));

            // 5. 绑定 Buffer 与 Dispatch
            cmd.SetComputeBufferParam(cs, kernelClear, "_HashBuffer", hashBuffer);
            cmd.SetComputeBufferParam(cs, kernelRender, "_HashBuffer", hashBuffer);
            cmd.SetComputeBufferParam(cs, kernelResolve, "_HashBuffer", hashBuffer);
            cmd.SetComputeTextureParam(cs, kernelClear, "_SSPR_ReflectionTexture", reflectionRT);
            cmd.SetComputeTextureParam(cs, kernelResolve, "_SSPR_ReflectionTexture", reflectionRT);
            cmd.SetComputeTextureParam(cs, kernelRender, "_SSPR_ReflectionTexture", reflectionRT);//DEBUG

            int groupsX = Mathf.CeilToInt(w / 8.0f);
            int groupsY = Mathf.CeilToInt(h / 8.0f);

            cmd.DispatchCompute(cs, kernelClear, groupsX, groupsY, 1);
            cmd.DispatchCompute(cs, kernelRender, groupsX, groupsY, 1);
            cmd.DispatchCompute(cs, kernelResolve, groupsX, groupsY, 1);

            // 6. 发布全局纹理供 Water Shader 使用
            cmd.SetGlobalTexture("_SSPR_ReflectionTexture", reflectionRT);
            
            context.ExecuteCommandBuffer(cmd);
            CommandBufferPool.Release(cmd);
        }

        public void Cleanup() {
            if (hashBuffer != null) hashBuffer.Release();
            if (reflectionRT != null) reflectionRT.Release();
        }
    }
}