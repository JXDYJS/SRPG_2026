using UnityEngine;

public enum BlockType
{
    Ground,     // 普通地面 (草、土)
    Obstacle,   // 障碍 (墙、树干)
    Decoration, // 装饰 (花、草丛 - 没有任何逻辑影响)
    Liquid,     // 液体 (水、岩浆 - 只有特定单位能走)
    Stairs      // 楼梯 (特殊的高度处理)
}

public class MapObject : MonoBehaviour
{
    public string prefabId;
    public BlockType type = BlockType.Ground;
    public bool isWalkable = true;
    
    // 专门为楼梯准备的属性
    // 假设每级楼梯能垫高 0.5 或 1.0
    public float heightOffset = 0.5f; 
}