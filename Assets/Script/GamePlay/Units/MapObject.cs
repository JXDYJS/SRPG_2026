using UnityEngine;
using Global;

public class MapObject : MonoBehaviour
{
    public string prefabId;
    public BlockType type = BlockType.Solid;
    public bool isWalkable = true;
    public float XCellSize = 1.0f;
    public float YCellSize = 1.0f;
    public float ZCellSize = 1.0f;
    public int XRound = 0;
    public int ZRound = 0;
    public int YRound = 0;
    
    // 专门为楼梯准备的属性
    // 假设每级楼梯能垫高 0.5 或 1.0
    public float heightOffset = 0.5f; 
}