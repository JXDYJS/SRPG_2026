using UnityEngine;
using TMPro;
using Status.damage;
using Global;
using UnityEngine.AddressableAssets;
using Cysharp.Threading.Tasks;
using UnityEngine.ResourceManagement.AsyncOperations;

namespace Managers
{
    public class DamageUIManager : MonoBehaviour
    {
        public static DamageUIManager Instance;
        
        [Header("UI 预制体 (Addressables 软引用)")]
        public AssetReferenceGameObject damageTextPrefab;

        void Awake() 
        { 
            Instance = this; 
        }

        public async void ShowDamage(Vector3 worldPosition, int damage, DamageType type)
        {
            if (damageTextPrefab == null || !damageTextPrefab.RuntimeKeyIsValid()) return;

            var handle = Addressables.InstantiateAsync(damageTextPrefab, worldPosition, Quaternion.identity);
            await handle.Task;

            if (handle.Status != AsyncOperationStatus.Succeeded)
            {
                Debug.LogError("DamageUIManager: 无法实例化伤害数字预制体");
                return;
            }

            GameObject textObj = handle.Result;
            
            TextMeshPro textMesh = textObj.GetComponentInChildren<TextMeshPro>();
            if (textMesh != null)
            {
                textMesh.text = $"-{damage}";
                
                switch(type)
                {
                    case DamageType.Physical: textMesh.color = Color.white; break;
                    case DamageType.Magic: textMesh.color = new Color(0.8f, 0.2f, 1f); break;
                }
            }
        }
    }
}
