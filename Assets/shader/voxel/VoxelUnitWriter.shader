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

               RWTexture3D<float4> _Volume : register(u1);

               float4x4 _CanonicalToClip;
               float3   _GridRes;   
               float3   _GridWorldSize; 

               struct VIn  { float4 positionOS : POSITION; };
               struct VOut
               {
                   float4 positionCS    : SV_POSITION;
                   float3 positionCanon : TEXCOORD0;  // 规范空间位置，插值传给像素
               };

               VOut Vert(VIn i)
               {
                   VOut o;
                   float3 wpos = TransformObjectToWorld(i.positionOS.xyz);
                   float3 canon = wpos;

                   o.positionCS    = mul(_CanonicalToClip, float4(canon, 1.0));
                   o.positionCanon = canon;
                   return o;
               }

               void Frag(VOut i)
               {
                   int3 c = (int3)clamp(i.positionCanon / _GridWorldSize * _GridRes,
                                        0, _GridRes - 1);
                   _Volume[c] = float4(1, 1, 1, 1); 
               }
               ENDHLSL
           }
       }
   }