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
            // Blitter 官方库，提供标准全屏三角形顶点着色器和 _BlitTexture 声明
            #include "Packages/com.unity.render-pipelines.core/Runtime/Utilities/Blit.hlsl"

            TEXTURE2D(_GlobalExposureTexture);
            SAMPLER(sampler_GlobalExposureTexture);

            // Vert 和 Varyings 由 Blit.hlsl 提供，无需手写

            half4 Frag(Varyings input) : SV_Target
            {
                // Blit.hlsl 中 Varyings 的 UV 字段名为 texcoord
                float2 uv = input.texcoord;

                // 1. 采样曝光 (G通道)
                float4 expData = SAMPLE_TEXTURE2D(_GlobalExposureTexture, sampler_GlobalExposureTexture, float2(0.5, 0.5));
                float exposure = expData.g;

                // 2. 安全保护
                if (exposure <= 0.0001 || IsNaN(exposure)) 
                {
                    exposure = 1.0; 
                }

                // 3. 采样屏幕源图 (必须用 _BlitTexture)
                float4 color = SAMPLE_TEXTURE2D(_BlitTexture, sampler_LinearClamp, uv);

                // 4. 应用曝光
                color.rgb *= exposure;

                return color;
            }
            ENDHLSL
        }
    }
}