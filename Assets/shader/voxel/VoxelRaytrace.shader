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
                // SV_Position runs top-down on D3D/Metal (UV starts at top)
                // and bottom-up on GL, while URP renders camera targets with
                // a Y-flipped projection on those platforms so one screen UV
                // means the same pixel everywhere. Raw SV_Position must be
                // flipped first, or every ray is mirrored vertically and the
                // whole image comes out upside-down on D3D (correct on GL).
                // GetNormalizedScreenSpaceUV applies exactly that flip (URP
                // ShaderVariablesFunctions.hlsl).
                float2 ndc = GetNormalizedScreenSpaceUV(i.positionCS) * 2.0 - 1.0;
                float3 viewDir = normalize(float3(
                    ndc.x / UNITY_MATRIX_P._m00,
                    ndc.y / UNITY_MATRIX_P._m11,
                    -1.0));
                float3 dir = normalize(mul((float3x3)UNITY_MATRIX_I_V, viewDir));

                VoxelRaytraceRes r = VoxelRaytrace(GetCameraPositionWS(), dir);
                if (r.typeId == VOXEL_HIT_NONE) return half4(1, 0, 1, 1); // miss -> magenta
                return half4(r.hitColor, 1);
            }
            ENDHLSL
        }
    }
}