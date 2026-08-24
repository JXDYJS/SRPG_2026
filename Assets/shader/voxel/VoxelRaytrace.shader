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

            // Diagnostic global set by the editor flip probe (VoxelFlipProbe).
            // When > 0 the fragment outputs a gradient pair instead of the
            // ray-march: red = NDC scanline (presented row), green = ray up.
            // The gradients must agree; inverted green = mirrored rays.
            float _VoxelDiagMode;
            // Y-mirror switch driven by the feature inspector; the two states
            // are exact mirrors of each other, so exactly one is correct.
            float _VoxelFlipUv;

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
                // A 2026-08 controlled run (feature-only renderer, orange
                // miss marker active) showed the RAW SV_Position mapping
                // yields a mirrored image on this Vulkan target, so the
                // committed state flips ndc.y. The inspector toggle flips it
                // back for a definitive one-line A/B; exactly one of the two
                // states is correct because they are mirror images.
                float2 ndc = (i.positionCS.xy / _ScaledScreenParams.xy) * 2.0 - 1.0;
                if (_VoxelFlipUv > 0.5)
                {
                    ndc.y = -ndc.y;
                }
                float3 viewDir = normalize(float3(
                    ndc.x / UNITY_MATRIX_P._m00,
                    ndc.y / UNITY_MATRIX_P._m11,
                    -1.0));
                float3 dir = normalize(mul((float3x3)UNITY_MATRIX_I_V, viewDir));

                if (_VoxelDiagMode > 0.5)
                {
                    // Probe mode: red = ndc.y scanline, green = ray up-ness.
                    return half4(ndc.y * 0.5 + 0.5, dir.y * 0.5 + 0.5, 0, 1);
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