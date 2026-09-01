// ================ GBuffer 类型写入 Shader ================
// 供 GBufferRenderFeature 以 override 材质 + overrideMaterialPassIndex 调用，不参与常规渲染。
// pass 索引约定（与 GBufferRenderFeature.cs 的 DrawLayerPass 保持一致）:
//   0 = BlockVisible   1 = UnitVisible   2 = WaterVisible   3 = UnitOccupancy   4 = UnitDepth
// 目标缓冲 (R8G8B8A8_UNorm) 布局:
//   R = visibleType(低4bit) | occupancyType(高4bit)   0=sky 1=block 2=unit 3=water
//       单位像素由 pass3 覆盖为 34 (占用=2<<4 | 可见=2)，穿墙像素同样标记为 unit
//   G = objectID (1..255, 非单位=0)，单位像素为最近单位 id
//   B = normalWS.x 编码:(x+1)/2    -> 可见面法线(标准 GBuffer normal)
//   A = normalWS.z 编码:(z+1)/2    -> 由 pass0/1/2 按相机深度写入，pass3(ColorMask RG)不覆盖
//       重建 y = sqrt(1 - x^2 - z^2)，天空像素为 0(由 R==0 判定)
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
                float3 normalOS : NORMAL;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
                float3 normalWS : TEXCOORD0;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                o.normalWS = TransformObjectToWorldNormal(input.normalOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                float3 n = input.normalWS;
                if (dot(n, n) < 1e-6) n = float3(0, 1, 0); // fallback for meshes without NORMALs
                else n = normalize(n);
                // type=block(1); B/A = normalWS.x/z 编码 (n+1)/2
                return half4(1.0 / 255.0, 0, (n.x + 1.0) * 0.5, (n.z + 1.0) * 0.5);
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
                float3 normalOS : NORMAL;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
                float3 normalWS : TEXCOORD0;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                o.normalWS = TransformObjectToWorldNormal(input.normalOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                float3 n = input.normalWS;
                if (dot(n, n) < 1e-6) n = float3(0, 1, 0); // fallback for meshes without NORMALs
                else n = normalize(n);
                // type=unit(2); B/A = normalWS.x/z 编码 (n+1)/2
                return half4(2.0 / 255.0, 0, (n.x + 1.0) * 0.5, (n.z + 1.0) * 0.5);
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
                float3 normalOS : NORMAL;
            };

            struct VertOut
            {
                float4 positionCS : SV_POSITION;
                float3 normalWS : TEXCOORD0;
            };

            VertOut vert(VertIn input)
            {
                VertOut o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                o.normalWS = TransformObjectToWorldNormal(input.normalOS.xyz);
                return o;
            }

            half4 frag(VertOut input) : SV_Target
            {
                float3 n = input.normalWS;
                if (dot(n, n) < 1e-6) n = float3(0, 1, 0); // fallback for meshes without NORMALs
                else n = normalize(n);
                // type=water(3); B/A = normalWS.x/z 编码 (n+1)/2
                return half4(3.0 / 255.0, 0, (n.x + 1.0) * 0.5, (n.z + 1.0) * 0.5);
            }
            ENDHLSL
        }

        // ============ pass 3: UnitOccupancy ============
        // 占用语义: ZTest LEqual 对着单位深度RT（最近者赢）; 覆盖写，不再加法累加
        // ColorMask RG: 只覆盖类型+ID，B/A 保留可见面法线（透视描边不污染法线）
        Pass
        {
            Name "GBufferUnitOccupancy"
            Tags { "LightMode" = "GBufferUnitOccupancy" }
            ZTest LEqual
            ZWrite Off
            Cull Off
            ColorMask RG

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
                // 高nibble=unit(2<<4=32) | 低nibble=unit(2) = 34; G=objectID
                // B/A 由 ColorMask RG 屏蔽，保留可见面法线
                return half4(34.0 / 255.0, (float)_ObjectID / 255.0, 0, 0);
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
