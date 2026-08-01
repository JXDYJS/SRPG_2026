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
    float invSqrt = rsqrt(denom);
    return num * invSqrt * invSqrt * invSqrt * (0.25 / PI);
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

// ---------------- 坐标变换（改造自 NUBIS.glsl SetCloudPos） ----------------
// worldPos(米) -> cloudPos：
//   cloudPos.y   = 到行星表面的高度（相对行星）
//   cloudPos.w   = 高度在 [cloudAltitude.x, cloudAltitude.y] 内归一化到 [0,1]
//   cloudPos.xyz = worldPos * cloudScale + 高度变形(float3(30, 0, -12) * w)
//
// 离散体素云改造：取整内置于本函数。
//   DDA 在世界坐标按 CLOUD_BLOCK_SIZE 步进，体素网格必须世界对齐；
//   且 SetCloudPos 的缩放/高度变形会破坏世界方格（XZ 随高度偏移）。
//   所以先在世界坐标 floor 到块中心（blockCenter），再走行星外壳变换。
//   效果：同一方块内任意点 -> 同一 blockCenter -> 同一 cloudPos -> 整块恒值。
float4 SetCloudPos(float3 worldPos, float2 cloudAltitude, float planetRadius, float cloudScale)
{
    // 世界坐标取整到块中心（网格本体，世界对齐）
    float3 blockCenter = floor(worldPos / CLOUD_BLOCK_SIZE) * CLOUD_BLOCK_SIZE + 0.5 * CLOUD_BLOCK_SIZE;

    float4 cloudPos = float4(blockCenter, 0.0);
    cloudPos.y = length(cloudPos.xyz + float3(0.0, planetRadius, 0.0)) - planetRadius;
    cloudPos.w = remapSaturate(cloudPos.y, cloudAltitude.x, cloudAltitude.y);
    cloudPos.xyz = cloudPos.xyz * cloudScale + float3(30.0 * cloudPos.w, 0.0, -12.0 * cloudPos.w);
    return cloudPos;
}

// ---------------- TODO: 离散密度采样 ----------------
// 输入：世界坐标 worldPos（DDA 当前块的任意点，函数内部会对齐到块）、输出该体素密度（0.0 或 1.0）。
//
// 关键点（取整已内置于 SetCloudPos，不需要在这里做）：
//   DDA 按 CLOUD_BLOCK_SIZE 在世界坐标步进，体素网格必须世界对齐；
//   SetCloudPos 的缩放/高度变形会破坏世界方格（XZ 随高度偏移），
//   所以 SetCloudPos 内部先在世界坐标 floor 到块中心，再做行星外壳变换。
//   块中心是固定点 -> 同一方块内 cloudPos 恒定 -> 整块恒值。
//
// 参考原版 SampleDensity 的 base 部分（不包含 detail）：
//   1) 噪声坐标 = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE + windDirection * CLOUD_BASE_NOISE_WIND
//      （cloudPos = SetCloudPos(worldPos, ...)，取整已在函数内完成）
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
    // 1) SetCloudPos 内部已在世界坐标取整到块中心 -> 整块恒值
    float4 cloudPos = SetCloudPos(worldPos, cloudAltitude, planetRadius, cloudScale);
    float3 noiseCoord = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE + windDirection * CLOUD_BASE_NOISE_WIND;

    // 2) 采样 + 混合
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

// ---------------- 离散光照（光步进 DDA） ----------------
// 输入：命中体素的世界坐标 / 该体素密度 / cloudPos / 视线方向 / 太阳方向，输出光照颜色。
//
// 思路：从命中块沿太阳方向逐块 DDA（Amanatides & Woo）推进，累计"光学厚度"
//       （路上被占据的块数 sumOcc）。空块即停（射线已离开云）。消光 exp2(-sumOcc * k)
//       得到硬边方块阴影；再叠加 HG 相位 + 环境光。
//
// 散射强度（闭式，前向散射）：
//   太阳光到达该点的能量 = sunColor * exp2(-Στ) * Π(1 + ω*P_f*τ)
//   - exp2(-Στ)：直接透射（Beer-Lambert）
//   - Π(1 + ω*P_f*τ)：束内前向散射补偿（密度恒定块的闭式算子，ω=反照率，P_f=前向相位）
//   块内恒密度 -> 闭式成立，这就是"太阳→点的散射强度"。
//
// 到达下一块的距离：
//   tMax = (下一块边界 - 当前点) / sunDir，取三轴最小值即最近边界。
//   浮点注意：sunDir 某轴分量为 0 时不能除，需给该轴极大值（不参与比较）。
float3 CloudLightingDiscrete(float3 worldPos, float4 cloudPos, float occupied,
    float3 viewDir, float3 sunDir, float3 sunColor, float3 skyColor,
    float3 windDirection, float wetness,
    float2 cloudAltitude, float planetRadius, float cloudScale)
{
    if (occupied < 0.5) return float3(0.0, 0.0, 0.0);

    const float BLOCK = CLOUD_BLOCK_SIZE;

    // ===== 光步进 DDA：从当前块向太阳方向逐块推进 =====
    // 起点：当前块的左下角（世界对齐）
    float3 rayPos = floor(worldPos / BLOCK) * BLOCK;
    float3 cell = floor(rayPos / BLOCK);
    float3 stepSign = sign(sunDir);
    float3 dirAbs = max(abs(sunDir), 1e-6);   // 防除零

    // 到下一块边界（沿射线方向的 t 值）
    float3 tMax;
    tMax.x = (stepSign.x == 0.0) ? 1e30 : ((cell.x + max(stepSign.x, 0.0)) * BLOCK - rayPos.x) / sunDir.x;
    tMax.y = (stepSign.y == 0.0) ? 1e30 : ((cell.y + max(stepSign.y, 0.0)) * BLOCK - rayPos.y) / sunDir.y;
    tMax.z = (stepSign.z == 0.0) ? 1e30 : ((cell.z + max(stepSign.z, 0.0)) * BLOCK - rayPos.z) / sunDir.z;
    float3 tDelta = BLOCK / dirAbs;   // 沿射线穿过一块所需距离

    float sumOcc = 0.0;        // 光学厚度（被占据块数）
    float sumForward = 0.0;    // 束内前向散射闭式累加 Σ(ω*P_f*τ)
    float rayT = 0.0;
    float prevT = 0.0;

    for (int i = 0; i < CLOUD_LIGHT_STEPS; i++)
    {
        // 推进到最近的下一块边界
        if (tMax.x < tMax.y && tMax.x < tMax.z)
        {
            rayT = tMax.x; tMax.x += tDelta.x; cell.x += stepSign.x;
        }
        else if (tMax.y < tMax.z)
        {
            rayT = tMax.y; tMax.y += tDelta.y; cell.y += stepSign.y;
        }
        else
        {
            rayT = tMax.z; tMax.z += tDelta.z; cell.z += stepSign.z;
        }

        // 新块中心（世界坐标）
        float3 checkPos = (cell + 0.5) * BLOCK;
        float occ = SampleDensityDiscrete(checkPos, windDirection, wetness,
            cloudAltitude, planetRadius, cloudScale);

        if (occ < 0.5) break;   // 空块：已离开云，停止
        sumOcc += occ;          // 占据块计入光学厚度

        // 加法闭式：单次前向散射随光程累加 Σ(ω*P_f*τ)
        float tau = CLOUD_LIGHT_EXTINCTION * occ;
        float hgFwd = HenyeyGreenstein(1.0, 0.65);   // 前向相位 P_f = HG(cos=1, g)
        sumForward += CLOUD_SCATTER_ALBEDO * hgFwd * tau;
    }

    // ===== 光照 =====
    // 真实相位角：视线与太阳夹角
    float VdotL = dot(viewDir, sunDir);
    float hg = HenyeyGreenstein(VdotL, 0.65);

    // 太阳到达该点能量 = 直接透射 exp2(-Στ) * (1 + Σ(ω*P_f*τ))
    // 加法闭式与单次前向散射物理一致，能量不会超 1 过冲
    float sunTrans = exp2(-sumOcc * CLOUD_LIGHT_EXTINCTION);
    float3 sunArrive = sunColor * (sunTrans * (1.0 + sumForward));

    // 散射到视线方向：到达能量 * 反照率 * HG 相位
    float3 directLight = sunArrive * (CLOUD_SCATTER_ALBEDO  * CLOUD_LIGHT_SUN_MUL);

    // 环境光已移除：暗部填充交给 CompositeClouds 的大气透视 aerial*(1-trans)，
    // 避免三路能量叠加过亮（原 NUBIS 里 ambientScattering 同理可省）。
    return directLight;
}

// ---------------- 体素 DDA 主步进 ----------------
// 入口：传入视线方向与世界相机位置，输出累加后的云颜色 + 透射率。
//
// 方案B（已确认）：
//   1) DDA 空区跳过：在云层外壳内，先逐块 DDA 快速找到第一处占据的云块，
//      用几何关系求出进入该块的起点 tCloudStart
//   2) 传统 raymarch（非 DDA）：从 tCloudStart 起以"动态步长"推进，
//      步长随透射率降低而增大：stepSize = lerp(CLOUD_MAX_STEP, CLOUD_MIN_STEP, transmittance)
//   3) 停法：进云后标记 inCloud，再次碰到空块立即结束（忽略云层叠加）
//   4) 透射率低于 CLOUD_TRANSMIT_EPS 直接退出
//
// 返回：cloudColor 累加进 color（inout），cloudTransmittance 单独输出。
// 合成在调用方做：sky * trans + cloudColor + sky * ω * (1 - trans)（天空散射闭式）
void NubisCumulusDiscrete(inout float3 color, float3 worldDir, float3 cameraPos,
    float2 cloudAltitude, float3 sunDir, float3 sunColor, float3 skyColor,
    float3 windDirection, float wetness, out float cloudTransmittance)
{
    const float BLOCK = CLOUD_BLOCK_SIZE;
    const float planetRadius = CLOUD_PLANET_RADIUS;
    const float cloudScale = lerp(CLOUD_CLEAR_SCALE, CLOUD_RAIN_SCALE, wetness);

    // ===== 1. 求视线与云层外壳的交点，确定步进区间 =====
    // 云层为行星外壳：底半径 = planetRadius + alt.x，顶半径 = planetRadius + alt.y
    float3 rayStartPos = float3(0.0, planetRadius + cameraPos.y, 0.0);
    float2 iBottom = RaySphereIntersection(rayStartPos, worldDir, planetRadius + cloudAltitude.x);
    float2 iTop = RaySphereIntersection(rayStartPos, worldDir, planetRadius + cloudAltitude.y);

    // 相机在云上 / 云下决定进入点
    float2 iMarching = cameraPos.y > cloudAltitude.y ? float2(iTop.x, iBottom.x) : float2(iBottom.y, iTop.y);
    float tStart = iMarching.x;
    float tEnd = iMarching.y;

    // 相机是否在云层内
    float inCloud = (1.0 - saturate((cameraPos.y - cloudAltitude.y) * CLOUD_INCLOUD_SOFTNESS)) *
                    (1.0 - saturate((cloudAltitude.x - cameraPos.y) * CLOUD_INCLOUD_SOFTNESS));
    // 相机在云内时：起点改为相机位置，终点 cap
    float iInner = (iBottom.y >= 0.0 && cameraPos.y > cloudAltitude.x) ? iBottom.x : iTop.y;
    iInner = min(iInner, CLOUD_INNER_CAP);
    tStart = tStart * (1.0 - inCloud);
    tEnd = lerp(tEnd, iInner, inCloud);

    // ===== 0. 地球求交：视线打到地面则云被遮挡，直接返回 =====
    // 用球面几何替代原来的 worldDir.y <= 0.01 平面近似判断（相机高度变化时更准）。
    // 行星 = 半径 planetRadius 的球体，球心即 rayStartPos 坐标系原点。
    //   1) 云层入口在出口之后（视线根本穿不过云壳，例如相机在云下向下看）→ 无云
    //   2) 视线近交点在地球表面，且早于云层入口 → 地面遮挡云层 → 无云
    float2 iEarth = RaySphereIntersection(rayStartPos, worldDir, planetRadius);
    if (tEnd < tStart)
    {
        cloudTransmittance = 1.0;
        return;
    }
    // iEarth.y > 0 表示视线确实穿过地球（近交点 iEarth.x 在相机前方）
    if (iEarth.y > 0.0 && iEarth.x < tStart)
    {
        cloudTransmittance = 1.0;
        return;
    }

    // 世界坐标步进区间（与原版一致：iMarching.x * worldDir * (1-inCloud) + cameraPosition）
    // 相机在云内时起点 = 相机位置；相机在云外时起点 = 相机 + 视线方向 * tStart
    float3 marchStart = tStart * worldDir + cameraPos;
    float3 marchEnd = tEnd * worldDir + cameraPos;

    // ===== 2. DDA 空区跳过：找到第一处占据的云块 =====
    // 从 marchStart 出发，逐块推进，检查占据；找到第一个 density>=0.5 的块即停
    float3 rayPos = marchStart;
    float3 cell = floor(rayPos / BLOCK);
    float3 stepSign = sign(worldDir);
    float3 dirAbs = max(abs(worldDir), 1e-6);

    float3 tMaxD;
    tMaxD.x = (stepSign.x == 0.0) ? 1e30 : ((cell.x + max(stepSign.x, 0.0)) * BLOCK - rayPos.x) / worldDir.x;
    tMaxD.y = (stepSign.y == 0.0) ? 1e30 : ((cell.y + max(stepSign.y, 0.0)) * BLOCK - rayPos.y) / worldDir.y;
    tMaxD.z = (stepSign.z == 0.0) ? 1e30 : ((cell.z + max(stepSign.z, 0.0)) * BLOCK - rayPos.z) / worldDir.z;
    float3 tDeltaD = BLOCK / dirAbs;

    float totalLen = length(marchEnd - marchStart);
    float t = 0.0;
    float cloudStartT = totalLen;   // 第一处云的位置（超界则无云）

    for (int s = 0; s < CLOUD_MAIN_MAX_STEPS; s++)
    {
        // 当前块是否占据
        float3 checkPos = (cell + 0.5) * BLOCK;
        float occ = SampleDensityDiscrete(checkPos, windDirection, wetness,
            cloudAltitude, planetRadius, cloudScale);
        if (occ >= 0.5)
        {
            cloudStartT = t;   // 进入该云块的起点
            break;
        }

        // 推进到最近边界
        if (tMaxD.x < tMaxD.y && tMaxD.x < tMaxD.z)
        {
            t = tMaxD.x; tMaxD.x += tDeltaD.x; cell.x += stepSign.x;
        }
        else if (tMaxD.y < tMaxD.z)
        {
            t = tMaxD.y; tMaxD.y += tDeltaD.y; cell.y += stepSign.y;
        }
        else
        {
            t = tMaxD.z; tMaxD.z += tDeltaD.z; cell.z += stepSign.z;
        }

        if (t >= totalLen) { cloudStartT = totalLen; break; }
    }

    // 没有云 -> 透射率 1，直接返回
    cloudTransmittance = 1.0;
    if (cloudStartT >= totalLen){
        //cloudTransmittance = 0.0; 
        return;
    }

    // ===== 3. 传统 raymarch：动态步长，遇空块即停 =====
    float transmittance = 1.0;
    float3 cloudAccum = float3(0.0, 0.0, 0.0);
    bool inCloudFlag = false;
    t = cloudStartT;

    for (int i = 0; i < CLOUD_MAIN_MAX_STEPS; i++)
    {
        if (t >= totalLen || transmittance < CLOUD_TRANSMIT_EPS) break;

        // 当前采样点（世界坐标）
        float3 samplePos = marchStart + worldDir * t;
        float occ = SampleDensityDiscrete(samplePos, windDirection, wetness,
            cloudAltitude, planetRadius, cloudScale);

        if (occ >= 0.5)
        {
            inCloudFlag = true;

            // 光照（含光步进 DDA）
            float4 cloudPos = SetCloudPos(samplePos, cloudAltitude, planetRadius, cloudScale);
            float3 light = CloudLightingDiscrete(samplePos, cloudPos, occ,
                worldDir, sunDir, sunColor, skyColor, windDirection, wetness,
                cloudAltitude, planetRadius, cloudScale);

            // 消光：块内闭式
            float absorption = exp2(-occ * CLOUD_MAIN_EXTINCTION * BLOCK);
            cloudAccum += light * transmittance * (1.0 - absorption);
            transmittance *= absorption;
        }
        else if (inCloudFlag)
        {
            break;   // 已出云：首次遇到空块即停（忽略云层叠加）
        }

        // 动态步长：透射率越低，步长越大
        float stepSize = lerp(CLOUD_MAX_STEP, CLOUD_MIN_STEP, saturate(transmittance));
        t += stepSize;
    }

    cloudTransmittance = transmittance;
    color += cloudAccum;
}

#endif // VOLUMETRIC_CLOUDS_INCLUDED
