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
            #pragma vertex Vert
            #pragma fragment frag
            #pragma target 5.0

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.core/Runtime/Utilities/Blit.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonMaterial.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
            #include "Assets/shader/voxel/VoxelRaytrace.hlsl"
            #include "Assets/shader/voxel/IrradianceCacheCommon.hlsl"

            half4 frag(Varyings i) : SV_Target
            {
                // Screen pixel -> NDC. SV_POSITION.y is top-down on D3D and
                // bottom-up on GL; UNITY_UV_STARTS_AT_TOP flips D3D back so
                // +Y = up on both platforms. Then view-space ray from the
                // projection terms; camera-relative safe because only the
                // rotation of the inverse view matrix is used.
                float2 ndc = (i.positionCS.xy / _ScreenParams.xy) * 2.0 - 1.0;
                #if UNITY_UV_STARTS_AT_TOP
                    ndc.y = -ndc.y;
                #endif
                float3 viewDir = normalize(float3(
                    ndc.x / UNITY_MATRIX_P._m00,
                    ndc.y / UNITY_MATRIX_P._m11,
                    -1.0));
                float3 dir = normalize(mul((float3x3)UNITY_MATRIX_I_V, viewDir));

                VoxelRaytraceRes r = VoxelRaytrace(GetCameraPositionWS(), dir);
                if (r.typeId == VOXEL_HIT_NONE) return half4(1, 0, 1, 1); // miss -> magenta
#if VOXEL_DEBUG_MODE == 9
                // Irradiance cache at the hit point (tonemapped): validates
                // the bake + SampleIRC chain on real block surfaces. Water
                // hits and unit volumes have no cache texel (the water plane
                // can stretch one cache row over the whole view), so keep
                // their fallback colors.
                if (r.typeId == VOXEL_HIT_WATER) return half4(0, 1, 0.5, 1);
                if (r.typeId == VOXEL_HIT_UNIT) return half4(0.6, 0.6, 0.6, 1);
                float3 irc = IrcSampleDiffuse(r.hitPos, r.hitNormal);
                return half4(IrcTonemap(irc), 1);
#elif VOXEL_DEBUG_MODE == 10
                // Accumulation counter N (slice 6 .w): solid/unit texels read 0
                // (marker), baked air texels count up. Occupancy sanity check.
                if (r.typeId == VOXEL_HIT_WATER) return half4(0, 1, 0.5, 1);
                if (r.typeId == VOXEL_HIT_UNIT) return half4(0.6, 0.6, 0.6, 1);
                float3 hp = r.hitPos + r.hitNormal * IRC_EPS;
                int3 ht = IrcWorldToTexel(hp);
                ht = clamp(ht, int3(0, 0, 0), int3(IrcTexelSize() + 0.5) - 1);
                float nA = _IRCCacheRead.Load(int4(ht.x, ht.y, ht.z * IRC_SH_SLICES + (IRC_SH_SLICES - 1), 0)).w;
                return half4(nA / IRC_SH_MAX_N, nA / IRC_SH_MAX_N, nA / IRC_SH_MAX_N, 1);
#elif VOXEL_DEBUG_MODE == 11
                // Shadow visibility at the hit point (grayscale). Stable image =
                // shadow sampling is frame-stable; flicker here = IrcSunVisibility
                // is the source driving the IRC geometry-texel non-convergence.
                if (r.typeId == VOXEL_HIT_NONE) return half4(0, 0, 0, 1);
                if (r.typeId == VOXEL_HIT_WATER) return half4(0, 1, 0.5, 1);
                if (r.typeId == VOXEL_HIT_UNIT) return half4(0.6, 0.6, 0.6, 1);
                float vis = IrcSunVisibility(r.hitPos);
                return half4(vis, vis, vis, 1);
#else
                return half4(r.hitColor, 1);
#endif
            }
            ENDHLSL
        }
    }
}