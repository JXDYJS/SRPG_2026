// Shared helpers for the voxel irradiance cache: texel<->world mapping,
// occupancy mask queries, cache sampling, sky/water/emissive contributions.
// Included by IrradianceCacheBake.compute and VoxelRaytrace.shader.
//
// Coordinate contract (see .planning/docs/IrradianceCache-Plan.md):
// voxel (x,y,z) occupies world [-0.5, x+0.5) x [y, y+1) x [-0.5, z+0.5)
// (feet-centered pivot, same as the static DDA). One voxel = 4x4x4 cache
// texels; the cache adds 1 border texel per face (out-of-bounds voxels read
// as air). texel = floor(worldSubPos*4) + 1, where worldSubPos is the map
// corner offset.
//
// Reads _VoxelMap/_VoxelMapSize from VoxelRaytrace.hlsl (included below).

#ifndef IRC_COMMON_HLSL
#define IRC_COMMON_HLSL

#include "Assets/shader/voxel/VoxelRaytrace.hlsl"
// Global samplers (sampler_LinearRepeat) for the dynamic sky map; include-guarded.
#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/GlobalSamplers.hlsl"

#define IRC_SUB_RES 4
#define IRC_EPS 1e-5
#define IRC_PI 3.14159265358979

// Latest baked cache (read side; C# publishes the final buffer of a bake).
Texture3D<float4> _IRCCacheRead;
// occupancy shape keyed by map byte & 0x7F: bit = x + z*4 + y*16 (uint2: low/high 32).
StructuredBuffer<uint2> _IRCTypeMasks;
// emissive radiance per typeId (index 1..63), rgb = radiance.
StructuredBuffer<float4> _IRCEmissive;

float3 _IRCSkyZenith;   // linear radiance
float3 _IRCSkyHorizon;
float _IRCDebugExposure; // view tonemap energy for debug modes

// Real-time equirectangular sky (256x128 ARGBHalf, Repeat wrap) published
// globally each frame by FakeSunLight as _DynamicSkyMap. Sampled for missed
// rays (and water reflection) instead of the two-color gradient when present;
// gradient remains the fallback so the compute runs standalone. sampler_LinearRepeat
// (GlobalSamplers.hlsl) gives the same Repeat wrap the map was created with and
// binds in both fragment and compute passes.
Texture2D<float4> _DynamicSkyMap;
float _IrcUseSkyMap; // > 0.5 -> sample _DynamicSkyMap, else gradient fallback

// Water scattering parameters, mirrored from Water.shader material (C#).
float3 _WaterScatter;
float3 _WaterAbsorb;
float _WaterPhaseG;
float _WaterHackDepth;

/// <summary>Cache texture size: (mapSize * 4) + 2 border texels.</summary>
float3 IrcTexelSize()
{
    return _VoxelMapSize.xyz * float(IRC_SUB_RES) + 2.0;
}

/// <summary>World position -> cache texel (may land in the border ring).</summary>
int3 IrcWorldToTexel(float3 worldPos)
{
    float3 mapLocal = worldPos + float3(0.5, 0.0, 0.5);
    return int3(floor(mapLocal * float(IRC_SUB_RES))) + 1;
}

/// <summary>
/// 1 when the world position lands inside a solid voxel of any dynamic unit.
/// Point query (not a ray): reuses the unit roster / packed volume from
/// VoxelRaytrace.hlsl. Lets the IRC bake treat unit-occupied texels as solid
/// so rays never spawn inside a unit (which sampled its own dark interior).
/// </summary>
float IrcUnitSolidAtWorld(float3 worldPos)
{
    int scanMax = (int)_UnitScanParams.x;
    for (int i = 1; i <= scanMax; i++)
    {
        UnitGridData g = _UnitGrids[i];
        if (g.flags.x < 0.5) continue;

        float3 bmin = g.originYaw.xyz;
        float3 bmax = bmin + g.sizeSlot.xyz;
        if (any(worldPos < bmin) || any(worldPos > bmax)) continue;

        float3 voxelSize = g.sizeSlot.xyz / float3(UNIT_GRID_RES.x, UNIT_GRID_RES.y, UNIT_GRID_RES.z);
        int3 cell = int3(floor((worldPos - bmin) / voxelSize));
        cell = clamp(cell, int3(0, 0, 0), int3(UNIT_GRID_RES.x, UNIT_GRID_RES.y, UNIT_GRID_RES.z) - 1);
        float4 v = _PackedUnitVolume.Load(int4((int)g.sizeSlot.w + cell.x, cell.y, cell.z, 0));
        if (v.a >= 0.5) return 1.0;
    }
    return 0.0;
}

/// <summary>Cache texel -> world position of the texel center.</summary>
float3 IrcTexelToWorld(int3 texel)
{
    return (float3(texel) - 0.5) / float(IRC_SUB_RES) - float3(0.5, 0.0, 0.5);
}

int3 IrcTexelToVoxel(int3 texel)
{
    return (texel - 1) >> 2;
}

int3 IrcTexelOffset(int3 texel, int3 voxel)
{
    return texel - voxel * IRC_SUB_RES - 1; // [0,4) for valid texels
}

int IrcMaskBit(int3 off)
{
    return off.x + off.z * 4 + off.y * 16;
}

/// <summary>Shape key of a voxel: 7 bits of the map byte, 0 for out of bounds.</summary>
uint IrcVoxelKey(int3 voxel)
{
    int3 size = int3(_VoxelMapSize.xyz + 0.5);
    uint b = 0;
    if (!any(voxel < 0) && !any(voxel >= size))
    {
        b = (uint)round(_VoxelMap.Load(int4(voxel, 0)).r * 255.0);
    }
    return b & 0x7Fu;
}

bool IrcSubMaskBit(uint maskKey, int3 off)
{
    uint2 m = _IRCTypeMasks[maskKey];
    int bit = IrcMaskBit(off);
    if (bit < 32) return ((m.x >> (bit & 31)) & 1) != 0;
    return ((m.y >> ((bit - 32) & 31)) & 1) != 0;
}

/// <summary>Occupancy of a single cache texel; out-of-texel-space = air.</summary>
bool IrcSolidAtTexel(int3 texel)
{
    int3 size = int3(IrcTexelSize() + 0.5);
    if (any(texel < 0) || any(texel >= size)) return false;
    int3 voxel = IrcTexelToVoxel(texel);
    int3 off = IrcTexelOffset(texel, voxel);
    return IrcSubMaskBit(IrcVoxelKey(voxel), off);
}

bool IrcSolidAtWorld(float3 worldPos)
{
    return IrcSolidAtTexel(IrcWorldToTexel(worldPos));
}

// ===================== L2 SH cache layout =====================
// Each logical air texel stores a second-order spherical-harmonics radiance
// function plus an accumulation-frame counter N:
//   9 real-SH basis (order 0/1/2) x RGB = 27 floats + N = 28 floats
//   = 7 physical z-slices of float4 (IrcCacheSlice). Solid texels write all
//   zero coefficients with N = 0 (marker). Open texels that are never read
//   (no solid / unit neighbour) are skipped by the bake, so their slice
//   contents are stale but never sampled.
// Coefficient slot = basis * 3 + channel (0..26), N is slot 27.
// Slice layout (float4): each float4 carries 4 consecutive slots.
//   basis0 -> (L0.x, L0.y, L0.z, L1.x)
//   basis1 -> (L0.w, L1.x, L1.y)  -- see IrcReadCoeffs below.
// Band scaling for diffuse (radiance -> irradiance convolution, Ramamoorthi
// & Hanrahan): lambda_l = pi (l=0), 2pi/3 (l=1), pi/4 (l=2). Applied at read
// time on the diffuse query only; radiance queries evaluate unscaled.

#define IRC_SH_SLICES 7
#define IRC_SH_MAX_N 1024.0
#define IRC_SH_N_SOLID 0.0     // N marker on solid texels (reset trigger when air returns)
#define IRC_SH_L0 0.282095f    // Y_00
#define IRC_SH_L1 0.488603f    // sqrt(3/4pi)
#define IRC_SH_L2XY 1.092548f  // 0.5 sqrt(15/pi)
#define IRC_SH_L2ZZ 0.315392f  // 0.25 sqrt(5/pi)
#define IRC_SH_L2XX 0.546274f  // 0.25 sqrt(15/pi)
// diffuse band convolution weights
#define IRC_LAM0 3.14159265f
#define IRC_LAM1 2.09439510f
#define IRC_LAM2 0.78539816f

/// <summary>Logical texel + coefficient slot (0..26) -> physical texture z.</summary>
int3 IrcCacheSlice(int3 texel, int slot)
{
    return int3(texel.x, texel.y, texel.z * IRC_SH_SLICES + (slot >> 2));
}

/// <summary>
/// Evaluates the 9 real-SH basis functions at a unit direction (constants
/// baked in, i.e. orthonormal Y_lm). Used by the bake to project samples:
/// coeff_b = (4pi/N) * sum_i radiance_i * Y_b(dir_i). Order matches the
/// coefficient layout: 0 = Y00, 1..3 = Y1{-1,0,1}, 4..8 = Y2{-2,-1,0,1,2}.
/// </summary>
void IrcEvalBasis(float3 d,
                  out float y0, out float y1, out float y2, out float y3,
                  out float y4, out float y5, out float y6, out float y7,
                  out float y8)
{
    float x = d.x, y = d.y, z = d.z;
    y0 = IRC_SH_L0;
    y1 = IRC_SH_L1 * y;
    y2 = IRC_SH_L1 * z;
    y3 = IRC_SH_L1 * x;
    y4 = IRC_SH_L2XY * x * y;
    y5 = IRC_SH_L2XY * y * z;
    y6 = IRC_SH_L2ZZ * (3.0 * z * z - 1.0);
    y7 = IRC_SH_L2XY * x * z;
    y8 = IRC_SH_L2XX * (x * x - y * y);
}

/// <summary>
/// Loads a float4 chunk holding slots [4s, 4s+4) of the logical texel's SH
/// coefficient array from the given cache texture. Each chunk is exactly one
/// physical z-slice: chunk s lives at texel.z * IRC_SH_SLICES + s.
/// </summary>
float4 IrcLoadChunkFrom(Texture3D<float4> tex, int3 texel, int s)
{
    return tex.Load(int4(texel.x, texel.y, texel.z * IRC_SH_SLICES + s, 0));
}

float4 IrcLoadChunk(int3 texel, int s)
{
    return IrcLoadChunkFrom(_IRCCacheRead, texel, s);
}

/// <summary>
/// Gathers the 9 RGB radiance coefficients + N for a logical texel from the
/// given cache texture. Slot layout: coefficient[b*3+c] = basis b channel c,
/// slot 27 = N. Packing across the 7 float4 slices (28 slots):
///   slice0 = slots  0..3, slice1 =  4..7, ... slice6 = slots 24..27
/// </summary>
void IrcReadCoeffsFrom(Texture3D<float4> tex, int3 texel,
                       out float3 c0, out float3 c1, out float3 c2, out float3 c3,
                       out float3 c4, out float3 c5, out float3 c6, out float3 c7,
                       out float3 c8, out float nFrames)
{
    float4 S0 = IrcLoadChunkFrom(tex, texel, 0);
    float4 S1 = IrcLoadChunkFrom(tex, texel, 1);
    float4 S2 = IrcLoadChunkFrom(tex, texel, 2);
    float4 S3 = IrcLoadChunkFrom(tex, texel, 3);
    float4 S4 = IrcLoadChunkFrom(tex, texel, 4);
    float4 S5 = IrcLoadChunkFrom(tex, texel, 5);
    float4 S6 = IrcLoadChunkFrom(tex, texel, 6);

    c0 = float3(S0.x, S0.y, S0.z);              // basis 0
    c1 = float3(S0.w, S1.x, S1.y);              // basis 1
    c2 = float3(S1.z, S1.w, S2.x);              // basis 2
    c3 = float3(S2.y, S2.z, S2.w);              // basis 3
    c4 = float3(S3.x, S3.y, S3.z);              // basis 4
    c5 = float3(S3.w, S4.x, S4.y);              // basis 5
    c6 = float3(S4.z, S4.w, S5.x);              // basis 6
    c7 = float3(S5.y, S5.z, S5.w);              // basis 7
    c8 = float3(S6.x, S6.y, S6.z);              // basis 8
    nFrames = S6.w;                             // slot 27 = N
}

void IrcReadCoeffs(int3 texel,
                   out float3 c0, out float3 c1, out float3 c2, out float3 c3,
                   out float3 c4, out float3 c5, out float3 c6, out float3 c7,
                   out float3 c8, out float nFrames)
{
    IrcReadCoeffsFrom(_IRCCacheRead, texel, c0, c1, c2, c3, c4, c5, c6, c7, c8, nFrames);
}

/// <summary>
/// Evaluates a L2 radiance SH function at a direction d (radiance query:
/// no band scaling). c0..c8 are the RGB coefficient triplets in standard
/// real-SH order (basis0 = Y00, 1..3 = Y1{-1,0,1}, 4..8 = Y2{-2,-1,0,1,2}).
/// </summary>
float3 IrcEvalRadiance(float3 c0, float3 c1, float3 c2, float3 c3,
                       float3 c4, float3 c5, float3 c6, float3 c7, float3 c8,
                       float3 d)
{
    float x = d.x, y = d.y, z = d.z;
    float3 result = c0 * IRC_SH_L0;
    result += (c1 * y + c2 * z + c3 * x) * IRC_SH_L1;
    result += c4 * (IRC_SH_L2XY * x * y)
            + c5 * (IRC_SH_L2XY * y * z)
            + c6 * (IRC_SH_L2ZZ * (3.0 * z * z - 1.0))
            + c7 * (IRC_SH_L2XY * x * z)
            + c8 * (IRC_SH_L2XX * (x * x - y * y));
    return result;
}

/// <summary>
/// Evaluates the diffuse irradiance from a L2 radiance SH at normal n
/// (band-convolution by lambda_l). This is the PBR environment-diffuse query.
/// </summary>
float3 IrcEvalDiffuse(float3 c0, float3 c1, float3 c2, float3 c3,
                      float3 c4, float3 c5, float3 c6, float3 c7, float3 c8,
                      float3 n)
{
    return IrcEvalRadiance(c0 * IRC_LAM0, c1 * IRC_LAM1, c2 * IRC_LAM1,
                           c3 * IRC_LAM1, c4 * IRC_LAM2, c5 * IRC_LAM2,
                           c6 * IRC_LAM2, c7 * IRC_LAM2, c8 * IRC_LAM2, n);
}

/// <summary>
/// Directional radiance along a look direction at a surface point. Offset the
/// position along the geometric normal so the query lands in the air texel
/// hugging the surface (same rule as the old diffuse sample).
/// </summary>
float3 IrcSampleRadiance(float3 worldPos, float3 normalWS, float3 dir)
{
    worldPos += normalWS * IRC_EPS;
    int3 texel = IrcWorldToTexel(worldPos);
    texel = clamp(texel, int3(0, 0, 0), int3(IrcTexelSize() + 0.5) - 1);
    float3 c0, c1, c2, c3, c4, c5, c6, c7, c8;
    float nF;
    IrcReadCoeffs(texel, c0, c1, c2, c3, c4, c5, c6, c7, c8, nF);
    return IrcEvalRadiance(c0, c1, c2, c3, c4, c5, c6, c7, c8, dir);
}

/// <summary>
/// Diffuse environment irradiance for surface lighting (PBR GI term): L2
/// radiance SH convolved to irradiance at the hit normal. Replaces the old
/// single-float3 bakedGI (which was this SH's L0 average).
/// </summary>
float3 IrcSampleDiffuse(float3 worldPos, float3 normalWS)
{
    worldPos += normalWS * IRC_EPS;
    int3 texel = IrcWorldToTexel(worldPos);
    texel = clamp(texel, int3(0, 0, 0), int3(IrcTexelSize() + 0.5) - 1);
    float3 c0, c1, c2, c3, c4, c5, c6, c7, c8;
    float nF;
    IrcReadCoeffs(texel, c0, c1, c2, c3, c4, c5, c6, c7, c8, nF);
    return IrcEvalDiffuse(c0, c1, c2, c3, c4, c5, c6, c7, c8, normalWS);
}

/// <summary>
/// Renderer-side tonemap for raw linear cache values (sun-lit texels are HDR).
/// </summary>
float3 IrcTonemap(float3 c)
{
    return 1.0 - exp(-c * _IRCDebugExposure);
}

float3 IrcSafeNormalize(float3 v)
{
    float l = length(v);
    return l > 1e-6 ? v / l : float3(0.0, 1.0, 0.0);
}

/// <summary>Direction -> equirectangular UV (matches global.hlsl's mapping so
/// the bake reads the exact same sky texels as the renderer).</summary>
float2 IrcDirToEquirectangularUV(float3 dir)
{
    float phi = atan2(dir.x, dir.z);              // [-PI, PI]
    float theta = asin(clamp(dir.y, -1.0, 1.0));  // [-PI/2, PI/2]
    return float2(phi * 0.15915494309, theta * 0.31830988618 + 0.5);
}

/// <summary>
/// Sky radiance for a ray direction. Real sky color comes from the dynamic
/// equirectangular map baked by FakeSunLight (_DynamicSkyMap, published as a
/// global each frame); the old two-color gradient is only a fallback so the
/// cache bake works without the map. LOD 0 keeps the diffuse contribution
/// sharp (mip blur is not needed for the bake's wide-angle integration).
/// </summary>
float3 IrcSkyAmbient(float3 dir)
{
    if (_IrcUseSkyMap > 0.5)
    {
        return _DynamicSkyMap.SampleLevel(sampler_LinearRepeat,
                                          IrcDirToEquirectangularUV(dir), 0).rgb;
    }
    float t = saturate(dir.y * 0.5 + 0.5);
    return lerp(_IRCSkyHorizon, _IRCSkyZenith, t);
}

float3 IrcEmissive(uint typeId)
{
    return _IRCEmissive[typeId].rgb;
}

/// <summary>
/// Main light shadow visibility at a world position via URP shadowmap (PCF
/// from the same sampling data the renderer uses). Requires URP Shadows.hlsl
/// included BEFORE this file (compute pass); guarded so fragment shaders
/// that never include URP shadow code still compile. Falls back to 1.0 when
/// no shadow keyword is active.
/// </summary>
#ifdef UNIVERSAL_SHADOWS_INCLUDED
float IrcSunVisibility(float3 worldPos)
{
    float4 shadowCoord = TransformWorldToShadowCoord(worldPos);
#ifdef MAIN_LIGHT_CALCULATE_SHADOWS
    ShadowSamplingData ssd = GetMainLightShadowSamplingData();
    half4 sp = GetMainLightShadowParams();
    return SampleShadowmap(TEXTURE2D_ARGS(_MainLightShadowmapTexture, sampler_LinearClampCompare),
                           shadowCoord, ssd, sp, false);
#else
    return 1.0;
#endif
}
#endif

/// <summary>Same scattered-light phase as Water.shader (render/bake parity).</summary>
float IrcScatterPhase(float cosTheta, float g)
{
    float g2 = g * g;
    float denom = 1.0 + g2 - 2.0 * g * cosTheta;
    float mie = (1.0 - g2) * rcp(pow(abs(denom), 1.5)) * (1.0 / (4.0 * IRC_PI));
    float ray = (1.0 + cosTheta * cosTheta) * (3.0 / (16.0 * IRC_PI));
    return ray * 0.05 + mie * 0.95;
}

/// <summary>
/// Scattered light seen from the water side of a hit; sun dir L, view ray dir
/// (pointing into the water), sunColor already attenuated by shadowmap.
/// Matches HackWaterColor in the plan (approximation, no secondary trace).
/// </summary>
float3 IrcWaterColor(float3 dir, float3 L, float3 sunColor)
{
    float3 uT = _WaterScatter + _WaterAbsorb;
    float3 T = exp(-uT * _WaterHackDepth);
    float3 uTs = max(uT, 1e-3);
    float3 waterCol = sunColor * (1.0 - T) * (_WaterScatter / uTs)
                    * IrcScatterPhase(dot(-dir, L), _WaterPhaseG)
                    + IrcSkyAmbient(float3(0.0, 1.0, 0.0)) * T;
    return waterCol;
}

#endif // IRC_COMMON_HLSL
