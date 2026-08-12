Shader "Custom/UnitStroke"
{
    Properties
    {
        _ObjColorTexture("ObjColorTexture", 2D) = "black" {}
        _StrokeWidth("StrokeWidth", Range(1, 10)) = 2.0
    }

    SubShader
    {
        Tags { "RenderPipeline" = "UniversalPipeline" }

        Pass
        {
            Name "UnitStroke"
            Tags { "LightMode" = "UnitStroke" }
            ZTest Always
            ZWrite Off
            Cull Off

            HLSLPROGRAM
            #pragma vertex Vert
            #pragma fragment frag

            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
            #include "Packages/com.unity.render-pipelines.core/Runtime/Utilities/Blit.hlsl"

            CBUFFER_START(UnityPerMaterial)
                float _StrokeWidth;
            CBUFFER_END

            TEXTURE2D(_ObjColorTexture);
            SAMPLER(sampler_ObjColorTexture);

            // 全局：GBufferRenderFeature 每帧写入的类型缓冲
            TEXTURE2D(_GBuffer);
            SAMPLER(sampler_GBuffer);

            struct GBufferData
            {
                int objID;
                bool isUnit;
                int type;
            };

            void readData(half4 data, out GBufferData bufferData)
            {
                // R8 UNorm 经 half 往返有精度损失，必须 round 不能 floor（如 32/255*255 可能得 31.999）
                int x = (int)round(data.x * 255.0);
                bufferData.type = x & 0xF;            // 低4bit: 0=sky 1=block 2=unit 3=water
                bufferData.isUnit = (x >> 4) == 2;    // 高4bit: 2=unit 占用
                bufferData.objID = (int)round(data.y * 255.0);
            }

            bool isStroke(float2 uv, out GBufferData bufferData)
            {
                half4 data = SAMPLE_TEXTURE2D_LOD(_GBuffer, sampler_GBuffer, uv, 0);
                readData(data, bufferData);
                if (!bufferData.isUnit) return false;

                // 单位像素 8 邻域采样，只要发现非单位像素 => 处于单位轮廓上
                for (int i = -1; i <= 1; i++)
                {
                    for (int j = -1; j <= 1; j++)
                    {
                        if (i == 0 && j == 0) continue;

                        float2 offsetUV = uv + float2(i, j) * _ScreenSize.zw * _StrokeWidth;

                        half4 neighborRaw = SAMPLE_TEXTURE2D_LOD(_GBuffer, sampler_GBuffer, offsetUV, 0);
                        GBufferData neighborData;
                        readData(neighborRaw, neighborData);

                        if (!neighborData.isUnit)
                        {
                            return true;
                        }
                    }
                }

                return false;
            }

            half4 frag(Varyings input) : SV_Target
            {
                float2 uv = input.texcoord;

                GBufferData bufferData;
                if (isStroke(uv, bufferData))
                {
                    // 单位描边：按 objID 查单位颜色表
                    float2 colorUV = float2(bufferData.objID, 0) / 255.0;
                    return SAMPLE_TEXTURE2D(_ObjColorTexture, sampler_ObjColorTexture, colorUV);
                }

                // _BlitTexture = UnitStrokeRenderFeature 绑定的当前画面颜色
                return SAMPLE_TEXTURE2D_X(_BlitTexture, sampler_LinearClamp, uv);
            }
            ENDHLSL
        }
    }
}
