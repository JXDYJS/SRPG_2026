Shader "Custom/URP_MC_Panorama_OfficialMethod"
{
    Properties
    {
        [NoScaleOffset] _FrontTex ("Front (+Z)", 2D) = "white" {}
        [NoScaleOffset] _RightTex ("Right (+X)", 2D) = "white" {}
        [NoScaleOffset] _BackTex  ("Back (-Z)", 2D) = "white" {}
        [NoScaleOffset] _LeftTex  ("Left (-X)", 2D) = "white" {}
        [NoScaleOffset] _UpTex    ("Up (+Y)", 2D) = "white" {}
        [NoScaleOffset] _DownTex  ("Down (-Y)", 2D) = "white" {}
        
        _RotationSpeed ("Rotation Speed", Float) = 0.05
        _Softness ("MC Softness (Blend Strength)", Range(0.0, 10.0)) = 4.0
    }

    SubShader
    {
        Tags 
        { 
            "RenderPipeline" = "UniversalPipeline"
            "Queue" = "Background" 
            "RenderType" = "Background" 
            "PreviewType" = "Skybox"
        }

        Pass
        {
            Cull Off
            ZWrite Off

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;
            };

            struct Varyings
            {
                float4 positionCS : SV_POSITION;
                float3 viewDirOS  : TEXCOORD0;
            };

            TEXTURE2D(_FrontTex); SAMPLER(sampler_FrontTex);
            TEXTURE2D(_RightTex); SAMPLER(sampler_RightTex);
            TEXTURE2D(_BackTex);  SAMPLER(sampler_BackTex);
            TEXTURE2D(_LeftTex);  SAMPLER(sampler_LeftTex);
            TEXTURE2D(_UpTex);    SAMPLER(sampler_UpTex);
            TEXTURE2D(_DownTex);  SAMPLER(sampler_DownTex);

            CBUFFER_START(UnityPerMaterial)
                float _RotationSpeed;
                float _Softness;
            CBUFFER_END

            // =========================================================
            // 核心 1：解决接缝缝隙的关键数学公式 (UV Clamp Padding)
            // 将 [0, 1] 的 UV 映射缩放到 [0.5/256, 255.5/256]，彻底防止采到贴图外边缘
            // =========================================================
            float2 FixSeamsUV(float2 uv)
            {
                // 256 是贴图尺寸，0.5 个像素偏移量
                return clamp(uv, 0.5 / 256.0, 255.5 / 256.0);
            }

            // 立方体面采样
            half4 SampleCubeFace(float3 dir)
            {
                float3 absDir = abs(dir);
                float2 uv = float2(0, 0);

                if (absDir.x >= absDir.y && absDir.x >= absDir.z)
                {
                    if (dir.x > 0.0)
                    {
                        uv = float2(-dir.z, dir.y) / absDir.x * 0.5 + 0.5;
                        return SAMPLE_TEXTURE2D(_RightTex, sampler_RightTex, FixSeamsUV(uv));
                    }
                    else
                    {
                        uv = float2(dir.z, dir.y) / absDir.x * 0.5 + 0.5;
                        return SAMPLE_TEXTURE2D(_LeftTex, sampler_LeftTex, FixSeamsUV(uv));
                    }
                }
                else if (absDir.y >= absDir.x && absDir.y >= absDir.z)
                {
                    if (dir.y > 0.0)
                    {
                        uv = float2(dir.x, -dir.z) / absDir.y * 0.5 + 0.5;
                        return SAMPLE_TEXTURE2D(_UpTex, sampler_UpTex, FixSeamsUV(uv));
                    }
                    else
                    {
                        uv = float2(dir.x, dir.z) / absDir.y * 0.5 + 0.5;
                        return SAMPLE_TEXTURE2D(_DownTex, sampler_DownTex, FixSeamsUV(uv));
                    }
                }
                else
                {
                    if (dir.z > 0.0)
                    {
                        uv = float2(dir.x, dir.y) / absDir.z * 0.5 + 0.5;
                        return SAMPLE_TEXTURE2D(_FrontTex, sampler_FrontTex, FixSeamsUV(uv));
                    }
                    else
                    {
                        uv = float2(-dir.x, dir.y) / absDir.z * 0.5 + 0.5;
                        return SAMPLE_TEXTURE2D(_BackTex, sampler_BackTex, FixSeamsUV(uv));
                    }
                }
            }

            Varyings vert (Attributes input)
            {
                Varyings output;
                output.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                output.viewDirOS = input.positionOS.xyz;
                return output;
            }

            half4 frag (Varyings input) : SV_Target
            {
                float angle = _Time.y * _RotationSpeed;
                
                // 基础旋转矩阵
                float s, c;
                sincos(angle, s, c);
                float3 mainDir;
                mainDir.x = input.viewDirOS.x * c - input.viewDirOS.z * s;
                mainDir.y = input.viewDirOS.y;
                mainDir.z = input.viewDirOS.x * s + input.viewDirOS.z * c;

                // =========================================================
                // 核心 2：复刻 MC 多重旋转角度叠加 (消融混合)
                // 原版通过旋转微调视角，将采样点打散，消除拉伸感和硬边缘
                // =========================================================
                float offsetAngle = _Softness * 0.002;
                
                // 微调角度 1
                float s1, c1;
                sincos(angle + offsetAngle, s1, c1);
                float3 dir1 = float3(input.viewDirOS.x * c1 - input.viewDirOS.z * s1, input.viewDirOS.y, input.viewDirOS.x * s1 + input.viewDirOS.z * c1);

                // 微调角度 2
                float s2, c2;
                sincos(angle - offsetAngle, s2, c2);
                float3 dir2 = float3(input.viewDirOS.x * c2 - input.viewDirOS.z * s2, input.viewDirOS.y, input.viewDirOS.x * s2 + input.viewDirOS.z * c2);

                // 三次角度混合采样
                half4 colMain = SampleCubeFace(mainDir);
                half4 col1    = SampleCubeFace(dir1);
                half4 col2    = SampleCubeFace(dir2);

                return (colMain * 0.5) + (col1 * 0.25) + (col2 * 0.25);
            }
            ENDHLSL
        }
    }
}