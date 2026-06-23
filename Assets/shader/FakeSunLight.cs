using UnityEngine;

[ExecuteAlways]
[RequireComponent(typeof(Light))]
public class FakeSunLight : MonoBehaviour
{
    [Header("Day-Night Cycle (时间控制)")]
    [Tooltip("0=日出, 0.25=正午, 0.5=日落, 0.75=午夜")]
    [Range(0f, 1f)]
    public float sunAngle = 0.25f; 
    
    [Tooltip("太阳的偏航角(模拟季节/纬度，防止太阳永远只在头顶正上方)")]
    public float sunDeclination = 30f;

    [Header("Skybox Reference (关联材质)")]
    public Material skyboxMaterial;

    [Header("Dynamic Sky Map Baking (动态天空贴图)")]
    public RenderTexture dynamicSkyMap;

    private Light dirLight;
    private Material bakeMaterial; // 专门用于烘焙的虚拟材质

    // 缓存 Shader 属性 ID
    private static readonly int RayleighRedId = Shader.PropertyToID("_RayleighRed");
    private static readonly int RayleighGreenId = Shader.PropertyToID("_RayleighGreen");
    private static readonly int RayleighBlueId = Shader.PropertyToID("_RayleighBlue");
    private static readonly int SunIntensityId = Shader.PropertyToID("_SunIntensity");
    private static readonly int SunColorId = Shader.PropertyToID("_SunColor");
    
    // Tonemap / LMS 属性 ID
    private static readonly int UseCustomTonemapId = Shader.PropertyToID("_UseCustomTonemap");
    private static readonly int ExposureId = Shader.PropertyToID("_Exposure");
    private static readonly int UseLMSId = Shader.PropertyToID("_UseLMS");
    private static readonly int LMSRow1Id = Shader.PropertyToID("_LMS_Row1");
    private static readonly int LMSRow2Id = Shader.PropertyToID("_LMS_Row2");
    private static readonly int LMSRow3Id = Shader.PropertyToID("_LMS_Row3");

    // 全局动态天空图 ID
    private static readonly int SkyMapId = Shader.PropertyToID("_DynamicSkyMap");

    void Start()
    {
        dirLight = GetComponent<Light>();
        if (skyboxMaterial == null) skyboxMaterial = RenderSettings.skybox;

        // 初始化烘焙专用的虚拟材质
        if (skyboxMaterial != null)
        {
            bakeMaterial = new Material(skyboxMaterial);
            bakeMaterial.hideFlags = HideFlags.HideAndDontSave; // 不在 Hierarchy 中显示，不存盘
            bakeMaterial.EnableKeyword("BAKE_MODE"); // 开启全景图映射模式
        }
    }

    void Update()
    {
        if (skyboxMaterial == null || dirLight == null) return;

        // ==========================================
        // 1. 根据控制参数旋转平行光
        // ==========================================
        float pitch = sunAngle * 360f; 
        transform.rotation = Quaternion.Euler(pitch, sunDeclination, 0f);

        Vector3 sunDir = -transform.forward;
        float mu_s = sunDir.y;

        // 【修改点】不能直接 return，否则晚上的天空就不会更新烘焙了
        if (mu_s <= 0.0f) 
        {
            dirLight.intensity = 0;
        }
        else
        {
            // ==========================================
            // 2. 读取物理/魔改系数并计算基础透射光
            // ==========================================
            float rR = skyboxMaterial.GetFloat(RayleighRedId);
            float rG = skyboxMaterial.GetFloat(RayleighGreenId);
            float rB = skyboxMaterial.GetFloat(RayleighBlueId);
            float sunIntensity = skyboxMaterial.GetFloat(SunIntensityId);
            Color sunColorParam = skyboxMaterial.GetColor(SunColorId);

            Vector3 rayleighCoeff = new Vector3(rR, rG, rB) * 0.00001f;
            Vector3 mieCoeff = new Vector3(0.5e-6f, 0.5e-6f, 0.5e-6f);
            Vector3 totalCoeff = rayleighCoeff + mieCoeff;

            float opticalDepth = CalcParticleThickness(mu_s);
            Vector3 transmittance = Absorb(totalCoeff, opticalDepth);

            Vector3 finalLightColor = new Vector3(
                transmittance.x * sunIntensity * sunColorParam.r,
                transmittance.y * sunIntensity * sunColorParam.g,
                transmittance.z * sunIntensity * sunColorParam.b
            );

            // ==========================================
            // 3. 应用 LMS 风格化矩阵
            // ==========================================
            float useLMS = skyboxMaterial.GetFloat(UseLMSId);
            if (useLMS > 0.5f)
            {
                Vector4 r1 = skyboxMaterial.GetVector(LMSRow1Id);
                Vector4 r2 = skyboxMaterial.GetVector(LMSRow2Id);
                Vector4 r3 = skyboxMaterial.GetVector(LMSRow3Id);

                float x = r1.x * finalLightColor.x + r1.y * finalLightColor.y + r1.z * finalLightColor.z;
                float y = r2.x * finalLightColor.x + r2.y * finalLightColor.y + r2.z * finalLightColor.z;
                float z = r3.x * finalLightColor.x + r3.y * finalLightColor.y + r3.z * finalLightColor.z;

                finalLightColor = new Vector3(x, y, z);
            }

            // ==========================================
            // 4. 防 GI 报错：掐死负数
            // ==========================================
            finalLightColor.x = Mathf.Max(finalLightColor.x, 0f);
            finalLightColor.y = Mathf.Max(finalLightColor.y, 0f);
            finalLightColor.z = Mathf.Max(finalLightColor.z, 0f);

            // ==========================================
            // 5. 应用到 Unity 平行光
            // ==========================================
            float maxLuminance = Mathf.Max(finalLightColor.x, Mathf.Max(finalLightColor.y, finalLightColor.z));
            
            if (maxLuminance > 0.0001f)
            {
                dirLight.color = new Color(
                    finalLightColor.x / maxLuminance, 
                    finalLightColor.y / maxLuminance, 
                    finalLightColor.z / maxLuminance
                );
                dirLight.intensity = maxLuminance; 
            }
            else
            {
                dirLight.intensity = 0;
            }
        } // 阳光逻辑结束

        // ==========================================
        // 6. 动态烘焙天空图 (供场景内模型照明使用)
        // ==========================================
        if (dynamicSkyMap == null)
        {
            // 创建一张 256x128，支持 HDR (ARGBHalf) 的贴图
            dynamicSkyMap = new RenderTexture(256, 128, 0, RenderTextureFormat.ARGBHalf, RenderTextureReadWrite.Linear) { useMipMap = true, autoGenerateMips = true };
            dynamicSkyMap.name = "DynamicSkyMap_256x128";
            dynamicSkyMap.wrapMode = TextureWrapMode.Repeat;
        }

        if (bakeMaterial != null)
        {
            // 同步材质参数
            bakeMaterial.CopyPropertiesFromMaterial(skyboxMaterial);
            // CopyProperties 会覆盖 Keyword，所以需要重新启用
            bakeMaterial.EnableKeyword("BAKE_MODE");

            // Unity 在 Keyword 切换后可能重置 float 属性（variant 重新初始化），
            // 必须显式回写 tonemap / LMS 等关键属性
            bakeMaterial.SetFloat(UseCustomTonemapId, skyboxMaterial.GetFloat(UseCustomTonemapId));
            bakeMaterial.SetFloat(ExposureId, skyboxMaterial.GetFloat(ExposureId));
            bakeMaterial.SetFloat(UseLMSId, skyboxMaterial.GetFloat(UseLMSId));

            // 调用克隆的材质，将天空绘制到 RenderTexture 上
            Graphics.Blit(null, dynamicSkyMap, bakeMaterial, 0);

            // 全局推送！所有接收 _DynamicSkyMap 的 Shader 都能拿到这张图了
            Shader.SetGlobalTexture(SkyMapId, dynamicSkyMap);
        }
    }

    // ==========================================
    // 释放内存
    // ==========================================
    void OnDestroy()
    {
        if (bakeMaterial != null) DestroyImmediate(bakeMaterial);
        if (dynamicSkyMap != null) dynamicSkyMap.Release();
    }

    private float CalcParticleThickness(float depth)
    {
        depth = depth * 2.0f;
        depth = Mathf.Max(depth + 0.01f, 0.01f);
        depth = 1.0f / depth;
        return 100000.0f * depth;
    }

    private Vector3 Absorb(Vector3 coeff, float depth)
    {
        float r = Mathf.Pow(2f, -coeff.x * depth);
        float g = Mathf.Pow(2f, -coeff.y * depth);
        float b = Mathf.Pow(2f, -coeff.z * depth);
        return new Vector3(r, g, b);
    }
}