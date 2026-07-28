using UnityEditor;
using UnityEngine;
using GamePlay.Skill;

[CustomPropertyDrawer(typeof(SkillPhase))]
public class SkillPhaseDrawer : PropertyDrawer
{
    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        EditorGUI.BeginProperty(position, label, property);

        var phaseName = property.FindPropertyRelative("PhaseName");
        var castRangeMode = property.FindPropertyRelative("CastRangeMode");
        var executeMode = property.FindPropertyRelative("ExecuteMode");
        var castRangeFunc = property.FindPropertyRelative("CastRangeFuncName");
        var executeFunc = property.FindPropertyRelative("ExecuteFuncName");

        float y = position.y;
        float lineHeight = EditorGUIUtility.singleLineHeight + 2;
        float width = position.width;

        EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight), phaseName);
        y += lineHeight;

        EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight), castRangeMode);
        y += lineHeight;

        if (castRangeMode.enumValueIndex == (int)SkillPhaseCastRangeMode.Script)
        {
            EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight), castRangeFunc);
            y += lineHeight;
        }

        EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight), executeMode);
        y += lineHeight;

        if (executeMode.enumValueIndex == (int)SkillPhaseExecuteMode.Script)
        {
            EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight), executeFunc);
            y += lineHeight;
        }

        bool showStandardCastRange = castRangeMode.enumValueIndex == (int)SkillPhaseCastRangeMode.Standard;
        bool showStandardExecute = executeMode.enumValueIndex == (int)SkillPhaseExecuteMode.Standard;

        if (showStandardCastRange || showStandardExecute)
        {
            if (showStandardCastRange)
            {
                EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight),
                    property.FindPropertyRelative("TargetType")); y += lineHeight;
                EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight),
                    property.FindPropertyRelative("AoEPattern")); y += lineHeight;
                EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight),
                    property.FindPropertyRelative("AoERadius")); y += lineHeight;
                EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight),
                    property.FindPropertyRelative("AoEVerticalRange")); y += lineHeight;
                EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight),
                    property.FindPropertyRelative("OriginType")); y += lineHeight;
            }

            if (showStandardExecute)
            {
                EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight),
                    property.FindPropertyRelative("Effects")); y += lineHeight;
            }
        }

        EditorGUI.PropertyField(new Rect(position.x, y, width, lineHeight),
            property.FindPropertyRelative("VisualData"));

        EditorGUI.EndProperty();
    }

    public override float GetPropertyHeight(SerializedProperty property, GUIContent label)
    {
        float lines = 4;
        var castRangeMode = property.FindPropertyRelative("CastRangeMode");
        var executeMode = property.FindPropertyRelative("ExecuteMode");

        if (castRangeMode.enumValueIndex == (int)SkillPhaseCastRangeMode.Script)
            lines += 1;

        if (executeMode.enumValueIndex == (int)SkillPhaseExecuteMode.Script)
            lines += 1;

        if (castRangeMode.enumValueIndex == (int)SkillPhaseCastRangeMode.Standard
            || executeMode.enumValueIndex == (int)SkillPhaseExecuteMode.Standard)
        {
            if (castRangeMode.enumValueIndex == (int)SkillPhaseCastRangeMode.Standard)
                lines += 5;
            if (executeMode.enumValueIndex == (int)SkillPhaseExecuteMode.Standard)
                lines += 1;
        }

        return lines * (EditorGUIUtility.singleLineHeight + 2) + 10;
    }
}
