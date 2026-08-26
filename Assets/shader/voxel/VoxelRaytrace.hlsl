// Voxel ray marching (Amanatides & Woo DDA) through the static map volume.
// World units == voxel units: voxel (x,y,z) occupies cube [x,x+1)x[y,y+1)x[z,z+1).
// Byte layout per voxel (see VoxelGpuMap.cs):
//   bits 0..5 blockTypeId (0 = air, 1..63), bit 6 halfBlock, bit 7 reserved.
// Globals bound by ShaderManager:
//   _VoxelMap       Texture3D R8, Load returns byte/255 in .r
//   _VoxelFaceTiles Texture2DArray ARGB32, layer = (typeId-1)*6 + face
//   _VoxelMapSize   (width, height, depth, 0)
//   _WaterSurfaceHeight (slab tops / water plane height)
// 8-bit data lives in the texture format (R8), not in a shader type:
// HLSL has no uint8 scalar; Load/Sample return a 32-bit value.

Texture3D<float4> _VoxelMap;
Texture2DArray<float4> _VoxelFaceTiles;
float4 _VoxelMapSize;
float _WaterSurfaceHeight;

// ---- dynamic unit volumes (filled by VoxelUnitBakerFeature) ----
// Packed 3D volume, slot X offset = (objID-1) * UNIT_GRID_RES.x;
// RGBA = color + occupancy. Roster indexed by objID.
struct UnitGridData
{
    float4 originYaw; // xyz = world min corner of the grid box, w = yaw (reserved)
    float4 sizeSlot;  // xyz = grid world size, w = packed volume X offset of this slot
    float4 flags;     // x = active
};

Texture3D<float4> _PackedUnitVolume;
StructuredBuffer<UnitGridData> _UnitGrids;
float4 _UnitScanParams; // x = highest live objID to scan (0 = no units)

static const int3 UNIT_GRID_RES = int3(16, 48, 16);

static const half3 VOXEL_WATER_COLOR = half3(0.02, 0.20, 0.30);
static const int VOXEL_FACE_RES = 16;
static const int VOXEL_MAX_STEPS = 128;
static const float VOXEL_EPS = 1e-4;

// Hit types, reusing the byte-map encoding: 1..63 are block type ids, values
// beyond the 6-bit range classify non-voxel hits, 0 = nothing (sky).
#define VOXEL_HIT_NONE  0
#define VOXEL_HIT_WATER 64
#define VOXEL_HIT_UNIT 100

// Debug modes for the static-map hit color:
//   0 = albedo tile
//   1 = face-local uv as RG gradient
//   2 = hit face index as red (0..5 -> 0..1): checks normal selection
//   3 = uv RG, alpha cutoff disabled: texel pass-through test
//   4 = half-block logic disabled entirely (incl. water check), uv RG
//   5 = raw map byte / 255 grayscale: data sanity
//   6 = raw hit normal mapped to 0..1 (fixed independent of camera)
#define VOXEL_DEBUG_MODE 6

struct VoxelRaytraceRes{
    float3 hitPos;
    float3 hitNormal;
    half3 hitColor;
    half alpha;
    uint typeId; // VOXEL_HIT_*, or 1..63 for a map block
};

/// <summary>Atlas layer for a face normal: 0=+Y 1=-Y 2=+X 3=-X 4=+Z 5=-Z.</summary>
int VoxelFaceIndex(float3 n)
{
    if (n.y > 0.5) return 0;
    if (n.y < -0.5) return 1;
    if (n.x > 0.5) return 2;
    if (n.x < -0.5) return 3;
    if (n.z > 0.5) return 4;
    return 5;
}

/// <summary>Face-local uv [0,1) of a hit point, from the face's two tangent axes.</summary>
float2 VoxelFaceUv(float3 normal, float3 hitPos)
{
    float2 uv = abs(normal.x) > 0.5 ? hitPos.zy
              : abs(normal.z) > 0.5 ? hitPos.xy
              : hitPos.xz;
    return uv - floor(uv);
}

/// <summary>Point-samples the 16x16 tile of the hit face at the hit position.</summary>
half4 VoxelSampleFace(uint typeId, float3 normal, float3 hitPos)
{
    float2 uv = VoxelFaceUv(normal, hitPos);
    int2 texel = min(int2(uv * VOXEL_FACE_RES), VOXEL_FACE_RES - 1);
    int layer = (typeId - 1) * 6 + VoxelFaceIndex(normal);
    return (half4)_VoxelFaceTiles.Load(int4(texel, layer, 0));
}

/// <summary>
/// Geometric first intersection of the ray with a cell's unit cube —
/// independent of DDA crossing order, whose tie-breaking aliases stripes on
/// grazing surfaces. Returns the entered face normal; tEntry out.
/// </summary>
float3 CellEntryFace(float3 cellMin, float3 ori, float3 dir, out float tEntry)
{
    float3 inv = (1.0 / max(abs(dir), 1e-6)) * (step(0.0, dir) * 2.0 - 1.0);
    float3 t0 = (cellMin - ori) * inv;
    float3 t1 = (cellMin + 1.0 - ori) * inv;
    float3 tn = min(t0, t1);
    float3 tf = max(t0, t1);
    tEntry = max(max(tn.x, tn.y), tn.z);
    float3 n = 0;
    if (tEntry == tn.x)      n = float3(dir.x >= 0.0 ? -1.0 : 1.0, 0, 0);
    else if (tEntry == tn.y) n = float3(0, dir.y >= 0.0 ? -1.0 : 1.0, 0);
    else                     n = float3(0, 0, dir.z >= 0.0 ? -1.0 : 1.0);
    return n;
}

// Slab test against an AABB; t values share the global ray parametrization.
bool UnitRayBox(float3 ori, float3 dir, float3 bmin, float3 bmax,
                out float tEnter, out float tExit)
{
    float3 invDir = (1.0 / max(abs(dir), 1e-6)) * (step(0.0, dir) * 2.0 - 1.0);
    float3 t0 = (bmin - ori) * invDir;
    float3 t1 = (bmax - ori) * invDir;
    float3 tn = min(t0, t1);
    float3 tf = max(t0, t1);
    tEnter = max(max(tn.x, tn.y), tn.z);
    tExit = min(min(tf.x, tf.y), tf.z);
    return tExit >= max(tEnter, 0.0);
}

/// <summary>
/// Scans the unit roster: continuous-position AABB cull per unit, then a short
/// local DDA through that unit's 16x48x16 sub-grid inside the packed volume.
/// Returns the closest unit hit (white until real albedo lands).
/// </summary>
VoxelRaytraceRes TraceUnitVolumes(float3 ori, float3 dir)
{
    VoxelRaytraceRes best = (VoxelRaytraceRes)0;
    float bestT = 1e30;
    int scanMax = (int)_UnitScanParams.x;

    [loop]
    for (int i = 1; i <= scanMax; i++)
    {
        UnitGridData g = _UnitGrids[i];
        if (g.flags.x < 0.5) continue;

        float3 bmin = g.originYaw.xyz;
        float3 bsize = g.sizeSlot.xyz;
        float tBoxEnter, tBoxExit;
        if (!UnitRayBox(ori, dir, bmin, bmin + bsize, tBoxEnter, tBoxExit)) continue;

        // Local-space DDA; direction is shared so t offsets are identical.
        float3 voxelSize = bsize / UNIT_GRID_RES;
        float3 lp = (ori - bmin) + dir * (tBoxEnter + VOXEL_EPS);
        int3 stp = int3(sign(dir));
        float3 safeDir = max(abs(dir), 1e-6);
        int3 cell = clamp(int3(floor(lp / voxelSize)), int3(0, 0, 0), UNIT_GRID_RES - 1);
        float3 tNext = ((stp > 0 ? cell + 1 : cell) * voxelSize - lp) / safeDir;
        float3 tDelta = voxelSize / safeDir;
        float tSpan = (tBoxExit - tBoxEnter) + VOXEL_EPS;

        [loop]
        for (int s = 0; s < 96; s++)
        {
            float tStep;
            float3 n = 0;
            if (tNext.x <= tNext.y && tNext.x <= tNext.z)
            {
                tStep = tNext.x; cell.x += stp.x; tNext.x += tDelta.x; n.x = -stp.x;
            }
            else if (tNext.y <= tNext.z)
            {
                tStep = tNext.y; cell.y += stp.y; tNext.y += tDelta.y; n.y = -stp.y;
            }
            else
            {
                tStep = tNext.z; cell.z += stp.z; tNext.z += tDelta.z; n.z = -stp.z;
            }

            if (tStep > tSpan) break; // left this unit's box
            if (any(cell < 0) || any(cell >= UNIT_GRID_RES)) continue;

            float4 v = _PackedUnitVolume.Load(int4((int)g.sizeSlot.w + cell.x, cell.y, cell.z, 0));
            if (v.a < 0.5) continue; // empty voxel: keep marching

            float tGlobal = tBoxEnter + tStep;
            if (tGlobal >= bestT) break; // cannot beat current best

            best.hitPos = ori + dir * tGlobal;
            best.hitNormal = n;
            best.hitColor = v.rgb;
            best.alpha = 1.0;
            best.typeId = VOXEL_HIT_UNIT;
            bestT = tGlobal;
            break; // nearest surface of this unit found
        }
    }
    return best;
}

VoxelRaytraceRes VoxelRaytraceStatic(float3 ori, float3 dir)
{
    //目前只有对静态地图的体素处理
    VoxelRaytraceRes res = (VoxelRaytraceRes)0;
    float3 size = _VoxelMapSize.xyz;
    dir = normalize(dir);

    // Slab test: the t-interval in which the ray is inside the chunk. invDir
    // must keep the direction SIGN: an unsigned inverse mirrors the interval
    // about t = 0 for negative-direction axes, so rays looking back at the
    // chunk from beyond it come out all-negative and get rejected outright
    // (those view angles fell through to the water fallback).
    float3 invDir = (1.0 / max(abs(dir), 1e-6)) * (step(0.0, dir) * 2.0 - 1.0);
    float3 tMinSide = min(-ori * invDir, (size - ori) * invDir);
    float3 tMaxSide = max(-ori * invDir, (size - ori) * invDir);
    float rayEnter = max(max(tMinSide.x, tMinSide.y), tMinSide.z);
    float rayExit = min(min(tMaxSide.x, tMaxSide.y), tMaxSide.z);

    // The ray can only hit voxels if it crosses the chunk ahead of the origin.
    if (rayEnter <= rayExit && rayExit >= 0.0)
    {
        // Fast-forward to just inside the chunk entry so the step budget is
        // spent on in-chunk cells, not the empty corridor from a distant
        // camera. rayExit is rebased without the epsilon so the remaining
        // span stays >= 0; the 0.001 offset keeps floor() on the entry side
        // of shared face planes.
        float tStart = max(rayEnter, 0.0);

        // Binding axis of the slab test = face the ray enters through; seed
        // the origin cell's entry normal from it. Without this, a clamped
        // start inside a solid block samples with n = 0, which selects the
        // wrong uv pair and atlas tile (stretched/striped walls).
        float3 n = 0;
        if (rayEnter > 0.0)
        {
            if (rayEnter == tMinSide.x)      n.x = dir.x >= 0.0 ? -1.0 : 1.0;
            else if (rayEnter == tMinSide.y) n.y = dir.y >= 0.0 ? -1.0 : 1.0;
            else                             n.z = dir.z >= 0.0 ? -1.0 : 1.0;
        }

        ori += dir * (tStart + 0.001);
        rayExit -= tStart;

        // Amanatides & Woo setup from the (possibly clamped) origin:
        // tMax = ray distance to the next x/y/z boundary.
        int3 cell = int3(floor(ori));
        int3 step = int3(sign(dir));
        float3 safeDir = max(abs(dir), 1e-6);
        float3 tMax = (step > 0 ? (cell + 1 - ori) : (ori - cell)) / safeDir;
        float3 delta = 1.0 / safeDir;

        // Sample the current cell first, then step. Sampling before stepping
        // is required: after the entry clamp the origin cell is the first
        // in-chunk cell, and stepping first would skip chunk-face walls.
        // tEnter = -0.001 puts that first hitPos on the entry face plane.
        //
        // [loop]: dynamic control flow inside; unrolling a full march fails on
        // Vulkan, and dynamic vector indexing is not addressable there, so each
        // axis is written out explicitly.
        float tEnter = -0.001;
        [loop]
        for (int s = 0; s <= VOXEL_MAX_STEPS; s++)
        {
            if (!any(cell < 0) && !any(cell >= size))
            {
                uint b = (uint)round(_VoxelMap.Load(int4(cell, 0)).r * 255.0);
                uint typeId = b & 0x3F;
                if (typeId != 0) // non-air
                {
                    // Geometric entry of the current cell: the sampled n and
                    // hitPos come from the true ray-box intersection, not from
                    // DDA crossing order (whose ties stripe grazing surfaces).
                    float tFace;
                    float3 nG = CellEntryFace(float3(cell), ori, dir, tFace);
                    float3 hitPos = ori + dir * tFace;

                    if ((b & 0x40) != 0 && VOXEL_DEBUG_MODE != 4) // half block: solid below cell.y + 0.5 only
                    {
                        float tCellExit = min(min(tMax.x, tMax.y), tMax.z);
                        if (dir.y < 0)
                        {
                            // Reaching the slab top from above hits the water surface.
                            float tHalf = (cell.y + 0.5 - ori.y) / dir.y;
                            if (tHalf >= tEnter - VOXEL_EPS && tHalf <= tCellExit + VOXEL_EPS)
                            {
                                //目前打到水面的体素数据完全是硬编码
                                res.hitPos = ori + dir * tHalf;
                                res.hitNormal = float3(0, 1, 0);
                                res.hitColor = VOXEL_DEBUG_MODE == 0 ? VOXEL_WATER_COLOR : half3(0, 1, 0.5);
                                res.alpha = 0.5;
                                res.typeId = VOXEL_HIT_WATER;
                                return res;
                            }
                        }
                        if (hitPos.y <= cell.y + 0.5 + VOXEL_EPS || VOXEL_DEBUG_MODE == 4) // not passing over the side
                        {
                            half4 col = VoxelSampleFace(typeId, nG, hitPos);
                            if (col.a >= 0.5 || VOXEL_DEBUG_MODE == 3 || VOXEL_DEBUG_MODE == 4)
                            {
                                res.hitPos = hitPos;
                                res.hitNormal = nG;
#if VOXEL_DEBUG_MODE == 1
                                res.hitColor = half3(VoxelFaceUv(nG, hitPos), 0); // debug: raw uv
#elif VOXEL_DEBUG_MODE == 2
                                res.hitColor = half3(VoxelFaceIndex(nG) / 5.0, 0, 0); // debug: hit face
#elif VOXEL_DEBUG_MODE == 3
                                res.hitColor = half3(VoxelFaceUv(nG, hitPos), 0); // debug: uv, opaque
#elif VOXEL_DEBUG_MODE == 4
                                res.hitColor = half3(VoxelFaceUv(nG, hitPos), 0); // debug: uv, half-block disabled
#elif VOXEL_DEBUG_MODE == 5
                                res.hitColor = half3((b & 0x3F) / 63.0, (b & 0x3F) / 63.0, (b & 0x3F) / 63.0);
#elif VOXEL_DEBUG_MODE == 6
                                res.hitColor = half3(nG * 0.5 + 0.5); // debug: raw normal
#else
                                res.hitColor = col.rgb;
#endif
                                res.alpha = 1.0;
                                res.typeId = typeId;
                                return res;
                            }
                        }
                    }
                    else
                    {
                        half4 col = VoxelSampleFace(typeId, nG, hitPos);
                        if (col.a >= 0.5 || VOXEL_DEBUG_MODE == 3) // cutout texels keep marching
                        {
                            res.hitPos = hitPos;
                            res.hitNormal = nG;
#if VOXEL_DEBUG_MODE == 1
                            res.hitColor = half3(VoxelFaceUv(nG, hitPos), 0); // debug: raw uv
#elif VOXEL_DEBUG_MODE == 2
                            res.hitColor = half3(VoxelFaceIndex(nG) / 5.0, 0, 0); // debug: hit face
#elif VOXEL_DEBUG_MODE == 3
                            res.hitColor = half3(VoxelFaceUv(nG, hitPos), 0); // debug: uv, opaque
#elif VOXEL_DEBUG_MODE == 4
                            res.hitColor = half3(VoxelFaceUv(nG, hitPos), 0); // debug: uv, half-block disabled
#elif VOXEL_DEBUG_MODE == 5
                            res.hitColor = half3((b & 0x3F) / 63.0, (b & 0x3F) / 63.0, (b & 0x3F) / 63.0);
#elif VOXEL_DEBUG_MODE == 6
                            res.hitColor = half3(nG * 0.5 + 0.5); // debug: raw normal
#else
                            res.hitColor = col.rgb;
#endif
                            res.alpha = 1.0;
                            res.typeId = typeId;
                            return res;
                        }
                    }
                }
            }

            if (s == VOXEL_MAX_STEPS) break;

            // Cross the closest boundary into the next cell.
            if (tMax.x <= tMax.y && tMax.x <= tMax.z)
            {
                tEnter = tMax.x; cell.x += step.x; tMax.x += delta.x; n.x = -step.x;
            }
            else if (tMax.y <= tMax.z)
            {
                tEnter = tMax.y; cell.y += step.y; tMax.y += delta.y; n.y = -step.y;
            }
            else
            {
                tEnter = tMax.z; cell.z += step.z; tMax.z += delta.z; n.z = -step.z;
            }

            // Passed the chunk: nothing left to hit.
            if (tEnter > rayExit) break;
        }
    }

    // No opaque hit: fall back to the water plane (ocean beyond the chunk,
    // or an empty column below the surface).
    if (abs(dir.y) > 1e-6)
    {
        float tWater = (_WaterSurfaceHeight - ori.y) / dir.y;
        if (tWater > 0)
        {
            res.hitPos = ori + dir * tWater;
            res.hitNormal = dir.y > 0 ? float3(0, -1, 0) : float3(0, 1, 0);
            res.hitColor = VOXEL_DEBUG_MODE == 0 ? VOXEL_WATER_COLOR : half3(0, 1, 0.5);
            res.alpha = 0.5;
            res.typeId = VOXEL_HIT_WATER;
            return res;
        }
    }
    res.alpha = 0; // missed everything
    res.typeId = VOXEL_HIT_NONE;
    return res;
}

/// <summary>
/// Combined entry point: static map march vs dynamic unit volumes, closest hit wins.
/// </summary>
VoxelRaytraceRes VoxelRaytrace(float3 ori, float3 dir)
{
    VoxelRaytraceRes sres = VoxelRaytraceStatic(ori, dir);
    float ts = sres.alpha > 0.0 ? length(sres.hitPos - ori) : 1e30;

    VoxelRaytraceRes ures = TraceUnitVolumes(ori, dir);
    float tu = ures.alpha > 0.0 ? length(ures.hitPos - ori) : 1e30;

    // HLSL ternary cannot return structs: use explicit branch.
    if (tu < ts)
    {
        return ures;
    }
    return sres;
}