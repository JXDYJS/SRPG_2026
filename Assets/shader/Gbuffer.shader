// ================ GBuffer 类型写入 Shader ================
// 供 GBufferRenderFeature 以 override 材质 + overrideMaterialPassIndex 调用，不参与常规渲染。
// pass 索引约定（与 GBufferRenderFeature.cs 的 DrawLayerPass 保持一致）:
//   0 = BlockVisible   1 = UnitVisible   2 = WaterVisible   3 = UnitOccupancy
// 目标缓冲 (R8G8B8A8_UNorm) 布局:
//   R = visibleType(低4bit) | occupancyType(高4bit)   0=sky 1=block 2=unit 3=water
//   G = objectID (1..255, 非单位=0)
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
        // 占用语义: ZTest Always 无视遮挡; Blend One One 累加高 nibble 与 objectID
        Pass
        {
            Name "GBufferUnitOccupancy"
            Tags { "LightMode" = "GBufferUnitOccupancy" }
            ZTest Always
            ZWrite Off
            Cull Off
            Blend One One

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
                // 高nibble=unit(2<<4=32), G=objectID, A=0(不被累加)
                return half4(32.0 / 255.0, (float)_ObjectID / 255.0, 0, 0);
            }
            ENDHLSL
        }
    }
}
