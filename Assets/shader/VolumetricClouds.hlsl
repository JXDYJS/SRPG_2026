#ifndef VOLUMETRIC_CLOUDS_INCLUDED
#define VOLUMETRIC_CLOUDS_INCLUDED

// ================================================================================
// VolumetricClouds.hlsl
// 离散体积云（Discrete Voxel Cloud）—— 骨架文件
//
// 移植自光影包 iterationRP Alpha 0.8.22：
//   shaders/Lib/IndividualFunctions/NUBIS.glsl
//   shaders/Lib/Utilities.glsl
//
// 本文件已抄好：
//   - 通用数学辅助函数（curve / curveTop / fsqrt / remapSaturate /
//     HenyeyGreenstein / RaySphereIntersection）
//   - 坐标变换 SetCloudPos（worldPos -> cloudPos，含行星外壳与高度变形）
//
// 待你编写（TODO）：
//   - SampleDensityDiscrete ：离散密度采样（0/1 体素）
//   - CloudLightingDiscrete  ：离散光照步进（逐体素向太阳计数）
//   - NubisCumulusDiscrete   ：体素 DDA 主步进（Amanatides & Woo）
//
// 参考原版坐标链（worldPos -> cloudPos -> 噪声坐标）：
//   1) SetCloudPos：世界坐标 -> 行星相对高度 + 高度归一化 w + 高度变形
//   2) 噪声坐标 = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE + windDirection * 10.0
//   3) 离散化：在噪声坐标这一层 floor 取整（做法乙：先加风再取整，方块随风平移）
// ================================================================================

#include "CloudSettings.hlsl"

// ---------------- 纹理声明（shader 全局，函数里直接引用，无需传参） ----------------
// Unity 里 TEXTURE3D + SAMPLER 在 HLSL 顶层声明后即为 shader 全局。
// 在最终 .shader 的 Properties 里声明同名纹理即可被材质绑定：
//     Properties { _CloudNoise3D ("Cloud Noise 3D", 3D) = "white" {} }
// 然后本文件的函数可直接用 SAMPLE_TEXTURE3D_LOD(_CloudNoise3D, sampler_CloudNoise3D, uv, lod)。
// 备注：纹理本身（128^3 RGBA8 的低频形状噪声）需要你在外部导入为 Texture3D。
// 若你倾向纯函数式（不依赖全局），可把参数改成 TEXTURE3D_ARGS(_CloudNoise3D, sampler_CloudNoise3D)，
// 参考本文件下方 SampleDensityDiscrete 的 TODO 注释。
TEXTURE3D(_CloudNoise3D);
SAMPLER(sampler_CloudNoise3D);

// ---------------- 常量（HLSL 需要的补全） ---------------- 
#ifndef PI
#define PI 3.14159265358979323846
#endif

// ---------------- 通用数学辅助函数（抄自 Utilities.glsl） ----------------

// saturate 在 HLSL 是内建关键字，直接用

// smoothstep 曲线：x 在 [0,1] 之间的平滑过渡
float curve(float x)
{
    return x * x * (3.0 - 2.0 * x);
}

// 顶部圆润曲线：x -> 1 - (x-1)^2，用于云层顶部塑形
float curveTop(float x)
{
    x = x - 1.0;
    return 1.0 - x * x;
}

// 快速平方根（原版用整数位运算近似，HLSL 写法：asfloat(0x1fbd1df5 + (asint(x) >> 1))）
float fsqrt(float x)
{
    return asfloat(0x1fbd1df5 + (asint(x) >> 1));
}

// 重映射并 clamp 到 [0,1]
float remapSaturate(float x, float e0, float e1)
{
    return saturate((x - e0) / (e1 - e0));
}

// Henyey-Greenstein 相位函数（主散射 g=0.65，次级 g=0.2）
float HenyeyGreenstein(float cosAngle, float g)
{
    float num = 1.0 - g * g;
    float denom = 1.0 + g * g - 2.0 * g * cosAngle;
    float rsqrt = rsqrt(denom);
    return num * rsqrt * rsqrt * rsqrt * (0.25 / PI);
}

// 射线-球体交点。返回 (近交点, 远交点)；未命中返回 (1e10, -1e10)
// 用于求视线与云层外壳（底部 / 顶部球面）的交点，确定步进区间
float2 RaySphereIntersection(float3 ori, float3 dir, float radius)
{
    float b = dot(ori, dir);
    float c = -radius * radius + dot(ori, ori);
    float d = b * b - c;

    float2 intersection = float2(1e10, -1e10);
    if (d >= 0.0)
    {
        d = sqrt(d);
        intersection = float2(-b - d, -b + d);
    }
    return intersection;
}

// ---------------- 坐标变换（抄自 NUBIS.glsl SetCloudPos，原样保留） ----------------
// worldPos(米) -> cloudPos：
//   cloudPos.y   = 到行星表面的高度（相对行星）
//   cloudPos.w   = 高度在 [cloudAltitude.x, cloudAltitude.y] 内归一化到 [0,1]
//   cloudPos.xyz = worldPos * cloudScale + 高度变形(float3(30, 0, -12) * w)
float4 SetCloudPos(float3 worldPos, float2 cloudAltitude, float planetRadius, float cloudScale)
{
    float4 cloudPos = float4(worldPos, 0.0);
    cloudPos.y = length(cloudPos.xyz + float3(0.0, planetRadius, 0.0)) - planetRadius;
    cloudPos.w = remapSaturate(cloudPos.y, cloudAltitude.x, cloudAltitude.y);
    cloudPos.xyz = cloudPos.xyz * cloudScale + float3(30.0 * cloudPos.w, 0.0, -12.0 * cloudPos.w);
    return cloudPos;
}

// ---------------- TODO: 离散密度采样 ----------------
// 输入 SetCloudPos 输出的 cloudPos，输出该体素密度（0.0 或 1.0）。
//
// 参考原版 SampleDensity 的 base 部分（不包含 detail）：
//   1) 噪声坐标（做法乙：先加风再取整，方块随风暴性平移）：
//        float3 noiseCoord = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE
//                          + windDirection * CLOUD_BASE_NOISE_WIND;
//        float3 block      = floor(noiseCoord / blockNoiseSize) * blockNoiseSize;
//        其中 blockNoiseSize = CLOUD_BLOCK_SIZE * CLOUD_BASE_NOISE_SCALE
//        （即把世界里的 CLOUD_BLOCK_SIZE 米块换算成噪声坐标里的尺寸）
//   2) 用 block 采样低频形状噪声（CloudNoise3D，128^3 RGBA8，需要你导入为 Texture3D）：
//        baseDensity 混合 = baseNoise.y * 0.4 + baseNoise.z * 0.4 + baseNoise.w * 0.2
//        baseDensity = remapSaturate(baseNoise.x, baseDensity - 1.0, 1.0)
//   3) 高度塑形（让云只出现在层内）：
//        shapeCurve = curveTop(saturate(1.0 - cloudPos.w)) * 0.5
//                   + curve(saturate(1.15 - cloudPos.w * 1.43)) * 0.5
//        baseDensity *= shapeCurve
//   4) 覆盖率（XZ 粗采样）：
//        coverageNoise 采样坐标 = cloudPos.xyz * CLOUD_COVERAGE_NOISE_SCALE
//                               + windDirection + CLOUD_COVERAGE_NOISE_OFFSET
//        coverage 按 wetness 插值，remapSaturate(1.0 - coverageNoise, coverage*0.2, coverage)
//   5) 最后硬切：step(CLOUD_OCCUPANCY_THRESHOLD, baseDensity) -> 0/1
float SampleDensityDiscrete(float4 cloudPos, float3 windDirection, float wetness)
{
    // TODO: 编写离散密度采样
    float3 noiseCoord = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE + windDirection * CLOUD_BASE_NOISE_WIND;
    float scale = CLOUD_BLOCK_SIZE * CLOUD_BASE_NOISE_SCALE;
    float3 block = floor(noiseCoord / scale) * scale;

    // 全局声明的 _CloudNoise3D 直接采样，无需传参
    float4 baseNoise = SAMPLE_TEXTURE3D_LOD(_CloudNoise3D, sampler_CloudNoise3D, block, 0);

    // 混合 = baseNoise.y*0.4 + baseNoise.z*0.4 + baseNoise.w*0.2
    // baseDensity = remapSaturate(baseNoise.x, 混合 - 1.0, 1.0)
    // ...高度塑形 / 覆盖率...
    // return step(CLOUD_OCCUPANCY_THRESHOLD, baseDensity); -> 0/1
    return 0.0;
}

// ---------------- TODO: 离散光照 ----------------
// 输入：命中体素的世界坐标 / 该体素密度 / cloudPos / 太阳方向，输出光照颜色。
//
// 参考原版 CloudLighting 的"光步进"改成逐体素计数：
//   - 从命中体素沿 worldShadowVector（太阳方向）逐块 DDA 走 cap 步（如 8~16 块），
//     用 SampleDensityDiscrete 累计"太阳方向上被遮挡的体素数量" sumOcc
//   - 阳光透射 = exp2(-sumOcc * 消光系数)，得到清晰的硬边方块阴影
//   - 主散射 = 阳光透射 * HenyeyGreenstein(VdotL, 0.65) * 太阳光颜色
//   - 环境光 = (1 - 密度) * fsqrt(cloudPos.w) * 天空光颜色
float3 CloudLightingDiscrete(float3 worldPos, float4 cloudPos, float occupied,
    float3 sunDir, float3 sunColor, float3 skyColor, float3 windDirection, float wetness,
    float2 cloudAltitude, float planetRadius, float cloudScale)
{
    // TODO: 编写离散光照（逐体素向太阳计数的光步进）
    return float3(0.0, 0.0, 0.0);
}

// ---------------- TODO: 体素 DDA 主步进 ----------------
// 入口：传入视线方向与世界相机位置，输出累加后的云颜色 + 透射率。
//
// 参考原版 NubisCumulus 流程（改成体素 DDA）：
//   1) 用 RaySphereIntersection 求视线与云层底部/顶部球面的交点，
//      确定步进区间 [marchingStart, marchingEnd]
//   2) 相机在云层内时（inCloud），起点改为相机位置，终点 cap 到 CLOUD_INNER_CAP
//   3) 体素 DDA（Amanatides & Woo）：
//        cell     = floor(rayPos / CLOUD_BLOCK_SIZE)
//        stepSign = sign(rayDir)
//        tDelta   = CLOUD_BLOCK_SIZE / abs(rayDir)        // 沿各轴穿过一块的距离
//        tMax     = ((cell + stepSign * 0.5 + 0.5) - rayPos) / rayDir * ... // 到下一块边界的距离
//      while (t < tEnd && transmittance > CLOUD_TRANSMIT_EPS):
//        每块中心调用 SampleDensityDiscrete，占据则：
//          光 = CloudLightingDiscrete(...)
//          absorption = exp2(-occupied * densityMul)
//          color += 光 * transmittance * (1 - absorption)
//          transmittance *= absorption
//        推进到最近的一块边界（比较 tMax.x/y/z 取最小），跳过空块
//   4) 大气透视（可选）：fade = exp2(-距离 * CLOUD_FADE_RATE)，远处淡出
//
// 参数建议：cloudAltitude = float2(CLOUD_CLEAR_ALTITUDE, CLOUD_CLEAR_ALTITUDE + CLOUD_CLEAR_THICKNESS)
//          planetRadius  = CLOUD_PLANET_RADIUS
//          cloudScale    = lerp(CLOUD_CLEAR_SCALE, CLOUD_RAIN_SCALE, wetness)
//          windDirection = float3(1.0, wetness * 0.1 - 0.05, -0.4) * wind
//          其中 wind = CLOUD_WIND_FACTOR * (frameTimeCounter * CLOUD_SPEED + 10.0 * CLOUD_FTC_OFFSET)
void NubisCumulusDiscrete(inout float3 color, float3 worldDir, float3 cameraPos,
    float2 cloudAltitude, float3 sunDir, float3 sunColor, float3 skyColor,
    float3 windDirection, float wetness, out float cloudTransmittance)
{
    // TODO: 编写体素 DDA 主步进
    cloudTransmittance = 1.0;
}

#endif // VOLUMETRIC_CLOUDS_INCLUDED
