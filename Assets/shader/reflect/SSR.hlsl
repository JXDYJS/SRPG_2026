#ifndef SSR_HLSL
#define SSR_HLSL

// Screen-space reflections: view-space ray march over _CameraDepthTexture.
// No world-space raytracing. On miss returns SSR_HIT_NONE with alpha 0.
// Reference: iterationRP SpecularTracer.glsl (screen projection + binary refine).
// All depth comparisons use linear positive view depth (-viewPos.z), so the code
// is independent of reversed-Z / NDC conventions.
//
// All projections go through the explicitly-passed _SSRProj / _SSRInvProj GPU
// projection matrices (SSRFeature uploads the real game camera's). URP Blitter
// blits must NOT rely on the built-in UNITY_MATRIX_P / UNITY_MATRIX_I_P, which
// describe the blit's own projection, not the camera's.
//
// IMPORTANT:
// The ray is marched in VIEW SPACE using the real 3D reflection direction.
// Each view-space ray position is then projected to screen UV for depth lookup.
// We do NOT linearly march (uv, linearDepth) as if they were a single Euclidean
// space, because perspective projection does not preserve that relationship.

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
#define SSR_MISS_Z_REGRESS        202  // reflected ray does not go deeper (dir.z >= 0)
#define SSR_MISS_MARCHLEN         203  // no valid march length (degenerate direction)
#define SSR_MISS_NO_CROSSING      204  // marched the whole ray path, no surface crossed
#define SSR_MISS_THICKNESS        205  // crossed a surface but the binary refine failed thickness
#define SSR_MISS_NO_DATA          206  // no reflection data (not CustomLit): skip SSR

// 64 steps gives 1.5625m per step with SSR_MARCH_DIST = 100m.
// This is mainly to improve the initial correctness test over the old 32-step
// march. For ~1m voxel geometry, 128 steps may be preferable later.
#define SSR_MAX_STEPS    64
#define SSR_REFINE_STEPS 6
#define SSR_THICKNESS    0.1
#define SSR_MARCH_DIST   16.0

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
    if (clipPos.w <= 1e-6)
        return false;

    float2 uv = clipPos.xy / clipPos.w * 0.5 + 0.5;

    screenPos = float3(uv, -viewPos.z);
    return true;
}

// Linear positive view depth at a screen UV.
float SSRSampleViewDepth(float2 uv)
{
    float raw =
        SAMPLE_TEXTURE2D_LOD(
            _CameraDepthTexture,
            sampler_CameraDepthTexture,
            uv,
            0
        ).r;

    return -SSRViewPosFromScreen(uv, raw).z;
}

// Screen-space ray march. ori/dir are view space (dir normalized).
//
// IMPORTANT:
// The actual ray is marched in VIEW SPACE:
//
//     rayViewPos = ori + dir * t
//
// Each rayViewPos is then projected into screen space to obtain the UV used for
// the depth-buffer lookup. This keeps the ray depth and ray UV mathematically
// consistent under perspective projection.
//
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

    // Validate the reflection direction.
    //
    // View space uses -Z as the forward direction, so a reflection ray that
    // actually travels deeper into the scene must have dir.z < 0.
    //
    // This replaces the old screenRayDir.z check. We now know the true ray
    // direction directly in view space, so there is no reason to infer it from
    // the projected ray.
    float dirLenSq = dot(dir, dir);

    if (dirLenSq < 1e-12)
    {
        res.typeId = SSR_MISS_MARCHLEN;
        return res;
    }

    if (dir.z >= -1e-6)
    {
        res.typeId = SSR_MISS_Z_REGRESS;
        return res;
    }

    // Fixed step length in VIEW SPACE.
    //
    // Unlike the previous implementation, this length has a direct geometric
    // meaning: every iteration advances the real reflection ray by stepLen
    // metres in view space.
    float stepLen = SSR_MARCH_DIST / SSR_MAX_STEPS;

    if (stepLen <= 0.0)
    {
        res.typeId = SSR_MISS_MARCHLEN;
        return res;
    }

    // Previous point on the REAL view-space ray.
    //
    // We keep this for binary refinement. The previous sample is guaranteed to
    // be on the non-crossed side of the depth test, while the current sample
    // is the first point that crossed the scene surface.
    float prevT = 0.0;
    float3 prevRayViewPos = ori;

    for (int i = 0; i < SSR_MAX_STEPS; i++)
    {
        // Advance along the REAL 3D reflection ray.
        float currentT = (i + 1) * stepLen;

        float3 rayViewPos =
            ori + dir * currentT;

        // Project this REAL view-space ray point to screen space.
        //
        // The UV and depth below therefore come from exactly the same 3D point.
        float3 rayScreenPos;

        if (!SSRScreenPosFromViewPos(rayViewPos, rayScreenPos))
        {
            res.typeId = SSR_MISS_NO_CROSSING;
            return res;
        }

        float2 uv = rayScreenPos.xy;

        // Left the screen.
        if (any(uv < 0.0) || any(uv > 1.0))
        {
            res.typeId = SSR_MISS_NO_CROSSING;
            return res;
        }

        // Since rayViewPos is the actual point on the reflection ray, its
        // linear view depth is the correct ray depth.
        float rayDepth = -rayViewPos.z;

        // The scene depth at the projected ray position.
        float sceneDepth = SSRSampleViewDepth(uv);

        // Surface closer than the ray => the ray crossed geometry.
        // 只使用 0.001 防止浮点数误差，不再使用 SSR_SELF_OFFSET
        if (sceneDepth < rayDepth - 0.001)
        {
            // ------------------------------------------------------------
            // Binary search the crossing in REAL VIEW-SPACE RAY DISTANCE.
            //
            // This is another important difference from the old version:
            // we do NOT binary-search a fake (UV, depth) line.
            //
            // Instead, we binary-search t and reconstruct:
            //
            //     rayViewPos = ori + dir * t
            //
            // at every iteration.
            // ------------------------------------------------------------

            float loT = prevT;
            float hiT = currentT;

            for (int j = 0; j < SSR_REFINE_STEPS; j++)
            {
                float midT = (loT + hiT) * 0.5;

                float3 midRayViewPos =
                    ori + dir * midT;

                float3 midScreenPos;

                if (!SSRScreenPosFromViewPos(
                        midRayViewPos,
                        midScreenPos))
                {
                    break;
                }

                if (any(midScreenPos.xy < 0.0) ||
                    any(midScreenPos.xy > 1.0))
                {
                    break;
                }

                float midRayDepth =
                    -midRayViewPos.z;

                float midSceneDepth =
                    SSRSampleViewDepth(midScreenPos.xy);

                if (midSceneDepth < midRayDepth - 0.001)
                {
                    // Still past the surface.
                    hiT = midT;
                }
                else
                {
                    // Still before the surface.
                    loT = midT;
                }
            }

            // Refined point on the REAL view-space ray.
            float hitT =
                (loT + hiT) * 0.5;

            float3 hitRayViewPos =
                ori + dir * hitT;

            float3 hitScreenPos;

            if (!SSRScreenPosFromViewPos(
                    hitRayViewPos,
                    hitScreenPos))
            {
                res.typeId = SSR_MISS_THICKNESS;
                return res;
            }

            float2 hitUv = hitScreenPos.xy;

            if (any(hitUv < 0.0) ||
                any(hitUv > 1.0))
            {
                res.typeId = SSR_MISS_THICKNESS;
                return res;
            }

            // Use the actual scene depth at the refined UV to reconstruct the
            // final surface position. This keeps hitPos tied to the geometry
            // stored in the depth buffer rather than to the ray's approximate
            // intersection position.
            float hitRawDepth =
                SAMPLE_TEXTURE2D_LOD(
                    _CameraDepthTexture,
                    sampler_CameraDepthTexture,
                    hitUv,
                    0
                ).r;

            float3 hit =
                SSRViewPosFromScreen(
                    hitUv,
                    hitRawDepth
                );

            float hitDepth =
                -hit.z;

            float rayHitDepth =
                -hitRayViewPos.z;

            float diff =
                abs(hitDepth - rayHitDepth);

            float2 startUv = screenPos.xy; 
            float uvMoveDist = length(hitUv - startUv);
            
            if (hitT < 0.1 || uvMoveDist < 0.005)
            {
                //hit self
                prevT = currentT;
                prevRayViewPos = rayViewPos;
                continue;
            }
            // ==========================================

            if (diff < SSR_THICKNESS * max(hitDepth, 0.001))
            {
                res.hitUv = hitUv;

                // hit is the actual depth-buffer surface position.
                res.hitPos = hit;

                res.alpha = 1.0;
                res.typeId = SSR_HIT_SURFACE;
            }
            else
            {
                res.typeId = SSR_MISS_THICKNESS;
            }

            return res;
        }

        // No crossing at the current point.
        // Save this REAL ray position as the lower bound for the next crossing
        // search.
        prevT = currentT;
        prevRayViewPos = rayViewPos;
    }

    // Marched the complete real view-space ray without crossing geometry.
    res.typeId = SSR_MISS_NO_CROSSING;
    return res;
}

#endif