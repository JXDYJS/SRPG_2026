Shader "Custom/URP_HologramCube"
{
    Properties
    {
        [HDR] _BaseColor("发光颜色 (Base Color)", Color) = (0.0, 0.8, 1.0, 1.0)
        _WaveFrequency("波浪频率 (Wave Frequency)", Float) = 15.0
        _WaveSpeed("波浪速度 (Wave Speed)", Float) = 3.0
        _NoiseScale("噪声缩放 (Noise Scale)", Float) = 5.0
        _Distortion("噪声扰动强度 (Distortion)", Float) = 0.2
        _EdgeWidth("边缘渐变宽度 (Smoothstep Edge)", Float) = 0.1
    }

    SubShader
    {
        Tags 
        {
            "RenderType"="Transparent"
            "Queue"="Transparent"
            "RenderPipeline"="UniversalPipeline"
        }
        LOD 100

        Pass
        {
            Name "HologramPass"
            
            // Additive 叠加发光混合模式
            Blend SrcAlpha One
            ZWrite Off
            Cull Off // 双面渲染，让方块内部也能看到

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // 引入 URP 核心库
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;
                float3 normalOS   : NORMAL;
            };

            struct Varyings
            {
                float4 positionHCS : SV_POSITION;
                float3 positionOS  : TEXCOORD0;
                float3 normalOS    : TEXCOORD1;
            };

            CBUFFER_START(UnityPerMaterial)
                half4 _BaseColor;
                float _WaveFrequency;
                float _WaveSpeed;
                float _NoiseScale;
                float _Distortion;
                float _EdgeWidth;
            CBUFFER_END

            float random(float2 uv)
            {
                return frac(sin(dot(uv, float2(12.9898, 78.233))) * 43758.5453123);
            }

            float noise(float2 uv)
            {
                float2 i = floor(uv);
                float2 f = frac(uv);
                float2 u = f * f * (3.0 - 2.0 * f); // 缓动曲线

                float a = random(i + float2(0.0, 0.0));
                float b = random(i + float2(1.0, 0.0));
                float c = random(i + float2(0.0, 1.0));
                float d = random(i + float2(1.0, 1.0));

                return lerp(lerp(a, b, u.x), lerp(c, d, u.x), u.y);
            }

            Varyings vert(Attributes input)
            {
                Varyings output;
                output.positionHCS = TransformObjectToHClip(input.positionOS.xyz);
                output.positionOS = input.positionOS.xyz;
                output.normalOS = input.normalOS;
                return output;
            }

            half4 frag(Varyings input) : SV_Target
            {
                if (abs(input.normalOS.y) > 0.5) 
                {
                    discard; 
                }

                float horizontalCoord = input.positionOS.x * abs(input.normalOS.z) + input.positionOS.z * abs(input.normalOS.x);
                
                float height = input.positionOS.y + 0.5;

                float2 surfaceUV = float2(horizontalCoord, height);

                float time = _Time.y;
                float2 noiseUV = surfaceUV * _NoiseScale + float2(0, -time * 0.5); 
                const float n = 0;

                float wave = sin(height * _WaveFrequency - time * _WaveSpeed + n * _Distortion);
                
                float y = wave * 0.5 + 0.5;

                float z = height * 1.0 ;

                float emissionShape = smoothstep(y, y + _EdgeWidth, z);

                float verticalFade = 1.0 - height;

                float finalAlpha = emissionShape * verticalFade;

                return half4(_BaseColor.rgb, finalAlpha * _BaseColor.a);
            }
            ENDHLSL
        }
    }
}
