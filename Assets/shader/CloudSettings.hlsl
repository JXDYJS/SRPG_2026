#ifndef CLOUD_SETTINGS_INCLUDED
#define CLOUD_SETTINGS_INCLUDED

// ================================================================================
// CloudSettings.hlsl
// 离散体积云（Discrete Voxel Cloud）参数设置
//
// 数值移植自光影包 iterationRP Alpha 0.8.22：
//   shaders/Lib/Settings.glsl                       (CLOUD_* 系列宏)
//   shaders/Lib/IndividualFunctions/NUBIS.glsl      (内部魔法数)
//
// 注意：这是"离散体素云"，与光影包原版连续云的关键区别：
//   1) 密度场是 0/1 体素（低频形状噪声 floor 取整 + 阈值），不是连续密度
//   2) 不需要高频细节噪声（CloudDetailedNoise3D, 32^3, 缩放 0.007）
//   3) 主步进用体素 DDA（Amanatides & Woo），不是固定步数 raymarch
// ================================================================================

// ---------------- 离散化 ---------------- 
// 体素边长（米）。原版方块 1m 太小（远处亚像素），推荐 16~64m
#define CLOUD_BLOCK_SIZE 				32.0
// 占据阈值：形状噪声采样值超过它才判定该体素有云（0/1 硬切）
#define CLOUD_OCCUPANCY_THRESHOLD 		0.5

// ---------------- 云层几何 ---------------- 
// 云层为球形外壳，云底高度 CLOUD_CLEAR_ALTITUDE，厚度叠加其上
#define CLOUD_CLEAR_ALTITUDE 			500.0
#define CLOUD_CLEAR_THICKNESS 			450.0
#define CLOUD_RAIN_ALTITUDE 			500.0
#define CLOUD_RAIN_THICKNESS 			800.0
// 行星半径（米）：云层外壳套在 planetRadius 上，altitude 是相对行星表面的高度
#define CLOUD_PLANET_RADIUS 			6360000.0

// ---------------- 噪声采样 ---------------- 
// 低频形状噪声缩放：worldPos(米) * 0.0007 -> 噪声坐标。
// 注意：原版里 worldPos 先经 SetCloudPos 变成 cloudPos（含行星外壳 + 高度变形），
//       再乘这个缩放采样。离散化就在"噪声坐标"这一层 floor 取整。
#define CLOUD_BASE_NOISE_SCALE 			0.0007
// 高频细节噪声缩放（32^3 那张，离散版用不到，仅保留参考）
#define CLOUD_DETAILED_NOISE_SCALE 		0.007
// 覆盖率噪声缩放（几乎是一张 XZ 二维图，Y 分量 ≈ 0，与高度无关）
#define CLOUD_COVERAGE_NOISE_SCALE 		float3(8.5e-5, 1e-5, 8.5e-5)
#define CLOUD_COVERAGE_NOISE_OFFSET 	0.68

// ---------------- 云量 / 密度 / 光照强度（wetness 晴天->雨天插值） ---------------- 
#define CLOUD_CLEAR_COVERY 				0.28
#define CLOUD_RAIN_COVERY 				0.96
#define CLOUD_CLEAR_DENSITY 			1.0
#define CLOUD_RAIN_DENSITY 				1.0
#define CLOUD_CLEAR_SUNLIGHTING			1.0
#define CLOUD_CLEAR_SKYLIGHTING			1.0
#define CLOUD_RAIN_SUNLIGHTING			0.4
#define CLOUD_RAIN_SKYLIGHTING			0.8
#define CLOUD_CLEAR_SCALE 				1.0
#define CLOUD_RAIN_SCALE 				1.0
#define CLOUD_COVERAGE                  0.6

// ---------------- 光照 ---------------- 
#define CLOUD_BOTTOM_BRIGHTNESS 		0.15
#define CLOUD_OUTSCATTER_FACTOR 		1.3
// 主步进透射率早停阈值
#define CLOUD_TRANSMIT_EPS 				0.0001
// 单次散射反照率（散射能量 / 消光能量），云 ≈ 0.9
#define CLOUD_SCATTER_ALBEDO 			0.9
// 光步进（向太阳方向逐块 DDA）：最大步数 / 单块消光系数 / 强度
#define CLOUD_LIGHT_STEPS 				16 		// [4 8 12 16 24 32]
#define CLOUD_LIGHT_EXTINCTION 			0.15 	// [0.05 0.1 0.15 0.2 0.3 0.5]
#define CLOUD_LIGHT_SUN_MUL 			0.5
#define CLOUD_LIGHT_SKY_MUL 			0.35
// 双波瓣 HG 相位函数（Dual-Lobe HG）：前向瓣 g_f>0 提供向阳亮部，
// 后向瓣 g_b<0 填补背阳暗部（VdotL<0 不彻底黑），weight 为前向瓣占比
#define CLOUD_HG_FORWARD_G 				0.8
#define CLOUD_HG_BACKWARD_G 			-0.2
#define CLOUD_HG_FORWARD_WEIGHT 		0.5
// HG 相位动态范围极大（cos=1 峰值比 cos=0 大 200+ 倍），直接乘会让
// 向阳面窄窄一束亮、其余全暗。pow(hg, POWER) 把范围压到 ~8 倍：
// 抬升暗部、压低峰值、过渡平滑。POWER=1 关掉压缩（回到原始 HG）。
#define CLOUD_HG_POWER 					0.5 	// [0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]

// ---------------- 主步进（逐块 DDA） ----------------
// 主步进消光：absorption = exp2(-occupied * CLOUD_MAIN_EXTINCTION * segLen)
// segLen 为射线在本块内的实际穿行距离（相邻块边界之差），由 DDA 决定
#define CLOUD_MAIN_EXTINCTION 			0.22 	// [0.005 0.01 0.015 0.02 0.03 0.05]
// 主步进最大迭代次数（防死循环）
#define CLOUD_MAIN_MAX_STEPS 			128

// ---------------- 风 ---------------- 
// wind = 0.0005 * (frameTimeCounter * CLOUD_SPEED + 10.0 * FTC_OFFSET)
#define CLOUD_WIND_FACTOR 				0.0005
#define CLOUD_SPEED 					0.0//测试阶段就是0
#define CLOUD_FTC_OFFSET 				0.0
// windDirection = float3(1.0, wetness * 0.1 - 0.05, -0.4) * wind
// 形状噪声采样风偏移系数（* 10.0）；细节噪声风偏移 * 140.0（离散版只用形状）
#define CLOUD_BASE_NOISE_WIND 			10.0

// ---------------- 大气透视（相机→云） ----------------
// 指数大气标高（米）：控制雾随距离堆积的速率。越小雾越快堆积。
// 光学厚度 τ(d) = totalCoeff * H/μ * (1 - exp(-μ*d/H))，μ = 视线与竖直方向夹角余弦
#define CLOUD_ATMO_SCALE_HEIGHT 		8000.0

// ---------------- 质量 / 远景 ---------------- 
#define CLOUD_QUALITY 					1.0
// 距离淡出：fade = exp2(-distance * CLOUD_FADE_RATE)
#define CLOUD_FADE_RATE 				8e-5
// 相机进入云层内部时主步进长度上限
#define CLOUD_INNER_CAP 				5000.0
// 相机在云内的高度平滑过渡系数（0.005）
#define CLOUD_INCLOUD_SOFTNESS 			0.005

// ---------------- 云阴影（可选，地面阴影图） ---------------- 
#define CLOUD_SHADOW_RANGE 				4096.0
#define CLOUD_SHADOWTEX_SIZE 			256.0

#endif // CLOUD_SETTINGS_INCLUDED
