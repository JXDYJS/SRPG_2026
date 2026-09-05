// ================ GBuffer 类型写入 Shader ================
// 供 GBufferRenderFeature 以 override 材质 + overrideMaterialPassIndex 调用，不参与常规渲染。
// pass 索引约定（与 GBufferRenderFeature.cs 的 DrawLayerPass 保持一致）:
//   0 = BlockVisible   1 = UnitVisible   2 = WaterVisible   3 = UnitOccupancy   4 = UnitDepth
// 目标缓冲 (R8G8B8A8_UNorm) 布局: (与 GBufferIds.hlsl / GbufferIdScheme.cs 保持一致)
//   R = visibleFaceID: 0=sky 1..250=可见单位id 253=墙 254=水
//       pass0/1/2 按相机深度写入(可见面), pass3(ColorMask G)不覆盖
//   G = nearestUnitID (1..250, 0=无单位): pass3 按单位深度写入 —— 墙后单位(透视像素)也记录
//       单位可见性判断: R==G 可见, R!=G 单位被遮挡(透视描边)
//   B = normalWS.x 编码:(x+1)/2    -> 可见面法线(标准 GBuffer normal)
//   A = normalWS.z 编码:(z+1)/2    -> 由 pass0/1/2 按相机深度写入，pass3(ColorMask G)不覆盖
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
            #include "Assets/shader/GBufferIds.hlsl"
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
                // visible face = wall constant; B/A = normalWS.x/z 编码 (n+1)/2
                return half4((float)GBUFFER_ID_WALL / 255.0, 0, (n.x + 1.0) * 0.5, (n.z + 1.0) * 0.5);
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
            #include "Assets/shader/GBufferIds.hlsl"
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
                // visible face = this unit's id; B/A = normalWS.x/z 编码 (n+1)/2
                return half4((float)_ObjectID / 255.0, 0, (n.x + 1.0) * 0.5, (n.z + 1.0) * 0.5);
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
            #include "Assets/shader/GBufferIds.hlsl"
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
                // visible face = water constant; B/A = normalWS.x/z 编码 (n+1)/2
                return half4((float)GBUFFER_ID_WATER / 255.0, 0, (n.x + 1.0) * 0.5, (n.z + 1.0) * 0.5);
            }
            ENDHLSL
        }

        // ============ pass 3: UnitOccupancy ============
        // 占用语义: ZTest LEqual 对着单位深度RT（最近者赢）; 覆盖写，不再加法累加
        // ColorMask G: 只写最近单位 ID，R(可见面id)/B/A 保留 —— 透视描边不污染可见面数据
        Pass
        {
            Name "GBufferUnitOccupancy"
            Tags { "LightMode" = "GBufferUnitOccupancy" }
            ZTest LEqual
            ZWrite Off
            Cull Off
            ColorMask G

            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "Assets/shader/GBufferIds.hlsl"
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
                // 最近单位 id 写入 G; R/B/A 由 ColorMask G 屏蔽
                return half4(0, (float)_ObjectID / 255.0, 0, 0);
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
