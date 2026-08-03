#ifndef CLOUD_SETTINGS_INCLUDED
#define CLOUD_SETTINGS_INCLUDED

// ================================================================================
// CloudSettings.hlsl
// 离散体积云（Discrete Voxel Cloud）参数设置
// 与连续云的关键区别：密度场是 0/1 体素（阈值硬切）、无高频细节噪声、主步进用体素 DDA
// ================================================================================

// ---------------- 离散化 ---------------- 
// 体素边长（米）。原版 1m 太小（远处亚像素），推荐 16~64m
#define CLOUD_BLOCK_SIZE 				32.0
// 占据阈值：形状噪声超过它才判定该体素有云（0/1 硬切）
#define CLOUD_OCCUPANCY_THRESHOLD 		0.5

// ---------------- 云层几何 ---------------- 
// 云层为球形外壳，云底高度 + 厚度叠加其上（wetness 晴天->雨天插值）
#define CLOUD_CLEAR_ALTITUDE 			600.0
#define CLOUD_CLEAR_THICKNESS 			400.0
#define CLOUD_RAIN_ALTITUDE 			500.0
#define CLOUD_RAIN_THICKNESS 			800.0
// 行星半径（米）：altitude 是相对行星表面的高度
#define CLOUD_PLANET_RADIUS 			6360000.0

// ---------------- 噪声采样 ---------------- 
// 低频形状噪声缩放：worldPos(米) * 0.00005 -> 噪声坐标
#define CLOUD_BASE_NOISE_SCALE 			0.00005
// 噪声采样 mip（需开 mipmap）。LOD 越高越模糊，抹掉中高频"朵朵小云"。
// ★ 当前 Fix2 已注释掉（采样用 LOD 0），需要时把 VolumetricClouds.hlsl 的采样 LOD 改回此宏。
#define CLOUD_BASE_NOISE_LOD 			1.0
// 高频细节噪声缩放（离散版用不到，仅保留参考）
#define CLOUD_DETAILED_NOISE_SCALE 		0.007
// 覆盖率噪声缩放（几乎是一张 XZ 二维图，Y ≈ 0）
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
#define CLOUD_COVERAGE                  0.4

// ---------------- 云轮廓塑形（垂直剖面，SampleDensityDiscrete 用） ----------------
// 剖面 = condensation(凝结底) * taper(顶部收窄) * CLOUD_BASE_INTENSITY(底盘强度)
// 目的：底盘宽平、顶部窄，摆脱旧的"中间厚两端收"导致的圆滚滚/上宽下窄。
#define CLOUD_CONDENSE_SPEED 			8.0
#define CLOUD_PROFILE_SLOPE 			1.0
#define CLOUD_PROFILE_POWER 			0.8
#define CLOUD_BASE_INTENSITY 			1.2

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
// 双波瓣 HG 相位函数：前向瓣 g_f>0 提供向阳亮部，后向瓣 g_b<0 填补背阳暗部
#define CLOUD_HG_FORWARD_G 				0.8
#define CLOUD_HG_BACKWARD_G 			-0.2
#define CLOUD_HG_FORWARD_WEIGHT 		0.5
// HG 动态范围极大，pow(hg, POWER) 压低峰值、抬升暗部。POWER=1 回到原始 HG
#define CLOUD_HG_POWER 					0.5 	// [0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0]

// ---------------- 主步进（逐块 DDA） ----------------
// 主步进消光：absorption = exp2(-occupied * CLOUD_MAIN_EXTINCTION * segLen)
#define CLOUD_MAIN_EXTINCTION 			0.22 	// [0.005 0.01 0.015 0.02 0.03 0.05]
// 主步进最大迭代次数（防死循环）
#define CLOUD_MAIN_MAX_STEPS 			128
// 出云空块容差：进云后允许穿过 N 个连续空块再判出云，防边缘棱角缺口漏出天空色。
#define CLOUD_GAP_TOLERANCE 			6

// ---------------- 风 ---------------- 
#define CLOUD_WIND_FACTOR 				0.0005
#define CLOUD_SPEED 					1.01//测试阶段就是0
#define CLOUD_FTC_OFFSET 				0.0
// windDirection(米) = float3(1,0,-0.4) * wind(原始) * CLOUD_WIND_TO_METERS。
// ★ 调风速只改这一个数；windDirection.y 必须保持 0，否则网格上下滑会凭空长云/消失。
#define CLOUD_WIND_TO_METERS 			5e4

// ---------------- 大气透视（相机→云） ----------------
// 指数大气标高（米）：控制雾随距离堆积的速率
#define CLOUD_ATMO_SCALE_HEIGHT 		8000.0

// ---------------- 质量 / 远景 ---------------- 
#define CLOUD_QUALITY 					1.0
// 距离淡出：fade = exp2(-distance * CLOUD_FADE_RATE)
#define CLOUD_FADE_RATE 				4e-4
// 相机进入云层内部时主步进长度上限
#define CLOUD_INNER_CAP 				5000.0
// 相机在云内的高度平滑过渡系数
#define CLOUD_INCLOUD_SOFTNESS 			0.005

// ---------------- 云阴影（可选，地面阴影图） ---------------- 
#define CLOUD_SHADOW_RANGE 				4096.0
#define CLOUD_SHADOWTEX_SIZE 			256.0

#endif // CLOUD_SETTINGS_INCLUDED
