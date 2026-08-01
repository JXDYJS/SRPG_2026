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
//
// 离散体素云的关键区别（重要）：
//   DDA 步进在世界坐标里按 CLOUD_BLOCK_SIZE 走格，所以体素网格必须世界对齐：
//     blockMin = floor(worldPos / CLOUD_BLOCK_SIZE) * CLOUD_BLOCK_SIZE
//   SetCloudPos 的缩放与高度变形会破坏世界方格（XZ 随高度偏移），
//   所以"取整"必须在世界坐标做，SetCloudPos 只用来把块中心映射成噪声采样点：
//     cloudPos = SetCloudPos(blockCenter, ...)          // 块中心是固定点 -> 整块恒值
//     noiseCoord = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE + windDirection * 10.0
//   windDirection 仍作为采样相位偏移（云内容随风流动），但不参与取整。
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
// 输入：世界坐标 worldPos（DDA 当前块的任意点，函数内部会对齐到块）、输出该体素密度（0.0 或 1.0）。
//
// 关键点（为什么取整在世界坐标、而不是 cloudPos）：
//   DDA 按 CLOUD_BLOCK_SIZE 在世界坐标步进，所以体素网格必须世界对齐：
//     blockMin = floor(worldPos / CLOUD_BLOCK_SIZE) * CLOUD_BLOCK_SIZE
//   SetCloudPos 的缩放与高度变形会破坏世界方格（XZ 随高度偏移），
//   所以先在世界坐标 floor 出块，再用"块中心"调 SetCloudPos 得到噪声采样点。
//   块中心是固定点 -> 整块恒值，无需再对噪声坐标取整。
//
// 参考原版 SampleDensity 的 base 部分（不包含 detail）：
//   1) 世界坐标取整 -> 块中心 -> SetCloudPos -> 噪声坐标：
//        float4 cloudPos = SetCloudPos(blockCenter, cloudAltitude, planetRadius, cloudScale);
//        float3 noiseCoord = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE
//                          + windDirection * CLOUD_BASE_NOISE_WIND;
//   2) 用 noiseCoord 采样低频形状噪声（CloudNoise3D，128^3 RGBA8）：
//        baseDensity 混合 = baseNoise.y * 0.4 + baseNoise.z * 0.4 + baseNoise.w * 0.2
//        baseDensity = remapSaturate(baseNoise.x, baseDensity - 1.0, 1.0)
//   3) 垂直密度剖面（下厚上薄，共 4 项；"层内约束"由 SetCloudPos 的
//      w = remapSaturate(...) 完成，不在这里）：
//        shapeCurve = curveTop(saturate(1.0 - cloudPos.w)) * 0.5
//                   + curve(saturate(1.15 - cloudPos.w * 1.43)) * 0.5
//        baseDensity *= shapeCurve
//        baseDensity *= fsqrt(saturate(cloudPos.w * 2.5)) * 0.2 + 0.8;
//        baseDensity *= lerp(1.0, curveTop(saturate(cloudPos.w * 3.0)), wetness);
//        baseDensity *= curve(saturate(cloudPos.w * 1.8 - 0.8)) * 2.0 + 1.0;
//        baseDensity *= curveTop(saturate(cloudPos.w * 1.8));
//   4) 覆盖率（XZ 粗采样，连续未取整）：
//        coverageNoise 采样坐标 = cloudPos.xyz * CLOUD_COVERAGE_NOISE_SCALE
//                               + windDirection + CLOUD_COVERAGE_NOISE_OFFSET
//        coverage 按 wetness 插值，remapSaturate(1.0 - coverageNoise, coverage*0.2, coverage)
//   5) 最后硬切：step(CLOUD_OCCUPANCY_THRESHOLD, baseDensity) -> 0/1
float SampleDensityDiscrete(float3 worldPos, float3 windDirection, float wetness,
    float2 cloudAltitude, float planetRadius, float cloudScale)
{
    // TODO: 编写离散密度采样
    // 1) 世界坐标取整 -> 块（网格本体，必须世界对齐）
    float3 blockMin = floor(worldPos / CLOUD_BLOCK_SIZE) * CLOUD_BLOCK_SIZE;
    float3 blockCenter = blockMin + 0.5 * CLOUD_BLOCK_SIZE;

    // 2) 块中心 -> cloudPos（固定点 -> 整块恒值），再取噪声采样点
    float4 cloudPos = SetCloudPos(blockCenter, cloudAltitude, planetRadius, cloudScale);
    float3 noiseCoord = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE + windDirection * CLOUD_BASE_NOISE_WIND;

    // 3) 采样 + 混合
    float4 baseNoise = SAMPLE_TEXTURE3D_LOD(_CloudNoise3D, sampler_CloudNoise3D, noiseCoord, 0);
    float density = baseNoise.y * 0.4 + baseNoise.z * 0.4 + baseNoise.w * 0.2;
    density = remapSaturate(baseNoise.x, density - 1.0, 1.0);

    // ========== 垂直密度剖面（下厚上薄，共 4 项） ==========
    float shapeCurve = curveTop(saturate(1.0 - cloudPos.w)) * 0.5;
    shapeCurve += curve(saturate(1.15 - cloudPos.w * 1.43)) * 0.5;
    density *= shapeCurve;
    density *= fsqrt(saturate(cloudPos.w * 2.5)) * 0.2 + 0.8;
    density *= lerp(1.0, curveTop(saturate(cloudPos.w * 3.0)), wetness);
    density *= curve(saturate(cloudPos.w * 1.8 - 0.8)) * 2.0 + 1.0;
    density *= curveTop(saturate(cloudPos.w * 1.8));
    density = saturate(density);
    float coverageNoise  = SAMPLE_TEXTURE3D_LOD(_CloudNoise3D, sampler_CloudNoise3D, cloudPos.xyz * CLOUD_COVERAGE_NOISE_SCALE + windDirection + CLOUD_COVERAGE_NOISE_OFFSET, 0).x;
    float coverage = 1.0  - remapSaturate(1.0 - coverageNoise,CLOUD_COVERAGE * 0.2,CLOUD_COVERAGE);
    density *= coverage;
    return step(CLOUD_OCCUPANCY_THRESHOLD,density);
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
    if(occupied < 0.5) return float3(0.0,0.0,0.0);
    float transmittance = 1.0;
    float3 lowBoundary = floor(cloudPos);
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
