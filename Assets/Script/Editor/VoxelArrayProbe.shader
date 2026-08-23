Shader "Custom/VoxelArrayProbe"
{
    Properties
    {
        _FaceArray ("FaceArray", 2DArray) = "" {}
        _Layer ("Layer", Float) = 0
    }
    SubShader
    {
        Tags { "RenderType" = "Opaque" "Queue" = "Geometry" }
        LOD 100
        ZWrite On
        Cull Off

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            // Platform-safe Texture2DArray declaration (sampler2DArray is not
            // valid on Vulkan; these macros expand per platform).
            UNITY_DECLARE_TEX2DARRAY(_FaceArray);
            float _Layer;

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            v2f vert(appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            fixed4 frag(v2f i) : SV_Target
            {
                fixed4 col = UNITY_SAMPLE_TEX2DARRAY(_FaceArray, float3(i.uv, _Layer));
                return col;
            }
            ENDCG
        }
    }
}