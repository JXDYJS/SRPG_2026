using System.Collections;
using UnityEngine;
using TMPro;

public class DamageTextAnimator : MonoBehaviour
{
    public float floatSpeed = 1.0f;
    public float lifetime = 1.0f;

    void Start()
    {
        StartCoroutine(AnimateAndDestroy());
    }

    void Update()
    {
        transform.rotation = Camera.main.transform.rotation;
    }

    IEnumerator AnimateAndDestroy()
    {
        TextMeshPro textMesh = GetComponent<TextMeshPro>();
        Color originalColor = textMesh.color;
        float timer = 0;

        while (timer < lifetime)
        {
            timer += Time.deltaTime;
            
            transform.position += Vector3.up * floatSpeed * Time.deltaTime;
            
            float alpha = Mathf.Lerp(1f, 0f, timer / lifetime);
            textMesh.color = new Color(originalColor.r, originalColor.g, originalColor.b, alpha);

            yield return null;
        }

        Destroy(gameObject);
    }
}