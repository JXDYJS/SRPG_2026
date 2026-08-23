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

static const half3 VOXEL_WATER_COLOR = half3(0.02, 0.20, 0.30);
static const int VOXEL_FACE_RES = 16;
static const int VOXEL_MAX_STEPS = 128;
static const float VOXEL_EPS = 1e-4;

struct VoxelReflectRes{
    float3 hitPos;
    float3 hitNormal;
    half3 hitColor;
    half alpha;
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

/// <summary>Point-samples the 16x16 tile of the hit face at the hit position.</summary>
half4 VoxelSampleFace(uint typeId, float3 normal, float3 hitPos)
{
    float2 uv = abs(normal.x) > 0.5 ? hitPos.zy
              : abs(normal.z) > 0.5 ? hitPos.xy
              : hitPos.xz;
    uv -= floor(uv); // face-local [0,1)
    int2 texel = min(int2(uv * VOXEL_FACE_RES), VOXEL_FACE_RES - 1);
    int layer = (typeId - 1) * 6 + VoxelFaceIndex(normal);
    return (half4)_VoxelFaceTiles.Load(int4(texel, layer, 0));
}

VoxelReflectRes VoxelReflect(float3 ori, float3 dir)
{
    //目前只有对静态地图的体素处理
    VoxelReflectRes res = (VoxelReflectRes)0;
    float3 size = _VoxelMapSize.xyz;

    // Nudge so an origin lying exactly on a face enters the correct cell.
    ori += dir * 0.001;
    dir = normalize(dir);

    // Amanatides & Woo setup: tMax = ray distance to the next x/y/z boundary.
    int3 cell = int3(floor(ori));
    int3 step = int3(sign(dir));
    float3 safeDir = max(abs(dir), 1e-6);
    float3 tMax = (step > 0 ? (cell + 1 - ori) : (ori - cell)) / safeDir;
    float3 delta = 1.0 / safeDir;

    // [loop]: dynamic control flow inside; unrolling a full march fails on Vulkan,
    // and dynamic vector indexing is not addressable there, so each axis is
    // written out explicitly.
    [loop]
    for (int i = 0; i < VOXEL_MAX_STEPS; i++)
    {
        // Cross the closest boundary into the next cell.
        float tEnter;
        float3 n = 0;
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

        // Outside the chunk: nothing opaque left inside the map.
        if (any(cell < 0) || any(cell >= size)) break;

        uint b = (uint)round(_VoxelMap.Load(int4(cell, 0)).r * 255.0);
        uint typeId = b & 0x3F;
        if (typeId == 0) continue; // air

        float3 hitPos = ori + dir * tEnter;

        if ((b & 0x40) != 0) // half block: solid below cell.y + 0.5 only
        {
            float tExit = min(min(tMax.x, tMax.y), tMax.z);
            if (dir.y < 0)
            {
                // Reaching the slab top from above hits the water surface.
                float tHalf = (cell.y + 0.5 - ori.y) / dir.y;
                if (tHalf >= tEnter - VOXEL_EPS && tHalf <= tExit + VOXEL_EPS)
                {
                    //目前打到水面的体素数据完全是硬编码
                    res.hitPos = ori + dir * tHalf;
                    res.hitNormal = float3(0, 1, 0);
                    res.hitColor = VOXEL_WATER_COLOR;
                    res.alpha = 0.5;
                    return res;
                }
            }
            if (hitPos.y > cell.y + 0.5 + VOXEL_EPS) continue; // passed over the side
        }

        half4 col = VoxelSampleFace(typeId, n, hitPos);
        if (col.a < 0.5) continue; // cutout texel: keep marching

        res.hitPos = hitPos;
        res.hitNormal = n;
        res.hitColor = col.rgb;
        res.alpha = 1.0;
        return res;
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
            res.hitColor = VOXEL_WATER_COLOR;
            res.alpha = 0.5;
            return res;
        }
    }
    res.alpha = 0; // missed everything
    return res;
}