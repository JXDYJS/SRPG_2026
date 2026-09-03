#ifndef SSR_HLSL
#define SSR_HLSL

// Screen-space reflections: pure view/screen-space ray march over _CameraDepthTexture.
// No world-space raytracing. On miss returns SSR_HIT_NONE with alpha 0.
// Reference: iterationRP SpecularTracer.glsl (screen projection + binary refine).
// All depth comparisons use linear positive view depth (-viewPos.z), so the code
// is independent of reversed-Z / NDC conventions.
//
// All projections go through the explicitly-passed _SSRProj / _SSRInvProj GPU
// projection matrices (SSRFeature uploads the real game camera's). URP Blitter
// blits must NOT rely on the built-in UNITY_MATRIX_P / UNITY_MATRIX_I_P, which
// describe the blit's own projection, not the camera's.

#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

float4x4 _SSRProj;    // GPU projection (SSRFeature: gpuProj)
float4x4 _SSRInvProj; // inverse GPU projection

#define SSR_HIT_NONE    0
#define SSR_HIT_SURFACE 1  // generic hit; caller reclassifies via _GBuffer (R/G)
#define SSR_HIT_WATER  64
#define SSR_HIT_UNIT  100

// Miss reason codes (reported in typeId when alpha == 0) so the debug view can
// distinguish "ray never aimed at the screen" from "marched but found nothing".
#define SSR_MISS_ORIGIN_OFFSCREEN 201  // ray origin projected off the screen cube
#define SSR_MISS_Z_REGRESS        202  // reflected ray does not go deeper (screenRayDir.z <= 0)
#define SSR_MISS_MARCHLEN         203  // no valid march length (degenerate direction)
#define SSR_MISS_NO_CROSSING      204  // marched the whole screen path, no surface crossed
#define SSR_MISS_THICKNESS        205  // crossed a surface but the binary refine failed thickness
#define SSR_MISS_NO_DATA          206  // no reflection data (not CustomLit): skip SSR

#define SSR_MAX_STEPS    32
#define SSR_REFINE_STEPS 6
#define SSR_THICKNESS    0.1
#define SSR_MARCH_DIST   100.0
// Metre-space self-rejection band for the depth crossing test. The ray starts
// 1mm off its own surface, so crossings within a few cm would still belong to
// the reflector itself (its UV never leaves the origin in practice): do not
// treat them as hits -- they are the "reflecting itself" artifact.
#define SSR_SELF_OFFSET  0.05

TEXTURE2D(_CameraDepthTexture);
SAMPLER(sampler_CameraDepthTexture);

struct SSRRaytraceRes
{
    float2 hitUv;      // screen uv of the hit (always in [0,1]; set on hit)
    float3 hitPos;     // view-space hit position
    float3 hitNormal;  // 0; caller may fill from _CameraNormalsTexture
    float3 hitColor;   // 0; caller samples scene color at the hit UV
    float alpha;       // 1 on hit, 0 on miss
    uint typeId;       // SSR_HIT_*
};

// uv (0..1) + raw depth -> view-space position. Depth is used as clip.z directly:
// _CameraDepthTexture is in the same NDC range the GPU projection produced, and
// _SSRInvProj is the matching inverse GPU projection.
float3 SSRViewPosFromScreen(float2 uv, float depth)
{
    float4 clipPos = float4(uv * 2.0 - 1.0, depth, 1.0);
    float4 viewPos = mul(_SSRInvProj, clipPos);
    return viewPos.xyz / viewPos.w;
}

// View-space position -> screenPos (xy = uv 0..1, z = linear positive view depth).
// Returns false when viewPos is behind the camera (w <= 0) so callers never
// march a corrupted (mirrored) projection.
bool SSRScreenPosFromViewPos(float3 viewPos, out float3 screenPos)
{
    screenPos = 0;
    float4 clipPos = mul(_SSRProj, float4(viewPos, 1.0));
    // Behind the near plane: projection flips and a divide would fabricate a
    // bogus on-screen uv. Treat as invalid rather than feeding normalize() a
    // garbage direction (which produced NaN and the orange/yellow scatter).
    if (clipPos.w <= 1e-6) return false;
    float2 uv = clipPos.xy / clipPos.w * 0.5 + 0.5;
    screenPos = float3(uv, -viewPos.z);
    return true;
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
    res.hitUv = 0;
    res.hitPos = 0;
    res.hitNormal = 0;
    res.hitColor = 0;
    res.alpha = 0;
    res.typeId = SSR_HIT_NONE;

    // Ray origin outside the frustum: nothing to do. (Can't happen in practice:
    // ori is the reflector's own view position, always in front and on-screen.)
    float3 screenPos;
    if (!SSRScreenPosFromViewPos(ori, screenPos))
    {
        res.typeId = SSR_MISS_ORIGIN_OFFSCREEN;
        return res;
    }
    if (any(screenPos.xy < -0.05) || any(screenPos.xy > 1.05))
    {
        res.typeId = SSR_MISS_ORIGIN_OFFSCREEN;
        return res;
    }

    // Ray far point in view space. If it ends up behind the camera the ray
    // points back toward the viewer, so there is no on-screen surface ahead;
    // report a clean backward miss instead of marching a NaN direction.
    float3 rayFar = ori + dir * SSR_MARCH_DIST;
    if (rayFar.z >= 0.0)
    {
        res.typeId = SSR_MISS_Z_REGRESS;
        return res;
    }

    // Screen-space direction of the march.
    float3 screenFar;
    if (!SSRScreenPosFromViewPos(rayFar, screenFar))
    {
        res.typeId = SSR_MISS_Z_REGRESS;
        return res;
    }
    float3 screenDelta = screenFar - screenPos;
    float deltaLen = length(screenDelta);
    if (deltaLen < 1e-6)
    {
        res.typeId = SSR_MISS_MARCHLEN;
        return res;
    }
    float3 screenRayDir = screenDelta / deltaLen;

    // Reflected ray must move away from the camera (linear depth increases).
    if (screenRayDir.z <= 0.0)
    {
        res.typeId = SSR_MISS_Z_REGRESS;
        return res;
    }

    // Step length until the ray exits the screen cube. Only the xy axes are
    // [0,1] screen bounds; z is linear view depth in metres, so a [0,1] bound
    // there is wrong (tMax.z is always <= 0 for any ray going deeper, which
    // made marchLen <= 0 and killed every march before it started). Bound the
    // march by the xy screen exit and cap at the far point's own path length.
    float3 rInv = 1.0 / screenRayDir;
    float3 t1 = -screenPos * rInv;
    float3 t2 = (float3(1.0, 1.0, 1.0) - screenPos) * rInv;
    float3 tMax = max(t1, t2);
    float marchLen = min(tMax.x, tMax.y);
    marchLen = min(marchLen, deltaLen);
    if (marchLen <= 0.0)
    {
        res.typeId = SSR_MISS_MARCHLEN;
        return res;
    }
    float stepLen = marchLen / SSR_MAX_STEPS;

    float3 rayPos = screenPos;

    for (int i = 0; i < SSR_MAX_STEPS; i++)
    {
        rayPos += screenRayDir * stepLen;

        // Left the screen or went behind the camera.
        if (any(rayPos.xy < 0.0) || any(rayPos.xy > 1.0))
        {
            res.typeId = SSR_MISS_NO_CROSSING;
            return res;
        }
        if (rayPos.z <= 0.0)
        {
            res.typeId = SSR_MISS_NO_CROSSING;
            return res;
        }

        // Surface closer than the ray => the ray crossed geometry.
        // Self-offset: the ray starts 1mm off its own surface; reject any
        // crossing that is still within the near-surface band (a few cm) so the
        // ray cannot hit the reflector's own pixel on step 0/1 and paint
        // "itself" into the reflection (mirror-shot bug).
        float sceneDepth = SSRSampleViewDepth(rayPos.xy);
        if (sceneDepth < rayPos.z - SSR_SELF_OFFSET)
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
                res.hitUv = hit.xy;
                res.hitPos = SSRViewPosFromScreen(hit.xy, SAMPLE_TEXTURE2D_LOD(_CameraDepthTexture, sampler_CameraDepthTexture, hit.xy, 0).r);
                res.alpha = 1.0;
                res.typeId = SSR_HIT_SURFACE;
            }
            else
            {
                res.typeId = SSR_MISS_THICKNESS;
            }
            return res; // crossed something (hit or not) - stop marching
        }
    }

    res.typeId = SSR_MISS_NO_CROSSING;
    return res;
}

#endif
