//CREATE BY GEMINI
Shader "Hidden/Custom/ApplyExposure"
{
    Properties
    {
        _MainTex ("Source", 2D) = "white" {}
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" "RenderPipeline" = "UniversalPipeline" }
        LOD 100
        ZWrite Off ZTest Always Cull Off

        Pass
        {
            Name "ApplyExposure_Pass"
            
            HLSLPROGRAM
            #pragma vertex Vert
            #pragma fragment Frag
            
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;
                float2 uv         : TEXCOORD0;
            };

            struct Varyings
            {
                float4 positionCS : SV_POSITION;
                float2 uv         : TEXCOORD0;
            };

            TEXTURE2D(_MainTex);
            SAMPLER(sampler_MainTex);

            TEXTURE2D(_GlobalExposureTexture);
            SAMPLER(sampler_GlobalExposureTexture);

            // 【关键修改】使用最基础的顶点变换，防止 Scene View 旋转导致画面扭曲
            Varyings Vert(Attributes input)
            {
                Varyings output;
                
                // TransformObjectToHClip 是 URP 中最标准的 MVP 变换
                // 对于 cmd.Blit 传入的 Quad，它能正确处理坐标
                output.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                output.uv = input.uv;
                
                return output;
            }

            half4 Frag(Varyings input) : SV_Target
            {
                // 1. 采样曝光 (G通道)
                // 假如 AutoExposure 没准备好，我们希望它默认是 1 (不黑屏)
                float4 expData = SAMPLE_TEXTURE2D(_GlobalExposureTexture, sampler_GlobalExposureTexture, float2(0.5, 0.5));
                float exposure = expData.g;

                // 2. 安全保护：如果没读到数据(0)或者是 NaN，强制设为 1.0 (原色显示)
                // 这样即使 Compute Shader 挂了，至少画面还是正常的，只是没有自动曝光而已
                if (exposure <= 0.0001 || IsNaN(exposure)) 
                {
                    exposure = 1.0; 
                }

                // 3. 采样屏幕
                float4 color = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, input.uv);
                
                // 4. 应用
                color.rgb *= exposure;
                
                return color;
            }
            ENDHLSL
        }
    }
}