using UnityEngine;
using TMPro;
using Status.damage;
namespace Managers
{
public class DamageUIManager : MonoBehaviour
{
    public static DamageUIManager Instance;
    public GameObject damageTextPrefab; // 拖入你做好的飘字预制体

    void Awake() { Instance = this; }

    public void ShowDamage(Vector3 worldPosition, int damage, DamageType type)
    {
        if (damageTextPrefab == null) return;

        // 生成预制体
        GameObject textObj = Instantiate(damageTextPrefab, worldPosition, Quaternion.identity);
        
        // 找文字组件赋值
        TextMeshPro textMesh = textObj.GetComponentInChildren<TextMeshPro>();
        if (textMesh != null)
        {
            textMesh.text = $"-{damage}";
            
            // 可以根据伤害类型换颜色 (物理白，魔法紫，火焰红，中毒绿)
            switch(type)
            {
                case DamageType.Physical: textMesh.color = Color.white; break;
                case DamageType.Magic: textMesh.color = new Color(0.8f, 0.2f, 1f); break; // 紫色
            }
        }
    }
}
}