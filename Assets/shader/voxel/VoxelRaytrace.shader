// Debug full-screen pass: overwrites the final camera image with the voxel
// ray-march result, ignoring everything rendered before it. Ray directions
// come from camera intrinsics (near-plane reconstruction), so no depth
// texture is needed. Consumed by VoxelRaytraceFeature.
Shader "Hidden/VoxelRaytrace"
{
    SubShader
    {
        Tags { "RenderType" = "Opaque" }
        Cull Off
        ZWrite Off
        ZTest Always

        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 5.0

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.core/Runtime/Utilities/Blit.hlsl"
            #include "Assets/shader/voxel/VoxelRaytrace.hlsl"

            // Diagnostic global set by the renderer feature. When > 0 the fragment
            // outputs a gradient pair instead of the ray-march:
            // red = NDC scanline (presented row), green = ray up-ness.
            float _VoxelDiagMode;

            struct RaytraceAttributes
            {
                uint vertexID : SV_VertexID;
            };

            struct RaytraceVaryings
            {
                float4 positionCS : SV_POSITION;
            };

            RaytraceVaryings vert(RaytraceAttributes input)
            {
                RaytraceVaryings o;
                o.positionCS = GetFullScreenTriangleVertexPosition(input.vertexID);
                return o;
            }

            half4 frag(RaytraceVaryings i) : SV_Target
            {
                // Screen pixel -> NDC, then view-space ray from the
                // projection terms; camera-relative safe because only the
                // rotation of the inverse view matrix is used.
                //
                // Official cross-platform path: GetNormalizedScreenSpaceUV
                // (URP's own effects use it). Its internal Y flip reads the
                // _ScaleBiasRt global, which nothing in URP 14 ever sets;
                // VoxelRaytraceFeature feeds it (1,1,0,0) explicitly so the
                // flip cannot be silently neutralized by the engine default.
                float2 ndc = GetNormalizedScreenSpaceUV(i.positionCS) * 2.0 - 1.0;
                float3 viewDir = normalize(float3(
                    ndc.x / UNITY_MATRIX_P._m00,
                    ndc.y / UNITY_MATRIX_P._m11,
                    -1.0));
                float3 dir = normalize(mul((float3x3)UNITY_MATRIX_I_V, viewDir));

                if (_VoxelDiagMode > 0.5)
                {
                    // Three independent facts, one glance:
                    //   red   = raw RT row fraction (sv / height): measures
                    //           directly whether the presented top shows
                    //           RT row 0 (red dark at top) or row H (red
                    //           bright at top) - the blit/copy row order.
                    //   green = 1 where rays point UP (world truth): correct
                    //           images have green at the TOP, mirrored has
                    //           green at the BOTTOM.
                    //   blue  = 1: build fingerprint (v3 shader active).
                    float svRow = saturate(i.positionCS.y / _ScaledScreenParams.y);
                    return half4(svRow, dir.y > 0 ? 1 : 0, 1, 1);
                }

                VoxelRaytraceRes r = VoxelRaytrace(GetCameraPositionWS(), dir);
                // v2 marker: miss now renders orange. Magenta means the
                // committed shader was never reimported (stale variant).
                if (r.typeId == VOXEL_HIT_NONE) return half4(1, 0.55f, 0, 1); // miss -> orange
                return half4(r.hitColor, 1);
            }
            ENDHLSL
        }
    }
}