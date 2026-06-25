using UnityEditor;
using UnityEngine;
using UnityEditor.Rendering.Universal.ShaderGUI;

internal class CustomLitShaderGUI : LitShader
{
    private MaterialProperty _brdfDebugProp;

    private static readonly string[] _brdfDebugNames = { "Off", "D (NDF)", "G (Visibility)", "F (Fresnel)", "Specular (D*G*F)" };

    public override void FindProperties(MaterialProperty[] properties)
    {
        base.FindProperties(properties);
        _brdfDebugProp = FindProperty("_BRDFDebug", properties, false);
    }

    public override void DrawAdvancedOptions(Material material)
    {
        base.DrawAdvancedOptions(material);

        if (_brdfDebugProp != null)
        {
            EditorGUILayout.Space();
            EditorGUILayout.LabelField("BRDF Debug", EditorStyles.boldLabel);
            _brdfDebugProp.floatValue = (float)EditorGUILayout.Popup(
                "Debug Mode",
                (int)_brdfDebugProp.floatValue,
                _brdfDebugNames);
        }
    }
}
