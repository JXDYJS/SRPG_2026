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

/// <summary>
/// Nearest-neighbor cache sample. Offset P by N*eps first (epsilon extrusions
/// into the border ring must land in the air texel hugging the surface).
/// </summary>
float4 IrcSampleNearest(float3 worldPos, float3 n)
{
    worldPos += n * IRC_EPS;
    int3 texel = IrcWorldToTexel(worldPos);
    texel = clamp(texel, int3(0, 0, 0), int3(IrcTexelSize() + 0.5) - 1);
    return _IRCCacheRead.Load(int4(texel, 0));
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
