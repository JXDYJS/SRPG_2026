// Full-screen UAV write test: fills the entire packed unit volume with white
// via SetRandomWriteTarget(1) + DrawProcedural. Isolates UAV binding from
// mesh rasterization when the baker produces empty slots.
Shader "Custom/VoxelUnitFillTest"
{
    SubShader
    {
        Tags { "RenderPipeline" = "UniversalPipeline" }
        Cull Off
        ZWrite Off
        ZTest Always

        Pass
        {
            HLSLPROGRAM
            #pragma vertex Vert
            #pragma fragment Frag
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

            RWTexture3D<float4> _Volume : register(u1);
            float3 _VolumeSize;

            struct VOut
            {
                float4 positionCS : SV_POSITION;
                float3 uv : TEXCOORD0;
            };

            VOut Vert(uint vertexID : SV_VertexID)
            {
                VOut o;
                float2 st = float2((vertexID << 1) & 2, vertexID & 2);
                o.positionCS = float4(st * 2.0 - 1.0, 0, 1);
                o.uv = float3(st, 0);
                return o;
            }

            void Frag(VOut i)
            {
                int3 c = (int3)clamp(i.uv * _VolumeSize, 0, _VolumeSize - 1);
                _Volume[c] = float4(1, 1, 1, 1);
            }
            ENDHLSL
        }
    }
}
