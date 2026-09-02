#ifndef CUSTOMLIT_REFLECTIONDATA_PASS_INCLUDED
#define CUSTOMLIT_REFLECTIONDATA_PASS_INCLUDED

// Per-pixel reflection inputs for the temporal SSR pass. Drawn per-object with
// LightMode=ReflectionData (objects that don't declare the pass are skipped).
// Reuses the exact same surface sampling as the forward/GBuffer passes so the
// reflector parameters match the on-screen shading.
//
// Outputs (RGBA16F, see ReflectionDataFeature.cs):
//   SV_Target0 rgb = albedo
//   SV_Target1   r = perceptual roughness, g = metallic
//   SV_Target2   rg = oct-encoded world normal

#include "CustomLighting.hlsl"
#include "Assets/shader/pbr/CustomLitInput.hlsl"
#if defined(LOD_FADE_CROSSFADE)
    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
#endif

// Normal/parallax/detail maps need the tangent frame interpolated.
#if defined(_NORMALMAP) || defined(_DETAIL) || defined(_PARALLAXMAP)
#define REQUIRES_WORLD_SPACE_TANGENT_INTERPOLATOR
#endif

struct Attributes
{
    float4 positionOS   : POSITION;
    float4 tangentOS    : TANGENT;
    float2 texcoord     : TEXCOORD0;
    float3 normal       : NORMAL;
    UNITY_VERTEX_INPUT_INSTANCE_ID
};

struct Varyings
{
    float4 positionCS   : SV_POSITION;
    float2 uv           : TEXCOORD0;
    half3 normalWS      : TEXCOORD1;
    #if defined(REQUIRES_WORLD_SPACE_TANGENT_INTERPOLATOR)
        half4 tangentWS : TEXCOORD2; // xyz tangent, w sign
    #endif
    #if defined(_PARALLAXMAP)
        float3 positionWS : TEXCOORD3;
    #endif
    half3 viewDirWS     : TEXCOORD4;
    UNITY_VERTEX_INPUT_INSTANCE_ID
    UNITY_VERTEX_OUTPUT_STEREO
};

Varyings ReflectionDataVertex(Attributes input)
{
    Varyings output = (Varyings)0;
    UNITY_SETUP_INSTANCE_ID(input);
    UNITY_TRANSFER_INSTANCE_ID(input, output);
    UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

    output.uv = TRANSFORM_TEX(input.texcoord, _BaseMap);
    output.positionCS = TransformObjectToHClip(input.positionOS.xyz);

    VertexPositionInputs vertexInput = GetVertexPositionInputs(input.positionOS.xyz);
    VertexNormalInputs normalInput = GetVertexNormalInputs(input.normal, input.tangentOS);
    output.normalWS = half3(normalInput.normalWS);
    output.viewDirWS = GetWorldSpaceNormalizeViewDir(vertexInput.positionWS);

    #if defined(_PARALLAXMAP) || defined(_NORMALMAP) || defined(_DETAIL)
        float sign = input.tangentOS.w * float(GetOddNegativeScale());
        output.tangentWS = half4(normalInput.tangentWS.xyz, sign);
    #endif
    #if defined(_PARALLAXMAP)
        output.positionWS = vertexInput.positionWS;
    #endif
    return output;
}

void ReflectionDataFragment(Varyings input
    , out half4 outAlbedo : SV_Target0
    , out half4 outRoughMetal : SV_Target1
    , out half4 outNormal : SV_Target2
)
{
    UNITY_SETUP_INSTANCE_ID(input);
    UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

    #if defined(_ALPHATEST_ON)
        Alpha(SampleAlbedoAlpha(input.uv, TEXTURE2D_ARGS(_BaseMap, sampler_BaseMap)).a, _BaseColor, _Cutoff);
    #endif

    #if defined(LOD_FADE_CROSSFADE)
        LODFadeCrossFade(input.positionCS);
    #endif

    #if defined(_PARALLAXMAP)
        half3 viewDirTS = GetViewDirectionTangentSpace(input.tangentWS, input.normalWS, input.viewDirWS);
        ApplyPerPixelDisplacement_lab(viewDirTS, input.uv, input.positionWS, input.positionCS);
    #endif

    SurfaceData surfaceData;
    InitializeStandardLitSurfaceData(input.uv, surfaceData);

    half3 normalWS = input.normalWS;
    #if defined(_NORMALMAP) || defined(_DETAIL)
        float sgn = input.tangentWS.w;
        float3 bitangent = sgn * cross(input.normalWS.xyz, input.tangentWS.xyz);
        half3 normalTS = surfaceData.normalTS;
        normalWS = TransformTangentToWorld(normalTS, half3x3(input.tangentWS.xyz, bitangent.xyz, input.normalWS.xyz));
    #endif
    normalWS = NormalizeNormalPerPixel(normalWS);

    // Metallic workflow: specular from metallic reflectivity; metallic maps to
    // 0..1. For SSR the reflector strength uses metallic; roughness drives the
    // GGX lobe width.
    half perceptualRoughness = (1.0h - surfaceData.smoothness);
    half metallic = surfaceData.metallic;

    float2 octNormalWS = PackNormalOctQuadEncode(normalWS);
    float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);

    outAlbedo = half4(surfaceData.albedo, 1.0h);
    outRoughMetal = half4(perceptualRoughness, metallic, 0.0h, 0.0h);
    outNormal = half4(remappedOctNormalWS, 0.0h, 0.0h);
}

#endif
