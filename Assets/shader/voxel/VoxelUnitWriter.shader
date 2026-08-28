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

            // Per-renderer albedo supplied by VoxelUnitBakerFeature via CB-local
            // SetGlobal* (set before each DrawRenderer); falls back to white
            // for color-only units.
            Texture2D _UnitAlbedoMap;
            SamplerState sampler_UnitAlbedoMap;
            float4 _UnitAlbedoColor;
            float4 _UnitAlbedoMap_ST;

            // Accumulating write target: RGB = sum(albedo*255), A = fragment
            // count. InterlockedAdd is commutative, so overlapping surface
            // writes (multi-face corner cells, three-sweep overlaps) average
            // deterministically and cannot flicker frame to frame. Resolved
            // by VoxelUnitResolve.compute, which also resets the buffer.
            RWStructuredBuffer<uint4> _VolumeAccum : register(u1);

            float4x4 _CanonicalToClip;
            float3   _GridRes;
            float3   _GridWorldSize;
            float    _SlotOffsetX;   // packed volume X offset of this unit's sub-grid
            float3   _GridOrigin;    // world min corner of this unit's grid box
            float4   _VolumePackedSize; // (packedWidth, gridY, gridZ, 0) for linear indexing

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

                int idx = (c.z * (int)_VolumePackedSize.y + c.y)
                        * (int)_VolumePackedSize.x + c.x;

                float2 uv = TRANSFORM_TEX(i.uv, _UnitAlbedoMap);
                half4 albedo = _UnitAlbedoMap.Sample(sampler_UnitAlbedoMap, uv) * _UnitAlbedoColor;
                uint3 cuv = (uint3)min(floor(albedo.rgb * 255.0 + 0.5), 255.0);
                // Scalar atomics only: the compiler (glslang/Vulkan) supports no
                // vector form of InterlockedAdd on structured buffers.
                InterlockedAdd(_VolumeAccum[idx].x, cuv.x);
                InterlockedAdd(_VolumeAccum[idx].y, cuv.y);
                InterlockedAdd(_VolumeAccum[idx].z, cuv.z);
                InterlockedAdd(_VolumeAccum[idx].w, 1u);
            }
            ENDHLSL
        }
    }
}
