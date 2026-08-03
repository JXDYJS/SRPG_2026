#ifndef VOLUMETRIC_CLOUDS_INCLUDED
#define VOLUMETRIC_CLOUDS_INCLUDED

// ================================================================================
// VolumetricClouds.hlsl
// 离散体积云（Discrete Voxel Cloud）：体素 DDA 主步进 + 离散密度采样 + 离散光照。
//
// 核心约定（重要）：
//   - DDA 在世界坐标按 CLOUD_BLOCK_SIZE 走格，体素网格必须世界对齐；
//     SetCloudPos 的缩放/高度变形会破坏世界方格，故"取整"在世界坐标做，
//     SetCloudPos 只把块中心映射成噪声采样点（块中心固定 -> 整块恒值）。
//   - 风：SetCloudPos 内先 worldPos += windDirection 再取整，网格整体滑动，
//     云块图案只平移不变形；windDirection.y 必须为 0。
// ================================================================================

#include "CloudSettings.hlsl"

// ---------------- 纹理声明（shader 全局，函数里直接引用） ----------------
// TEXTURE3D + SAMPLER 在 HLSL 顶层声明即全局；在 .shader Properties 声明同名纹理即可绑定。
TEXTURE3D(_CloudNoise3D);
SAMPLER(sampler_CloudNoise3D);

// ---------------- 常量 ---------------- 
#ifndef PI
#define PI 3.14159265358979323846
#endif

// ---------------- 通用数学辅助函数 ----------------

// smoothstep 曲线：x 在 [0,1] 平滑过渡
float curve(float x)
{
    return x * x * (3.0 - 2.0 * x);
}

// 顶部圆润曲线，用于云层顶部塑形
float curveTop(float x)
{
    x = x - 1.0;
    return 1.0 - x * x;
}

// 快速平方根（整数位运算近似）
float fsqrt(float x)
{
    return asfloat(0x1fbd1df5 + (asint(x) >> 1));
}

// 重映射并 clamp 到 [0,1]
float remapSaturate(float x, float e0, float e1)
{
    return saturate((x - e0) / (e1 - e0));
}

// Henyey-Greenstein 相位函数
float HenyeyGreenstein(float cosAngle, float g)
{
    float num = 1.0 - g * g;
    float denom = 1.0 + g * g - 2.0 * g * cosAngle;
    float invSqrt = rsqrt(denom);
    return num * invSqrt * invSqrt * invSqrt * (0.25 / PI);
}

// 双波瓣 HG：前向瓣(g_f>0)向阳亮部 + 后向瓣(g_b<0)背阳暗部，pow 压缩动态范围
float HenyeyGreensteinDual(float cosAngle)
{
    float fwd = HenyeyGreenstein(cosAngle, CLOUD_HG_FORWARD_G);
    float bwd = HenyeyGreenstein(cosAngle, CLOUD_HG_BACKWARD_G);
    float dual = lerp(bwd, fwd, CLOUD_HG_FORWARD_WEIGHT);
    return pow(max(dual, 1e-4), CLOUD_HG_POWER);
}

// 射线-球体交点，返回 (近交点, 远交点)；未命中 (1e10, -1e10)
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

// ---------------- 坐标变换 ----------------
// worldPos -> cloudPos：y=行星表面高度，w=高度归一化[0,1]，xyz=缩放 + 高度变形。
// 取整内置于本函数：先在世界坐标 floor 到块中心再走行星外壳变换，
// 使同一方块内任意点映射到同一 cloudPos（整块恒值，网格世界对齐）。
// 风：先平移 worldPos 再取整，网格整体滑动不变形；windDirection.y 必须为 0。
float4 SetCloudPos(float3 worldPos, float2 cloudAltitude, float planetRadius, float cloudScale, float3 windDirection)
{
    // 风：世界坐标平移后再取整，网格整体滑动
    worldPos += windDirection;

    // 世界坐标取整到块中心
    float3 blockCenter = floor(worldPos / CLOUD_BLOCK_SIZE) * CLOUD_BLOCK_SIZE + 0.5 * CLOUD_BLOCK_SIZE;

    float4 cloudPos = float4(blockCenter, 0.0);
    cloudPos.y = length(cloudPos.xyz + float3(0.0, planetRadius, 0.0)) - planetRadius;
    cloudPos.w = remapSaturate(cloudPos.y, cloudAltitude.x, cloudAltitude.y);
    cloudPos.xyz = cloudPos.xyz * cloudScale + float3(30.0 * cloudPos.w, 0.0, -12.0 * cloudPos.w);
    return cloudPos;
}

// ---------------- 离散密度采样 ----------------
// 输入世界坐标（块内任意点），输出该体素密度（0/1）。
// 流程：SetCloudPos(取整) -> 采样低频形状噪声并混合 -> 垂直密度剖面(凝结底*顶部收窄)
//       -> 覆盖率调制 -> 阈值硬切为 0/1。
float SampleDensityDiscrete(float3 worldPos, float3 windDirection, float wetness,
    float2 cloudAltitude, float planetRadius, float cloudScale)
{
    // 取整已内置于 SetCloudPos，风已平移进 worldPos，这里直接用块中心采样
    float4 cloudPos = SetCloudPos(worldPos, cloudAltitude, planetRadius, cloudScale, windDirection);
    float3 noiseCoord = cloudPos.xyz * CLOUD_BASE_NOISE_SCALE;

    // 采样 + 混合（Fix2 mip 模糊暂时注释掉，需要时用 CLOUD_BASE_NOISE_LOD）
    float4 baseNoise = SAMPLE_TEXTURE3D_LOD(_CloudNoise3D, sampler_CloudNoise3D, noiseCoord, 0);
    float density = baseNoise.y * 0.4 + baseNoise.z * 0.4 + baseNoise.w * 0.2;
    density = remapSaturate(baseNoise.x, density - 1.0, 1.0);

    // 垂直密度剖面：凝结底快速升起 + 密度单调收窄到顶，轮廓为底盘宽、顶部窄
    float wL = cloudPos.w;
    float condensation = curve(saturate(wL * CLOUD_CONDENSE_SPEED));
    float taper = pow(saturate(1.0 - wL * CLOUD_PROFILE_SLOPE), CLOUD_PROFILE_POWER);
    density *= condensation * taper * CLOUD_BASE_INTENSITY;
    density *= lerp(1.0, curveTop(saturate(wL * 3.0)), wetness);
    density = saturate(density);
    float coverageNoise  = SAMPLE_TEXTURE3D_LOD(_CloudNoise3D, sampler_CloudNoise3D, cloudPos.xyz * CLOUD_COVERAGE_NOISE_SCALE + CLOUD_COVERAGE_NOISE_OFFSET, 0).x;
    float coverage = 1.0  - remapSaturate(1.0 - coverageNoise,CLOUD_COVERAGE * 0.2,CLOUD_COVERAGE);
    density *= coverage;
    return step(CLOUD_OCCUPANCY_THRESHOLD,density);
}

// ---------------- 离散光照（光步进 DDA） ----------------
// 从命中块沿太阳方向逐块推进，累计被占据块数（光学厚度），空块即停；
// 消光 exp2(-Στ) 得到方块阴影，再叠加 HG 相位。
float3 CloudLightingDiscrete(float3 worldPos, float4 cloudPos, float occupied,
    float3 viewDir, float3 sunDir, float3 sunColor, float3 skyColor,
    float3 windDirection, float wetness,
    float2 cloudAltitude, float planetRadius, float cloudScale)
{
    if (occupied < 0.5) return float3(0.0, 0.0, 0.0);

    const float BLOCK = CLOUD_BLOCK_SIZE;

    // ===== 光步进 DDA：从当前块向太阳方向逐块推进 =====
    float3 rayPos = floor(worldPos / BLOCK) * BLOCK;
    float3 cell = floor(rayPos / BLOCK);
    float3 stepSign = sign(sunDir);
    float3 dirAbs = max(abs(sunDir), 1e-6);   // 防除零

    // 到下一块边界的 t 值（分量 0 时给极大值，不参与比较）
    float3 tMax;
    tMax.x = (stepSign.x == 0.0) ? 1e30 : ((cell.x + max(stepSign.x, 0.0)) * BLOCK - rayPos.x) / sunDir.x;
    tMax.y = (stepSign.y == 0.0) ? 1e30 : ((cell.y + max(stepSign.y, 0.0)) * BLOCK - rayPos.y) / sunDir.y;
    tMax.z = (stepSign.z == 0.0) ? 1e30 : ((cell.z + max(stepSign.z, 0.0)) * BLOCK - rayPos.z) / sunDir.z;
    float3 tDelta = BLOCK / dirAbs;   // 穿过一块所需距离

    float sumOcc = 0.0;        // 光学厚度（被占据块数）
    float rayT = 0.0;
    float prevT = 0.0;
    int emptyRun = 0;          // 连续空块计数（边缘缺口放行）

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

        // 空块：连续达容差才判出云（防边缘缺口漏色）
        if (occ < 0.5)
        {
            if (++emptyRun >= CLOUD_GAP_TOLERANCE) break;
            continue;
        }
        emptyRun = 0;
        sumOcc += occ;          // 占据块计入光学厚度
    }

    // ===== 光照 =====
    float VdotL = dot(viewDir, sunDir);
    float hg = HenyeyGreensteinDual(VdotL);

    // 太阳到达该点能量 = 直接透射 exp2(-Στ)，再乘反照率 * 双波瓣 HG 相位
    float sunTrans = exp2(-sumOcc * CLOUD_LIGHT_EXTINCTION);
    float3 sunArrive = sunColor * sunTrans;
    float3 directLight = sunArrive * (CLOUD_SCATTER_ALBEDO * (hg + 0.02) * CLOUD_LIGHT_SUN_MUL);

    // 环境光已移除：暗部填充交给 CompositeClouds 的大气透视，避免三路能量叠加过亮
    return directLight;
}

// ---------------- 体素 DDA 主步进 ----------------
// 逐块 DDA 单循环：每块只在块中心采样一次（网格完美对齐，消除混叠颗粒）；
// inCloudFlag 区分"空区跳过/云内累积"，消光按每块实际穿行距离 segLen 计算。
// 输出：cloudColor 累加进 color(inout)、cloudTransmittance、cloudDistance(相机到第一块云)。
void NubisCumulusDiscrete(inout float3 color, float3 worldDir, float3 cameraPos,
    float2 cloudAltitude, float3 sunDir, float3 sunColor, float3 skyColor,
    float3 windDirection, float wetness, out float cloudTransmittance,
    out float cloudDistance)
{
    const float BLOCK = CLOUD_BLOCK_SIZE;
    const float planetRadius = CLOUD_PLANET_RADIUS;
    const float cloudScale = lerp(CLOUD_CLEAR_SCALE, CLOUD_RAIN_SCALE, wetness);

    // 无云时给个大值：调用方按 (1-trans)=0 自然忽略，此处只是兜底
    cloudDistance = 1e6;

    // ===== 1. 求视线与云层外壳(底/顶球面)交点，确定步进区间 =====
    float3 rayStartPos = float3(0.0, planetRadius + cameraPos.y, 0.0);
    float2 iBottom = RaySphereIntersection(rayStartPos, worldDir, planetRadius + cloudAltitude.x);
    float2 iTop = RaySphereIntersection(rayStartPos, worldDir, planetRadius + cloudAltitude.y);

    // 相机在云上/云下决定进入点
    float2 iMarching = cameraPos.y > cloudAltitude.y ? float2(iTop.x, iBottom.x) : float2(iBottom.y, iTop.y);
    float tStart = iMarching.x;
    float tEnd = iMarching.y;

    // 相机是否在云层内（云内时起点改为相机位置、终点 cap）
    float inCloud = (1.0 - saturate((cameraPos.y - cloudAltitude.y) * CLOUD_INCLOUD_SOFTNESS)) *
                    (1.0 - saturate((cloudAltitude.x - cameraPos.y) * CLOUD_INCLOUD_SOFTNESS));
    float iInner = (iBottom.y >= 0.0 && cameraPos.y > cloudAltitude.x) ? iBottom.x : iTop.y;
    iInner = min(iInner, CLOUD_INNER_CAP);
    tStart = tStart * (1.0 - inCloud);
    tEnd = lerp(tEnd, iInner, inCloud);

    // ===== 0. 地球求交：视线打到地面则云被遮挡，直接返回 =====
    // 用球面几何替代 worldDir.y 平面近似（相机高度变化时更准）：
    //   1) 云层入口在出口之后 → 无云
    //   2) 视线近交点在地球表面且早于云层入口 → 地面遮挡云层 → 无云
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

    // 步进区间：云外起点 = 相机 + 视线*tStart，云内起点 = 相机位置
    float3 marchStart = tStart * worldDir + cameraPos;
    float3 marchEnd = tEnd * worldDir + cameraPos;

    // ===== 2+3. 逐块 DDA 主步进（空区跳过 + 云内累积合一的单循环） =====
    // inCloudFlag：是否已进入云（false=跳过阶段，true=累积阶段）
    // segLen = 相邻块边界之差，即本块内实际穿行长度（消光用）
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
    float transmittance = 1.0;
    float3 cloudAccum = float3(0.0, 0.0, 0.0);
    bool inCloudFlag = false;
    int emptyRun = 0;          // 连续空块计数（边缘缺口放行）
    float prevT = 0.0;

    for (int s = 0; s < CLOUD_MAIN_MAX_STEPS; s++)
    {
        // 当前块中心（距边界 0.5*BLOCK）
        float3 checkPos = (float3)cell * BLOCK + 0.5 * BLOCK;
        float occ = SampleDensityDiscrete(checkPos, windDirection, wetness,
            cloudAltitude, planetRadius, cloudScale);

        // 进云：记录第一块云距离（供大气透视）
        if (!inCloudFlag && occ >= 0.5)
        {
            inCloudFlag = true;
            cloudDistance = length(checkPos - cameraPos);
        }

        // 进云后允许穿过 N 个连续空块再判出云，防边缘缺口漏出天空色
        if (inCloudFlag && occ < 0.5)
        {
            if (++emptyRun >= CLOUD_GAP_TOLERANCE) break;
        }
        else
        {
            emptyRun = 0;
        }

        // 推进到最近边界（严格前进，防浮点误差导致死循环）
        float newT = min(tMaxD.x, min(tMaxD.y, tMaxD.z));
        newT = max(newT, prevT + 1e-3);
        float segLen = newT - prevT;   // 本块内实际穿行距离
        prevT = newT;

        // 云内占据块：累积光照，消光按实际 segLen
        if (inCloudFlag && occ >= 0.5)
        {
            float4 cloudPos = SetCloudPos(checkPos, cloudAltitude, planetRadius, cloudScale, windDirection);
            float3 light = CloudLightingDiscrete(checkPos, cloudPos, occ,
                worldDir, sunDir, sunColor, skyColor, windDirection, wetness,
                cloudAltitude, planetRadius, cloudScale);

            float absorption = exp2(-occ * CLOUD_MAIN_EXTINCTION * segLen);
            cloudAccum += light * transmittance * (1.0 - absorption);
            transmittance *= absorption;
        }

        // 推进 cell
        if (tMaxD.x < tMaxD.y && tMaxD.x < tMaxD.z)
        {
            tMaxD.x += tDeltaD.x; cell.x += stepSign.x;
        }
        else if (tMaxD.y < tMaxD.z)
        {
            tMaxD.y += tDeltaD.y; cell.y += stepSign.y;
        }
        else
        {
            tMaxD.z += tDeltaD.z; cell.z += stepSign.z;
        }

        if (prevT >= totalLen || transmittance < CLOUD_TRANSMIT_EPS) break;
    }

    // 无云时 transmittance 保持 1
    cloudTransmittance = transmittance;
    color += cloudAccum;
}

#endif // VOLUMETRIC_CLOUDS_INCLUDED
