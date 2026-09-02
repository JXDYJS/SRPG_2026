# 开发任务书:辐照度缓存降噪 (Irradiance Cache Denoising)

## 1. 背景与现状

体素辐照度缓存(`IRCBake`)在 `BakeEveryFrame` 模式下每帧以 **SPP 条随机射线/texel** 采样,写入经 EMA 混合的 3D 缓存,供屏幕空间 GI / 表面光照查询。当前问题:

- **单样本蒙特卡洛噪声**:每 texel 每帧 1 条随机方向的射线,命中面/天空的离散跳变导致 `E` 逐帧抖动。EMA(`PerFrameBlend≈0.95`)把稳态方差压缩到 `α/(2-α)≈0.024` 倍,但**不会归零**,表现为几何 texel 持续微闪(已由 IRCEProbe 数据证实:direct/alb 稳定、prev 振荡)。
- **已做缓解**:SPP 提到 4,方差降 √4=2 倍;单位接入后单位柱 texel 标 solid 消暗圈。但**残留闪烁仍在**,靠缓存自身扛不住。
- **可选改进(本文档)**:引入 **temporal 滤波 + spatial 滤波 + 方差引导**,参考 iterationRP 的 Denoiser,把闪烁在读取/合成端抹掉。

> 参考实现(仅参考):`E:\pcl\PCL\.minecraft\versions\1.21.11-Fabric 0.18.2\shaderpacks\iterationRP Alpha 0.8.22\shaders\Lib\PathTracing\Denoiser\` 下 `DiffuseTemporalFilter.glsl`、`DiffuseSpatialFilter.glsl`、`DiffuseVarianceEstimation.glsl`,以及 IRC 更新端 `Lib\Programs\Composite\IRC_CS.glsl`。

## 2. 问题定性

| 现象 | 根因 | 现有处理 | 缺口 |
|---|---|---|---|
| 面邻 texel 亮度抖动(0.19↔0.23 量级) | 单样本 MC 噪声,命中面跳变 | SPP=4 降方差 √4 | 仍高于感知阈值 |
| 天空 texel 稳定 | 天空贴图连续,σ_ε 极小 | 无 | — |
| 单位移动拖影 | 缓存 EMA 收敛慢 | 已接受 | — |

数学:EMA 稳态方差 `σ_y² = α·σ_ε²/(2-α)`,`α = 1 - PerFrameBlend`。SPP=4 只改 `σ_ε`,**不消除** σ_y。要真正"不闪",必须靠**读取端滤波**(temporal reprojection + spatial)。

## 3. iterationRP 方案拆解

### 3.1 架构区别(关键)

iterationRP 是**"per-pixel trace → temporal reproject → spatial filter"** 的屏幕空间降噪管线,voxel IRC 只作远距离间接光粗缓存(SPP=1,自反弹衰减)。**闪烁主要由屏幕空间 denoiser 处理,不在 voxel 缓存上。** 我们相反:纯 voxel 缓存 + 无屏幕空间滤波,所有噪声都得缓存自己扛。

因此两个可选落地层次:

- **A. voxel 侧滤波**(改 bake/sample):在缓存读端做 3D 空间滤波 + 时间累积。改动局部,但不解决"缓存本身是噪声源"。
- **B. 屏幕空间 denoiser**(新增合成 pass):对最终 GI 输出做 reprojection + 滤波,与 iterationRP 同构。改动大,但效果最好,且能顺带吃掉单位拖影外的残噪。

### 3.2 各部件做法(从 iterationRP 提取)

**TemporalFilter(时间滤波,屏幕空间)**
1. **输入**:当前帧 per-pixel 结果 + 上一帧累积结果(其 `w` 通道存累积帧数 `accumFrames`)。
2. **重投影**:上一帧 view-proj 矩阵把当前像素投回上一帧屏幕坐标;带相机位移补偿(`cameraPositionToPrevious`)+ TAA jitter 补偿。
3. **4-tap 采样 + 边缘保护**:对重投影位置 4-tap bilinear 采样上一帧累积,每个 tap 用:
   - depth 梯度 `dot(posDiff, vertexNormal)` 超阈值剔除(防跨几何边缘累积);
   - 法线差异 `pow(dot(n_cur, n_prev), w)`(防跨不同朝向面累积)。
4. **累积帧数控制**:`accumFrames = prevData.w * maxTapWeight + 1`,封顶 `maxAccumFrames`;帧率自适应 `maxAccumFrames *= clamp(0.0167/frameTime, 1, 3)`(掉帧多累积)。
5. **混合**:`new = mix(prev, curr, 1/accumFrames)`——**平均累积**(权重随帧数衰减),不是固定 EMA,收敛更快且到上限后稳定。

**SpatialFilter(空间滤波,屏幕空间)**
1. 沿法线切平面的**方向性滤波**:`axis` 由 `SPATIAL_FILTER_ORDER`(0..7)选方向,多 pass 交替(蓝噪声时序抖动,防带状)。
2. 每 tap 权重 = 亮度差(`exp2(-|ΔLuminance|·varianceWeight)`)× 几何权重(`exp2(normalWeight·log2(dot(n, n)) + depthWeight·|gradient|)`)。
3. **方差引导**:`varianceWeight ∝ |axis|/currData.w`(`w`=方差估计),噪声大的区域滤得更狠。
4. 中心像素加权保留细节(`centerWeight = min(weights·xf + accum·0.2, accum)`)。

**VarianceEstimation(方差估计)**
- 3×3 邻域亮度一阶/二阶矩 → `variance = E[L²] - E[L]²`;加累积帧数项 `(E[L]² + exposure)/max(exp2(accumFrames)-1, eps)`。
- 输出 `(color, variance)`:variance 喂给 temporal 的 `maxTapWeight` 与 spatial 的 `varianceWeight`。

**IRC 更新端要点(IRC_CS.glsl)**
- 双缓冲 ping-pong + `frameCounter & 1` 隔帧交替读写;
- 相机位移补偿 `prevIrcTexel + cameraPositionIntToPrevious`;
- 帧率自适应混合权重 `1 - (1-blendweight)·saturate(frameTime/0.0167)`;
- 世界时间校验 `worldTimeVaildation`(光源/昼夜突变时重置累积,防旧光残留)。

## 4. 落地设计(我们的管线)

### 4.1 目标

在**读取/合成端**消除缓存残噪,不改 bake 的数学(SPP=4 保留),避免单位拖影外的可见闪烁,且与"每帧更新 + 动态太阳"兼容。

### 4.2 方案 A(voxel 侧,低成本,推荐先做)

在 `IrradianceCacheCommon.hlsl` 的 `SampleIRC` 上叠加:

1. **空间滤波(v2,已在 §7 规划)**:命中面切平面 3×3 邻域,权重 `exp2(-d²·IRC_BLUR_FACTOR)`,A=1(solid)邻居剔除,权重和归一。这是**纯空间**降噪,对稳定的缓存有效;对逐帧噪声仍会在时间上抖,但空间滤波本身能压低高频闪烁。
2. **时间累积(读端)**:SampleIRC 直接读上一帧缓存(现已是),结合 EMA 已隐含时间平滑。可选:把混合权重改为 `1/accumFrames` 渐进式(需缓存加一帧计数通道或 CPU 侧维护),让收敛更快、稳态更稳。

**改动点**:`IrradianceCacheCommon.hlsl` 采样函数 + 可能一个累积计数 buffer。风险低,不与 bake 交互。

### 4.3 方案 B(屏幕空间 denoiser,高成本,效果最佳)

新增 `ScriptableRenderPass`(在 GI 合成后):

1. **GBuffer 预滤波 pass**:计算每像素当前帧 GI 值 + 写累积帧数(`w`)到 RT。
2. **Temporal pass**:重投影上一帧(GI 缓存),depth/normal 边缘保护 4-tap,`1/accumFrames` 混合,输出 `(color, accumFrames)`。
3. **Spatial pass**:方向性滤波(蓝噪声时序),亮度/法线/深度权重,方差引导。
4. **Variance pass**:3×3 矩估计,喂给上两步。

**依赖**:
- 相机 view-proj 矩阵历史(GL.GetPrevious... 或自己存)、深度 RT、法线 GBuffer(可复用 VoxelRaytraceFeature 的 G-buffer)。
- 掉帧检测:用 `frameTime` 或 camera 位移做累积重置。
- 单位拖影:temporal 累积对"单位每帧移动"会加重拖影——需在 reprojection 时对单位做位移补偿(单位 AABB 内跳过历史累积),否则比现状更糊。

**改动量**:新增 2-3 个 compute/fullscreen pass + 多张 RT,是较大的独立任务。**不建议现在做**。

### 4.4 方案 C(voxel 缓存时间滤波,中间)

把 iterationRP 的 IRC 更新端思想搬进我们的 bake:
- 相机位移补偿(静态地图不需要,但单位需要,难做);
- 帧率自适应 blend(简单,值得做);
- worldTime 校验重置(动态光源时做)。

单位的存在使"相机位移补偿"无法直接套(单位位置是动态的,缓存 texel 不随世界对齐)。**此方案对单位拖影无解,价值有限**。

## 5. 推荐路径

| 优先级 | 内容 | 成本 | 收益 | 决策 |
|---|---|---|---|---|
| P0 | SPP=4(已完成) | 已做 | 方差 /2 | ✅ |
| P1 | 方案 A:v2 空间滤波(3×3 切平面) | 低(1 函数) | 压高频抖动,改善格界 | **建议做** |
| P1 | 方案 A+ :读端渐进累积 `1/accumFrames` | 低 | 收敛更快,稳态更稳 | 可选 |
| P2 | 方案 B:屏幕空间 temporal+spatial denoiser | 高(新管线) | 最优,但需解决单位拖影 | 暂缓 |
| P2 | 帧率自适应 blend(方案 C 片段) | 低 | 掉帧不放大闪烁 | 顺手做 |

**结论**:先做 **方案 A(空间滤波)**——它是 v2 采样早已规划的内容,改动小、直接改善可见闪烁;若仍不够,再评估方案 B。屏幕空间 denoiser(方案 B)留作后续独立任务,不混入本次。

## 6. 验收标准

| 阶段 | 内容 | 通过条件 |
|---|---|---|
| D1 | 方案 A 空间滤波落地 | 面邻 texel 抖动明显减弱,格界接缝不可见 |
| D2 | 回归:Solid 单位脚底暗圈不回退 | 单位脚下无异常暗圈 |
| D3 | 回归:静态地图收敛不闪 | 静态场景缓存稳定,无逐帧闪烁 |
| D4 | (若做 B)屏幕 denoiser | 全屏无可见闪烁,单位拖影不劣于现状 |

## 7. 边界

- 不实现屏幕空间 denoiser(方案 B)除非 P2 阶段明确推进。
- 不改 bake 的 MC 数学(SPP 保留 4)。
- 单位拖影接受现状,不在本次解决。
- 相机位移补偿(方案 C)不实现(单位动态,意义有限)。
