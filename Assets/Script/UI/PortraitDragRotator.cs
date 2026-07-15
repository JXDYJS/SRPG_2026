using UnityEngine;
using UnityEngine.EventSystems;
public class PortraitDragRotator : MonoBehaviour, IDragHandler
{
    public Transform target;
    public float sensitivity = 1f;
    
    public void OnDrag(PointerEventData e)
    {
        target.Rotate(0, -e.delta.x * sensitivity, 0);
    }
}