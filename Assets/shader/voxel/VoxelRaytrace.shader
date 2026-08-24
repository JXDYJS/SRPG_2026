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
                // Diag gradient measurement on the Vulkan target (top red =
                // top pixels look DOWN = mirrored) proved the flipped NDC
                // variant is wrong here. This platform combines the native
                // Vulkan rasterizer with a matrix flip for RTs (projFlip
                // reported true) and a straight row-order presentation, so
                // raw SV_Position already matches the presented frame:
                // the unflipped mapping is the correct one.
                float2 ndc = (i.positionCS.xy / _ScaledScreenParams.xy) * 2.0 - 1.0;
                float3 viewDir = normalize(float3(
                    ndc.x / UNITY_MATRIX_P._m00,
                    ndc.y / UNITY_MATRIX_P._m11,
                    -1.0));
                float3 dir = normalize(mul((float3x3)UNITY_MATRIX_I_V, viewDir));

                if (_VoxelDiagMode > 0.5)
                {
                    // Probe mode: red = ndc.y scanline, green = ray up-ness.
                    // Blue = 1 is the v3 build fingerprint: if the screen has
                    // no blue tint at all, the editor still runs an old
                    // shader import and the file never reimported.
                    return half4(ndc.y * 0.5 + 0.5, dir.y * 0.5 + 0.5, 1, 1);
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