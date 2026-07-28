using UnityEditor;
using UnityEngine;
using GamePlay.Skill;

[CustomPropertyDrawer(typeof(SkillPhase))]
public class SkillPhaseDrawer : PropertyDrawer
{
    private SerializedProperty GetProp(SerializedProperty root, string name)
    {
        return root.FindPropertyRelative(name);
    }

    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        EditorGUI.BeginProperty(position, label, property);

        float y = position.y;
        float w = position.width;

        System.Func<string, float> draw = (name) =>
        {
            var prop = GetProp(property, name);
            float h = EditorGUI.GetPropertyHeight(prop);
            EditorGUI.PropertyField(new Rect(position.x, y, w, h), prop, true);
            y += h + 2;
            return h + 2;
        };

        draw("PhaseName");
        draw("CastRangeMode");

        if (GetProp(property, "CastRangeMode").enumValueIndex == (int)SkillPhaseCastRangeMode.Script)
            draw("CastRangeFuncName");

        draw("ExecuteMode");

        if (GetProp(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Script)
            draw("ExecuteFuncName");

        bool stdCast = GetProp(property, "CastRangeMode").enumValueIndex == (int)SkillPhaseCastRangeMode.Standard;
        bool stdExec = GetProp(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Standard;

        if (stdCast || stdExec)
        {
            if (stdCast)
            {
                draw("TargetType");
                draw("AoEPattern");
                draw("AoERadius");
                draw("AoEVerticalRange");
                draw("OriginType");
            }
            if (stdExec)
                draw("Effects");
        }

        draw("VisualData");

        EditorGUI.EndProperty();
    }

    public override float GetPropertyHeight(SerializedProperty property, GUIContent label)
    {
        float total = 0;

        System.Func<string, float> h = (name) =>
        {
            float ph = EditorGUI.GetPropertyHeight(GetProp(property, name));
            total += ph + 2;
            return ph;
        };

        h("PhaseName");
        h("CastRangeMode");

        if (GetProp(property, "CastRangeMode").enumValueIndex == (int)SkillPhaseCastRangeMode.Script)
            h("CastRangeFuncName");

        h("ExecuteMode");

        if (GetProp(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Script)
            h("ExecuteFuncName");

        bool stdCast = GetProp(property, "CastRangeMode").enumValueIndex == (int)SkillPhaseCastRangeMode.Standard;
        bool stdExec = GetProp(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Standard;

        if (stdCast || stdExec)
        {
            if (stdCast)
            {
                h("TargetType");
                h("AoEPattern");
                h("AoERadius");
                h("AoEVerticalRange");
                h("OriginType");
            }
            if (stdExec)
                h("Effects");
        }

        h("VisualData");

        return total;
    }
}
