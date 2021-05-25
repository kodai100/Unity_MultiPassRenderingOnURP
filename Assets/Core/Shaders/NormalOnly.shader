Shader "Unlit/NormalOnly"
{
    Properties
    {
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
                float3 normalWS : TEXCOORD0;
            };

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.normalWS = mul(unity_ObjectToWorld, float4(v.normal,1));
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float3 n = i.normalWS * 0.5 + 0.5;
                n.y = 1-n.y;
                return half4(1-n, 1);
            }
            ENDCG
        }
    }
}
