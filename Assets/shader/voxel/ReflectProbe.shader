// Minimal consumer of VoxelReflect: ray-marches from the camera through the
// static voxel map and outputs the first hit. Attach to a large cube at the
// map position (or camera inside the map) to preview hits.
Shader "Custom/VoxelReflectProbe"
{
    SubShader
    {
        Tags { "RenderType" = "Opaque" "Queue" = "Geometry" }
        LOD 100

        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma target 5.0

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Assets/shader/voxel/Reflect.hlsl"

            struct Attributes
            {
                float4 positionOS : POSITION;
            };

            struct Varyings
            {
                float4 positionCS : SV_POSITION;
                float3 positionWS : TEXCOORD0;
            };

            Varyings vert(Attributes input)
            {
                Varyings o;
                o.positionCS = TransformObjectToHClip(input.positionOS.xyz);
                o.positionWS = TransformObjectToWorld(input.positionOS.xyz);
                return o;
            }

            half4 frag(Varyings i) : SV_Target
            {
                float3 ori = GetCameraPositionWS();
                float3 dir = normalize(i.positionWS - ori);
                VoxelReflectRes r = VoxelReflect(ori, dir);
                return half4(r.hitColor, r.alpha);
            }
            ENDHLSL
        }
    }
}