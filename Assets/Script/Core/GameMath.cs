using System;
using UnityEngine;
using Unity.Mathematics;
public static class GameMath
{
    public static float abs(Vector3 pos1, Vector3 pos2)
    {
        return math.abs(
            pos1.x - pos2.x +
            pos1.y - pos2.y +
            pos1.z - pos2.z
        );
    }
    public static float linearStep(float min, float max, float val)
    {
        return math.min(math.max((val - min) / (max - min), 0), 1);
    }
    public static float remap(float min1, float max1, float min2, float max2, float val)
    {
        float t = linearStep(min1, max1, val);
        return math.max(min2, math.min(t * (max2 - min2) + min2, max2));
    }
    public static float clamp01(float val)
    {
        return math.clamp(val,0.0f,1.0f);
    }
}