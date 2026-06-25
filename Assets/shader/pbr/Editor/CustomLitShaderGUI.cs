using System;
using UnityEditor;
using UnityEngine;
using UnityEditor.Rendering.Universal.ShaderGUI;

internal class CustomLitShaderGUI : BaseShaderGUI
{
    private static readonly string[] _workflowModeNames = Enum.GetNames(typeof(LitGUI.WorkflowMode));

    private LitGUI.LitProperties _litProperties;
    private MaterialProperty _brdfDebugProp;

    private static readonly string[] _brdfDebugNames =
        { "Off", "D (NDF)", "G (Visibility)", "F (Fresnel)", "Specular (D*G*F)" };

    public override void FindProperties(MaterialProperty[] properties)
    {
        base.FindProperties(properties);
        _litProperties = new LitGUI.LitProperties(properties);
        _brdfDebugProp = FindProperty("_BRDFDebug", properties, false);
    }

    public override void ValidateMaterial(Material material)
    {
        SetMaterialKeywords(material, LitGUI.SetMaterialKeywords);
    }

    public override void DrawSurfaceOptions(Material material)
    {
        EditorGUIUtility.labelWidth = 0f;

        if (_litProperties.workflowMode != null)
            DoPopup(LitGUI.Styles.workflowModeText, _litProperties.workflowMode, _workflowModeNames);

        base.DrawSurfaceOptions(material);
    }

    public override void DrawSurfaceInputs(Material material)
    {
        base.DrawSurfaceInputs(material);
        LitGUI.Inputs(_litProperties, materialEditor, material);
        DrawEmissionProperties(material, true);
        DrawTileOffset(materialEditor, baseMapProp);
    }

    public override void DrawAdvancedOptions(Material material)
    {
        if (_litProperties.reflections != null && _litProperties.highlights != null)
        {
            materialEditor.ShaderProperty(_litProperties.highlights, LitGUI.Styles.highlightsText);
            materialEditor.ShaderProperty(_litProperties.reflections, LitGUI.Styles.reflectionsText);
        }

        if (_brdfDebugProp != null)
        {
            EditorGUILayout.Space();
            _brdfDebugProp.floatValue = (float)EditorGUILayout.Popup(
                "BRDF Debug Mode",
                (int)_brdfDebugProp.floatValue,
                _brdfDebugNames);
        }

        base.DrawAdvancedOptions(material);
    }

    public override void AssignNewShaderToMaterial(Material material, Shader oldShader, Shader newShader)
    {
        if (material == null)
            throw new ArgumentNullException("material");

        if (material.HasProperty("_Emission"))
            material.SetColor("_EmissionColor", material.GetColor("_Emission"));

        base.AssignNewShaderToMaterial(material, oldShader, newShader);

        if (oldShader == null || !oldShader.name.Contains("Legacy Shaders/"))
        {
            SetupMaterialBlendMode(material);
            return;
        }

        SurfaceType surfaceType = SurfaceType.Opaque;
        BlendMode blendMode = BlendMode.Alpha;
        if (oldShader.name.Contains("/Transparent/Cutout/"))
        {
            surfaceType = SurfaceType.Opaque;
            material.SetFloat("_AlphaClip", 1);
        }
        else if (oldShader.name.Contains("/Transparent/"))
        {
            surfaceType = SurfaceType.Transparent;
            blendMode = BlendMode.Alpha;
        }
        material.SetFloat("_Blend", (float)blendMode);

        material.SetFloat("_Surface", (float)surfaceType);
        if (surfaceType == SurfaceType.Opaque)
            material.DisableKeyword("_SURFACE_TYPE_TRANSPARENT");
        else
            material.EnableKeyword("_SURFACE_TYPE_TRANSPARENT");

        if (oldShader.name.Equals("Standard (Specular setup)"))
        {
            material.SetFloat("_WorkflowMode", (float)LitGUI.WorkflowMode.Specular);
            Texture texture = material.GetTexture("_SpecGlossMap");
            if (texture != null)
                material.SetTexture("_MetallicSpecGlossMap", texture);
        }
        else
        {
            material.SetFloat("_WorkflowMode", (float)LitGUI.WorkflowMode.Metallic);
            Texture texture = material.GetTexture("_MetallicGlossMap");
            if (texture != null)
                material.SetTexture("_MetallicSpecGlossMap", texture);
        }
    }
}
