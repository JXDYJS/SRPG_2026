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

    [Header("Grazing Angle Prevention (防掠射角)")]
    [Tooltip("太阳最低离地平线角度(度)，低于此值将被钳制，防止掠射角阴影混叠")]
    [Range(0f, 15f)]
    public float minSunElevation = 5f;

    [Header("Skybox Reference (关联材质)")]
    public Material skyboxMaterial;

    [Header("Dynamic Sky Map Baking (动态天空贴图)")]
    public RenderTexture dynamicSkyMap;

    private Light dirLight;
    private Material bakeMaterial;

    private static readonly int RayleighRedId = Shader.PropertyToID("_RayleighRed");
    private static readonly int RayleighGreenId = Shader.PropertyToID("_RayleighGreen");
    private static readonly int RayleighBlueId = Shader.PropertyToID("_RayleighBlue");
    private static readonly int SunIntensityId = Shader.PropertyToID("_SunIntensity");
    private static readonly int SunColorId = Shader.PropertyToID("_SunColor");

    private static readonly int UseCustomTonemapId = Shader.PropertyToID("_UseCustomTonemap");
    private static readonly int ExposureId = Shader.PropertyToID("_Exposure");
    private static readonly int UseLMSId = Shader.PropertyToID("_UseLMS");
    private static readonly int LMSRow1Id = Shader.PropertyToID("_LMS_Row1");
    private static readonly int LMSRow2Id = Shader.PropertyToID("_LMS_Row2");
    private static readonly int LMSRow3Id = Shader.PropertyToID("_LMS_Row3");

    private static readonly int SkyMapId = Shader.PropertyToID("_DynamicSkyMap");

    private static readonly int IrcSkyAmbientId = Shader.PropertyToID("_IrcSkyAmbient");
    private static readonly int IrcShadowBoostId = Shader.PropertyToID("_IrcShadowBoost");
    private static readonly int IrcFloorLumId = Shader.PropertyToID("_IrcFloorLum");

    void Start()
    {
        dirLight = GetComponent<Light>();
        if (skyboxMaterial == null) skyboxMaterial = RenderSettings.skybox;

        if (skyboxMaterial != null)
        {
            bakeMaterial = new Material(skyboxMaterial);
            bakeMaterial.hideFlags = HideFlags.HideAndDontSave;
            bakeMaterial.EnableKeyword("BAKE_MODE");
        }

        // Publish tuning defaults so the shader has sane values before the
        // first per-frame update (and when the sun is below the horizon).
        Shader.SetGlobalFloat(IrcShadowBoostId, 1.0f);
        Shader.SetGlobalFloat(IrcFloorLumId, 0.02f);
    }

    void Update()
    {
        if (skyboxMaterial == null || dirLight == null) return;

        float pitch = sunAngle * 360f;
        if (pitch < minSunElevation)
            pitch = minSunElevation;
        else if (pitch > 180f - minSunElevation && pitch <= 180f)
            pitch = 180f - minSunElevation;
        transform.rotation = Quaternion.Euler(pitch, sunDeclination, 0f);

        Vector3 sunDir = -transform.forward;
        float mu_s = sunDir.y;

        if (mu_s <= 0.0f)
        {
            dirLight.intensity = 0;
            // No sun: no skylight floor either (same scatter model has no
            // sun term below the horizon); keep shader default black.
            Shader.SetGlobalVector(IrcSkyAmbientId, Vector3.zero);
        }
        else
        {
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

            finalLightColor.x = Mathf.Max(finalLightColor.x, 0f);
            finalLightColor.y = Mathf.Max(finalLightColor.y, 0f);
            finalLightColor.z = Mathf.Max(finalLightColor.z, 0f);

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

            // Ambient floor: single sky-sample direction perpendicular to the
            // sun's orbital plane (horizontal, avoids the sun disk), computed
            // with the same atmosphere model as the GPU skybox. Used as a
            // cloud-free sky tint floor for shadowed surfaces in the PBR GI.
            Vector3 sampleDir = Vector3.Cross(Vector3.up, sunDir).normalized;
            Shader.SetGlobalVector(IrcSkyAmbientId, CalcAtmosphericScatter(sunDir, sampleDir));
        }

        if (dynamicSkyMap == null)
        {
            dynamicSkyMap = new RenderTexture(256, 128, 0, RenderTextureFormat.ARGBHalf, RenderTextureReadWrite.Linear) { useMipMap = true, autoGenerateMips = true };
            dynamicSkyMap.name = "DynamicSkyMap_256x128";
            dynamicSkyMap.wrapMode = TextureWrapMode.Repeat;
        }

        if (bakeMaterial != null)
        {
            bakeMaterial.CopyPropertiesFromMaterial(skyboxMaterial);
            // CopyProperties resets keywords; re-enable.
            bakeMaterial.EnableKeyword("BAKE_MODE");

            bakeMaterial.SetFloat(UseCustomTonemapId, skyboxMaterial.GetFloat(UseCustomTonemapId));
            bakeMaterial.SetFloat(ExposureId, skyboxMaterial.GetFloat(ExposureId));
            bakeMaterial.SetFloat(UseLMSId, skyboxMaterial.GetFloat(UseLMSId));

            Graphics.Blit(null, dynamicSkyMap, bakeMaterial, 0);

            Shader.SetGlobalTexture(SkyMapId, dynamicSkyMap);
        }
    }

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

    private float RayleighPhase(float x)
    {
        return 0.375f * (1.0f + x * x);
    }

    private float HgPhase(float x, float g)
    {
        float g2 = Mathf.Clamp01(g) * Mathf.Clamp01(g);
        return 0.25f * ((1.0f - g2) * Mathf.Pow(Mathf.Abs(1.0f + g2 - 2.0f * g * x), -1.5f));
    }

    private float MiePhaseSky(float x, float depth)
    {
        return HgPhase(x, Mathf.Max(Mathf.Exp(-0.000003f * depth), 1e-6f));
    }

    private Vector3 ApplyLms(Vector3 color)
    {
        Vector4 r1 = skyboxMaterial.GetVector(LMSRow1Id);
        Vector4 r2 = skyboxMaterial.GetVector(LMSRow2Id);
        Vector4 r3 = skyboxMaterial.GetVector(LMSRow3Id);
        float x = r1.x * color.x + r1.y * color.y + r1.z * color.z;
        float y = r2.x * color.x + r2.y * color.y + r2.z * color.z;
        float z = r3.x * color.x + r3.y * color.y + r3.z * color.z;
        return new Vector3(x, y, z);
    }

    private Vector3 Robobo1221Tonemap(Vector3 color)
    {
        float l = color.magnitude;
        color = Vector3.Lerp(color, color * 0.5f, l / (l + 1.0f));
        return new Vector3(
            color.x / Mathf.Sqrt(color.x * color.x + 1.0f),
            color.y / Mathf.Sqrt(color.y * color.y + 1.0f),
            color.z / Mathf.Sqrt(color.z * color.z + 1.0f));
    }

    /// <summary>
    /// CPU mirror of FakeSkybox.shader's calcAtmosphericScatter + the tonemap
    /// /LMS chain applied to sky pixels, for a single view direction. Produces
    /// the same clean, cloud-free atmosphere color as the GPU skybox so the IRC
    /// ambient floor matches the sky tint without sampling the dynamic map
    /// (which carries clouds). Called once per frame on a single direction.
    /// </summary>
    private Vector3 CalcAtmosphericScatter(Vector3 sunDir, Vector3 viewDir)
    {
        const float ln2 = 0.69314718056f;
        float rR = skyboxMaterial.GetFloat(RayleighRedId);
        float rG = skyboxMaterial.GetFloat(RayleighGreenId);
        float rB = skyboxMaterial.GetFloat(RayleighBlueId);
        float sunIntensity = skyboxMaterial.GetFloat(SunIntensityId);
        Color sunColorParam = skyboxMaterial.GetColor(SunColorId);

        Vector3 rayleighCoeff = new Vector3(rR, rG, rB) * 1e-5f;
        Vector3 mieCoeff = new Vector3(0.5e-6f, 0.5e-6f, 0.5e-6f);
        Vector3 totalCoeff = rayleighCoeff + mieCoeff;

        float lDotW = Vector3.Dot(sunDir, viewDir);
        float lDotU = sunDir.y;
        float uDotW = Mathf.Max(Vector3.Dot(Vector3.up, viewDir), 0.0f);

        float opticalDepth = CalcParticleThickness(uDotW);
        float opticalDepthLight = CalcParticleThickness(lDotU);

        Vector3 scatterView = totalCoeff * opticalDepth;
        Vector3 absorbView = Absorb(totalCoeff, opticalDepth);
        Vector3 scatterLight = totalCoeff * opticalDepthLight;
        Vector3 absorbLight = Absorb(totalCoeff, opticalDepthLight);

        // Per-channel: absorbSun = abs(absorbLight - absorbView) / d0((scatterLight - scatterView)*ln2)
        Vector3 absorbSun = new Vector3(
            Mathf.Abs(absorbLight.x - absorbView.x) / (Mathf.Abs((scatterLight.x - scatterView.x) * ln2) + 1e-8f),
            Mathf.Abs(absorbLight.y - absorbView.y) / (Mathf.Abs((scatterLight.y - scatterView.y) * ln2) + 1e-8f),
            Mathf.Abs(absorbLight.z - absorbView.z) / (Mathf.Abs((scatterLight.z - scatterView.z) * ln2) + 1e-8f));

        Vector3 mieScatter = mieCoeff * opticalDepth * MiePhaseSky(lDotW, opticalDepth);
        Vector3 rayleighScatter = rayleighCoeff * opticalDepth * RayleighPhase(lDotW);

        Vector3 scatterSun = mieScatter + rayleighScatter;
        Vector3 sunSpot = absorbView * (Mathf.SmoothStep(0.9999f, 0.99993f, lDotW) * sunIntensity);

        Vector3 sunColor = new Vector3(sunColorParam.r, sunColorParam.g, sunColorParam.b);
        Vector3 result = Vector3.Scale(scatterSun, absorbSun);
        result += sunSpot;
        result *= sunIntensity;
        result = Vector3.Scale(result, sunColor);

        // Match the GPU bake chain applied to sky pixels (see GetFinalSkyColor).
        if (skyboxMaterial.GetFloat(UseCustomTonemapId) > -0.5f)
            result = Robobo1221Tonemap(result * skyboxMaterial.GetFloat(ExposureId));
        if (skyboxMaterial.GetFloat(UseLMSId) > -0.5f)
            result = ApplyLms(result);

        return Vector3.Max(result, Vector3.zero);
    }
}
