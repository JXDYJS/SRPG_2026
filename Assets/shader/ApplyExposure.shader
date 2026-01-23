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

            Varyings Vert(Attributes input)
            {
                Varyings output;
                VertexPositionInputs vertexInput = GetVertexPositionInputs(input.positionOS.xyz);
                output.positionCS = vertexInput.positionCS;
                output.uv = input.uv;
                return output;
            }

            half4 Frag(Varyings input) : SV_Target
            {
                // ===========================================
                // 🚨 终极调试：如果屏幕不是红色的，说明 RenderFeature 没运行！
                // (取消下面这一行的注释)
                // return half4(1, 0, 0, 1); 
                // ===========================================

                // 1. 采样曝光 (G通道)
                // 我们在 C# 里做好了 fallback，如果拿不到 AutoExposure，就会拿到一张纯绿色的图 (G=1)
                float4 expData = SAMPLE_TEXTURE2D(_GlobalExposureTexture, sampler_GlobalExposureTexture, float2(0.5, 0.5));
                float exposure = expData.g;

                // 2. 采样屏幕
                float4 color = SAMPLE_TEXTURE2D(_MainTex, sampler_MainTex, input.uv);
                
                // 3. 应用
                color.rgb *= exposure;
                
                return color;
            }
            ENDHLSL
        }
    }
}