using UnityEditor;
using UnityEngine;
using GamePlay.Skill;

[CustomEditor(typeof(SkillDataSO))]
public class SkillDataSOEditor : Editor
{
    private static readonly string[] _excluded = {
        "CastRangeMode", "CastRangeFuncName",
        "CastPattern", "CastMaxRange", "CastMinRange", "CastVerticalRange"
    };

    private SerializedProperty _castRangeMode;
    private SerializedProperty _castRangeFunc;
    private SerializedProperty _castPattern;
    private SerializedProperty _castMaxRange;
    private SerializedProperty _castMinRange;
    private SerializedProperty _castVerticalRange;

    private void OnEnable()
    {
        _castRangeMode = serializedObject.FindProperty("CastRangeMode");
        _castRangeFunc = serializedObject.FindProperty("CastRangeFuncName");
        _castPattern = serializedObject.FindProperty("CastPattern");
        _castMaxRange = serializedObject.FindProperty("CastMaxRange");
        _castMinRange = serializedObject.FindProperty("CastMinRange");
        _castVerticalRange = serializedObject.FindProperty("CastVerticalRange");
    }

    public override void OnInspectorGUI()
    {
        serializedObject.Update();

        DrawPropertiesExcluding(serializedObject, _excluded);

        EditorGUILayout.Space(4);
        EditorGUILayout.LabelField("施法范围配置 (Cast Range)", EditorStyles.boldLabel);

        EditorGUILayout.PropertyField(_castRangeMode);

        if (_castRangeMode.enumValueIndex == (int)SkillPhaseCastRangeMode.Script)
        {
            EditorGUILayout.PropertyField(_castRangeFunc);
        }
        else
        {
            EditorGUILayout.PropertyField(_castPattern);
            EditorGUILayout.PropertyField(_castMaxRange);
            EditorGUILayout.PropertyField(_castMinRange);
            EditorGUILayout.PropertyField(_castVerticalRange);
        }

        serializedObject.ApplyModifiedProperties();
    }
}
