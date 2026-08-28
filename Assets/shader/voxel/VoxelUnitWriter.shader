Shader "Custom/VoxelUnitWrite"
{
    SubShader
    {
        Tags { "RenderType" = "Opaque" "RenderPipeline" = "UniversalPipeline" }
        ZWrite Off
        ZTest Always
        Cull Off

        Pass
        {
            HLSLPROGRAM
            #pragma vertex Vert
            #pragma fragment Frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            // Per-renderer albedo supplied by VoxelUnitBakerFeature via
            // MaterialPropertyBlock; falls back to white for color-only units.
            Texture2D _BaseMap;
            SamplerState sampler_BaseMap;
            float4 _BaseColor;
            float4 _BaseMap_ST;

            RWTexture3D<float4> _Volume : register(u1);

            float4x4 _CanonicalToClip;
            float3   _GridRes;
            float3   _GridWorldSize;
            float    _SlotOffsetX; // packed volume X offset of this unit's sub-grid
            float3   _GridOrigin;  // world min corner of this unit's grid box

            struct VIn  { float4 positionOS : POSITION; float2 uv : TEXCOORD0; };
            struct VOut
            {
                float4 positionCS    : SV_POSITION;
                float3 positionCanon : TEXCOORD0;  // 规范空间位置，插值传给像素
                float2 uv            : TEXCOORD1;
            };

            VOut Vert(VIn i)
            {
                VOut o;
                float3 wpos = TransformObjectToWorld(i.positionOS.xyz);
                float3 canon = wpos - _GridOrigin; // world -> this unit's local grid space

                o.positionCS    = mul(_CanonicalToClip, float4(canon, 1.0));
                o.positionCanon = canon;
                o.uv            = i.uv;
                return o;
            }

            void Frag(VOut i)
            {
                // Reject anything outside this unit's box (ground plane, other
                // geometry caught by the sweep frustum).
                if (any(i.positionCanon < 0) || any(i.positionCanon > _GridWorldSize)) discard;

                int3 c = (int3)clamp(i.positionCanon / _GridWorldSize * _GridRes,
                                     0, _GridRes - 1);
                c.x += (int)_SlotOffsetX; // write into this unit's slot of the packed volume

                float2 uv = TRANSFORM_TEX(i.uv, _BaseMap);
                half4 albedo = _BaseMap.Sample(sampler_BaseMap, uv) * _BaseColor;
                _Volume[c] = float4(albedo.rgb, 1.0);
            }
            ENDHLSL
        }
    }
}
