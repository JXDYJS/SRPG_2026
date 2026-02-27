#ifndef PHOTON_WATER_INCLUDED
#define PHOTON_WATER_INCLUDED
//
//https://github.com/sixthsurge/photon/blob/main/shaders/include/surface/water_normal.glsl
//
// 常量定义
#define TAU 6.28318530718
#define GOLDEN_ANGLE 2.39996323

// 单个 Gerstner 波形计算
float gerstner_wave(float2 coord, float2 wave_dir, float t, float noise, float wavelength) {
    const float g = 9.8; // 重力常数
    float k = TAU / max(wavelength, 0.001); // 避免除以0
    float w = sqrt(g * k);
    float x = w * t - k * (dot(wave_dir, coord) + noise);
    
    // Photon 的修改版：sin 映射到 0~1 然后平方，波峰更尖锐
    float s = sin(x) * 0.5 + 0.5;
    return s * s;
}

// 获取某一坐标的水面高度 (核心逻辑)
// 注意：在 Shader Graph 的 Custom Function 中，纹理传入类型为 Texture2D 和 SamplerState
float get_water_height(
    float2 coord, 
    float t, 
    UnityTexture2D noiseTex, 
    UnitySamplerState noiseSampler, 
    float waveSpeed,
    float waveFrequency,
    float NoiseFrequency,
    float noiseStrength,
    int iterations
) {
    // 初始参数
    float persistence = 0.5; // 每次迭代振幅衰减
    float lacunarity = 1.7;  // 每次迭代频率增加
    
    // 设置初始波浪方向 (使用黄金角旋转可以打破重复感)
    float2 wave_dir = float2(cos(30.0 * 3.14159/180.0), sin(30.0 * 3.14159/180.0));
    float2x2 wave_rot = float2x2(
        cos(GOLDEN_ANGLE), -sin(GOLDEN_ANGLE),
        sin(GOLDEN_ANGLE),  cos(GOLDEN_ANGLE)
    );

    // 归一化因子，保证多层叠加后总高度不会爆炸
    float amplitude_normalization_factor = (1.0 - persistence) / (1.0 - pow(persistence, float(iterations)));

    float height = 0.0;
    float amplitude = 1.0;
    float frequency = waveFrequency;
    float wave_length = 1.0;
    
    // 基础噪声采样坐标
    float2 noise_coord = (coord + float2(0.0, 0.25 * t)) * NoiseFrequency;

    // 核心循环：叠加多个不同频率和方向的波浪
    [loop]
    for (int i = 0; i < iterations; ++i) {
        // 采样噪声图扰动波浪
        float current_noise = noiseTex.tex.SampleLevel(noiseSampler.samplerstate, noise_coord, 0).g;
        noise_coord *= 2.5; // 下一次迭代噪声更细密

        height += gerstner_wave(
            coord * frequency, 
            wave_dir, 
            t * waveSpeed, 
            current_noise * noiseStrength, 
            wave_length
        ) * amplitude;

        // 参数步进
        amplitude *= persistence;
        frequency *= lacunarity;
        wave_length *= 1.5;
        wave_dir = mul(wave_rot, wave_dir); // 旋转波浪方向
    }

    return height * amplitude_normalization_factor;
}

// 主入口函数：供 Shader Graph 调用
// 必须以 _float 或 _half 结尾，参数标明 out
void GetPhotonWaterNormal_float(
    float2 UV, 
    float3 WorldPos, 
    float3 CameraPos,
    float Time, 
    UnityTexture2D NoiseTex, 
    UnitySamplerState NoiseSampler,
    float WaveSpeed,
    float WaveFrequency,
    float NoiseFrequency,
    float NoiseStrength,
    float NormalInfluence,
    float Iterations,
    out float3 OutTangentNormal,
    out float OutHeight
) {
    const float h = 0.1;
    
    // 2. 采样 3 个点的高度，用于求偏导数
    int it = (int)Iterations;
    float wave0 = get_water_height(UV, Time, NoiseTex, NoiseSampler, WaveSpeed, WaveFrequency, NoiseFrequency, NoiseStrength, it);
    float wave1 = get_water_height(UV + float2(h, 0.0), Time, NoiseTex, NoiseSampler, WaveSpeed, WaveFrequency, NoiseFrequency, NoiseStrength, it);
    float wave2 = get_water_height(UV + float2(0.0, h), Time, NoiseTex, NoiseSampler, WaveSpeed, WaveFrequency, NoiseFrequency, NoiseStrength, it);

    OutHeight = wave0; 

    float3 viewDir = normalize(CameraPos - WorldPos);
    float viewAttenuation = smoothstep(0.0, 0.15, abs(viewDir.y)); // 假设水平面法线朝上(Y)
    
    float finalInfluence = NormalInfluence * viewAttenuation;
    float3 normal = float3(wave0 - wave1, wave0 - wave2, h);
    normal.xy *= finalInfluence; 
    normal.y = -normal.y;
    OutTangentNormal = normalize(normal);
}

#endif // PHOTON_WATER_INCLUDED
