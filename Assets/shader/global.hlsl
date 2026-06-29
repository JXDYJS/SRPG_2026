#if !defined(_MY_GLOBAL)
#define _MY_GLOBAL

#define clamp01(x) clamp((x),0.0,1.0)
#define max0(x) max((x),0.0)

half linear_step(float edge0, float edge1, float x) {
    return clamp01((x - edge0) / (edge1 - edge0));
}

half linear_step(half edge0, half edge1, half x) {
    return clamp01((x - edge0) / (edge1 - edge0));
}

// Convert 3D direction to equirectangular UV (lat-long mapping)
// Used for sampling 2D panoramic sky maps like _DynamicSkyMap
float2 DirToEquirectangularUV(float3 dir)
{
    float phi = atan2(dir.x, dir.z);               // [-PI, PI]
    float theta = asin(clamp(dir.y, -1.0, 1.0));   // [-PI/2, PI/2]
    return float2(phi * 0.15915494309, theta * 0.31830988618 + 0.5); // [0,1]
}
#endif