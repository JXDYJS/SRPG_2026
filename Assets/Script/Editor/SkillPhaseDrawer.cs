using UnityEditor;
using UnityEngine;
using GamePlay.Skill;

[CustomPropertyDrawer(typeof(SkillPhase))]
public class SkillPhaseDrawer : PropertyDrawer
{
    private SerializedProperty P(SerializedProperty root, string name)
    {
        return root.FindPropertyRelative(name);
    }

    public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
    {
        EditorGUI.BeginProperty(position, label, property);

        float y = position.y;
        float w = position.width;

        System.Func<string, float> draw = (n) =>
        {
            var prop = P(property, n);
            float h = EditorGUI.GetPropertyHeight(prop);
            EditorGUI.PropertyField(new Rect(position.x, y, w, h), prop, true);
            y += h + 2;
            return h + 2;
        };

        draw("PhaseName");
        draw("ExecuteMode");

        if (P(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Script)
            draw("ExecuteFuncName");

        bool stdExec = P(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Standard;

        if (stdExec)
        {
            draw("TargetType");
            draw("AoEPattern");
            draw("AoERadius");
            draw("AoEVerticalRange");
            draw("OriginType");
            draw("Effects");
        }

        draw("VisualData");

        EditorGUI.EndProperty();
    }

    public override float GetPropertyHeight(SerializedProperty property, GUIContent label)
    {
        float total = 0;

        System.Func<string, float> h = (n) =>
        {
            float ph = EditorGUI.GetPropertyHeight(P(property, n));
            total += ph + 2;
            return ph;
        };

        h("PhaseName");
        h("ExecuteMode");

        if (P(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Script)
            h("ExecuteFuncName");

        bool stdExec = P(property, "ExecuteMode").enumValueIndex == (int)SkillPhaseExecuteMode.Standard;

        if (stdExec)
        {
            h("TargetType");
            h("AoEPattern");
            h("AoERadius");
            h("AoEVerticalRange");
            h("OriginType");
            h("Effects");
        }

        h("VisualData");

        return total;
    }
}
