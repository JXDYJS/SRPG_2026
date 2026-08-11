Shader "Custom/RotateSkybox" {
    Properties {
        [NoScaleOffset] _Tex ("Cubemap", Cube) = "" {}
        _RotationSpeed ("Rotation Speed", Float) = 1.0     
    }
    SubShader {
        Tags { 
            "RenderPipeline" = "UniversalPipeline"
            "Queue" = "Background" 
            "RenderType" = "Background" 
        }
        Pass {
            Cull Off
            ZWrite Off

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            struct vertInData {
                float4 vertex : POSITION;
            };

            struct v2f {
                float4 pos : SV_POSITION;
                float3 viewDir : TEXCOORD0;
            };

            TEXTURECUBE(_Tex);
            SAMPLER(sampler_Tex);
            CBUFFER_START(UnityPerMaterial)
                float _RotationSpeed;
            CBUFFER_END

            v2f vert (vertInData v) {
                v2f o;
                o.pos = TransformObjectToHClip(v.vertex.xyz);
                o.viewDir = v.vertex.xyz;
                return o;
            }

            half4 frag (v2f i) : SV_TARGET {
                float angle = _Time.y * _RotationSpeed;
                float s, c;
                sincos(angle, s, c);
                float3 rotatedViewDir;
                rotatedViewDir.x = i.viewDir.x * c - i.viewDir.z * s;
                rotatedViewDir.y = i.viewDir.y;
                rotatedViewDir.z = i.viewDir.x * s + i.viewDir.z * c;
                return SAMPLE_TEXTURECUBE(_Tex, sampler_Tex, rotatedViewDir);
            }
            ENDHLSL
        }
    }
}