#ifndef SSR_HLSL
#define SSR_HLSL

// Screen-space reflections: pure view/screen-space ray march over _CameraDepthTexture.
// No world-space raytracing. On miss returns SSR_HIT_NONE with alpha 0.
// Reference: iterationRP SpecularTracer.glsl (screen projection + binary refine).
// All depth comparisons use linear positive view depth (-viewPos.z), so the code
// is independent of reversed-Z / NDC conventions.

#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

#define SSR_HIT_NONE    0
#define SSR_HIT_SURFACE 1  // generic hit; caller reclassifies via _GBuffer (R/G)
#define SSR_HIT_WATER  64
#define SSR_HIT_UNIT  100

#define SSR_MAX_STEPS    32
#define SSR_REFINE_STEPS 6
#define SSR_THICKNESS    0.1
#define SSR_MARCH_DIST   100.0

TEXTURE2D(_CameraDepthTexture);
SAMPLER(sampler_CameraDepthTexture);

struct SSRRaytraceRes
{
    float3 hitPos;     // view-space hit position
    float3 hitNormal;  // 0; caller may fill from _CameraNormalsTexture
    float3 hitColor;   // 0; caller samples scene color at the hit UV
    float alpha;       // 1 on hit, 0 on miss
    uint typeId;       // SSR_HIT_*
};

// uv (0..1) + raw depth -> view-space position. Depth is used as clip.z directly:
// _CameraDepthTexture is in the same NDC range the GPU projection produced, and
// UNITY_MATRIX_I_P is the matching inverse GPU projection.
float3 SSRViewPosFromScreen(float2 uv, float depth)
{
    float4 clipPos = float4(uv * 2.0 - 1.0, depth, 1.0);
    float4 viewPos = mul(UNITY_MATRIX_I_P, clipPos);
    return viewPos.xyz / viewPos.w;
}

// View-space position -> screenPos (xy = uv 0..1, z = linear positive view depth).
float3 SSRScreenPosFromViewPos(float3 viewPos)
{
    float4 clipPos = mul(UNITY_MATRIX_P, float4(viewPos, 1.0));
    clipPos.xyz /= max(clipPos.w, 1e-6);
    float2 uv = clipPos.xy * 0.5 + 0.5;
    return float3(uv, -viewPos.z);
}

// Linear positive view depth at a screen UV.
float SSRSampleViewDepth(float2 uv)
{
    float raw = SAMPLE_TEXTURE2D_LOD(_CameraDepthTexture, sampler_CameraDepthTexture, uv, 0).r;
    return -SSRViewPosFromScreen(uv, raw).z;
}

// Screen-space ray march. ori/dir are view space (dir normalized).
// Exits with SSR_HIT_NONE (alpha 0) when the ray leaves the screen or finds nothing.
SSRRaytraceRes SSRRaytrace(float3 ori, float3 dir)
{
    SSRRaytraceRes res;
    res.hitPos = 0;
    res.hitNormal = 0;
    res.hitColor = 0;
    res.alpha = 0;
    res.typeId = SSR_HIT_NONE;

    // Ray origin outside the frustum: nothing to do.
    float3 screenPos = SSRScreenPosFromViewPos(ori);
    if (any(screenPos.xy < -0.05) || any(screenPos.xy > 1.05)) return res;

    // Project a far point to get the 3D screen-space march direction.
    float3 screenFar = SSRScreenPosFromViewPos(ori + dir * SSR_MARCH_DIST);
    float3 screenRayDir = normalize(screenFar - screenPos);

    // Reflected ray must move away from the camera (linear depth increases).
    if (screenRayDir.z <= 0.0) return res;

    // Step length until the ray exits the screen cube.
    float3 rInv = 1.0 / screenRayDir;
    float3 t1 = -screenPos * rInv;
    float3 t2 = (float3(1.0, 1.0, 1.0) - screenPos) * rInv;
    float3 tMax = max(t1, t2);
    float marchLen = min(min(tMax.x, tMax.y), tMax.z);
    if (marchLen <= 0.0) return res;
    float stepLen = marchLen / SSR_MAX_STEPS;

    float3 rayPos = screenPos;

    for (int i = 0; i < SSR_MAX_STEPS; i++)
    {
        rayPos += screenRayDir * stepLen;

        // Left the screen or went behind the camera.
        if (any(rayPos.xy < 0.0) || any(rayPos.xy > 1.0)) return res;
        if (rayPos.z <= 0.0) return res;

        // Surface closer than the ray => the ray crossed geometry.
        float sceneDepth = SSRSampleViewDepth(rayPos.xy);
        if (sceneDepth < rayPos.z)
        {
            // Binary search the crossing inside [lo, rayPos].
            float3 lo = rayPos - screenRayDir * stepLen;
            float3 hi = rayPos;
            for (int j = 0; j < SSR_REFINE_STEPS; j++)
            {
                float3 mid = (lo + hi) * 0.5;
                if (any(mid.xy < 0.0) || any(mid.xy > 1.0)) break;
                if (SSRSampleViewDepth(mid.xy) < mid.z) hi = mid;
                else lo = mid;
            }

            float3 hit = (lo + hi) * 0.5;
            float hitDepth = SSRSampleViewDepth(hit.xy);
            float diff = abs(hitDepth - hit.z);
            if (diff < SSR_THICKNESS * max(hit.z, 0.001))
            {
                res.hitPos = SSRViewPosFromScreen(hit.xy, SAMPLE_TEXTURE2D_LOD(_CameraDepthTexture, sampler_CameraDepthTexture, hit.xy, 0).r);
                res.alpha = 1.0;
                res.typeId = SSR_HIT_SURFACE;
            }
            return res; // crossed something (hit or not) - stop marching
        }
    }

    return res;
}

#endif
