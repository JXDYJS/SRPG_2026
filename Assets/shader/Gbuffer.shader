// ================ GBuffer 类型写入 Shader ================
// 供 GBufferRenderFeature 以 override 材质 + overrideMaterialPassIndex 调用，不参与常规渲染。
// pass 索引约定（与 GBufferRenderFeature.cs 的 DrawLayerPass 保持一致）:
//   0 = BlockVisible   1 = UnitVisible   2 = WaterVisible   3 = UnitOccupancy   4 = UnitDepth
// 目标缓冲 (R8G8B8A8_UNorm) 布局:
//   R = visibleType(低4bit) | occupancyType(高4bit)   0=sky 1=block 2=unit 3=water
//       单位像素由 pass3 覆盖为 34 (占用=2<<4 | 可见=2)，穿墙像素同样标记为 unit
//   G = objectID (1..255, 非单位=0)，单位像素为最近单位 id
//   B = 空闲
//   A = mask (1=已标记, 0=sky)
Shader "Custom/Gbuffer"
{
    Properties
    {
        _ObjectID("ObjectID", Int) = 0
    }

    SubShader
    {
        Tags { "RenderPipeline" = "UniversalPipeline" }

        // ============ pass 0: BlockVisible ============
        // 可见语义: 对着相机真实深度 ZTest LEqual, 不写深度
        Pass
        {
            Name "GBufferBlock"
            Tags { "LightMode" = "GBufferBlock" }
            ZTest LEqual
            ZWrite Off
            Cull Off

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            CBUFFER_START(UnityPerMaterial)
                int _ObjectID;
            CBUFFER_END

            struct VertIn
            {
                float4 positionOS : POSITION;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                return half4(1.0 / 255.0, 0, 0, 1); // type=block(1), mask=1
            }
            ENDHLSL
        }

        // ============ pass 1: UnitVisible ============
        Pass
        {
            Name "GBufferUnitVisible"
            Tags { "LightMode" = "GBufferUnitVisible" }
            ZTest LEqual
            ZWrite Off
            Cull Off

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            CBUFFER_START(UnityPerMaterial)
                int _ObjectID;
            CBUFFER_END

            struct VertIn
            {
                float4 positionOS : POSITION;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                return half4(2.0 / 255.0, 0, 0, 1); // type=unit(2), mask=1
            }
            ENDHLSL
        }

        // ============ pass 2: WaterVisible ============
        Pass
        {
            Name "GBufferWaterVisible"
            Tags { "LightMode" = "GBufferWaterVisible" }
            ZTest LEqual
            ZWrite Off
            Cull Off

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            CBUFFER_START(UnityPerMaterial)
                int _ObjectID;
            CBUFFER_END

            struct VertIn
            {
                float4 positionOS : POSITION;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                return half4(3.0 / 255.0, 0, 0, 1); // type=water(3), mask=1
            }
            ENDHLSL
        }

        // ============ pass 3: UnitOccupancy ============
        // 占用语义: ZTest LEqual 对着单位深度RT（最近者赢）; 覆盖写，不再加法累加
        Pass
        {
            Name "GBufferUnitOccupancy"
            Tags { "LightMode" = "GBufferUnitOccupancy" }
            ZTest LEqual
            ZWrite Off
            Cull Off

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            CBUFFER_START(UnityPerMaterial)
                int _ObjectID;
            CBUFFER_END

            struct VertIn
            {
                float4 positionOS : POSITION;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                // 高nibble=unit(2<<4=32) | 低nibble=unit(2) = 34; G=objectID, A=1(mask)
                return half4(34.0 / 255.0, (float)_ObjectID / 255.0, 0, 1);
            }
            ENDHLSL
        }

        // ============ pass 4: UnitDepth ============
        // 只写深度：单位们互相 depth test，最近的单位留下深度（不写颜色）
        Pass
        {
            Name "GBufferUnitDepth"
            Tags { "LightMode" = "GBufferUnitDepth" }
            ZTest LEqual
            ZWrite On
            Cull Off
            ColorMask 0

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            CBUFFER_START(UnityPerMaterial)
                int _ObjectID;
            CBUFFER_END

            struct VertIn
            {
                float4 positionOS : POSITION;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                return 0;
            }
            ENDHLSL
        }
    }
}
