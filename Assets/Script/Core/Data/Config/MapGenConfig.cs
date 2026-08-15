using UnityEngine;

namespace Core.Data
{
    /// <summary>
    /// Node map random generation settings. Type probabilities are normalized
    /// at generation time, so any combination summing to ~1 works; the assert
    /// below just catches accidental misconfiguration early.
    /// </summary>
    public class MapGenConfigData
    {
        [Header("层数")]
        public int minLayerCount = 8;
        public int maxLayerCount = 10;

        [Header("每层节点数 (槽位上限取 ViewConfig.mapNodeMaxPerLayer)")]
        public int minNodePerLayer = 3;

        [Header("节点类型概率")]
        public float battleProbability = 0.4f;
        public float shopProbability = 0.2f;
        public float eventProbability = 0.4f;

        public MapGenConfigData()
        {
            float sum = battleProbability + shopProbability + eventProbability;
            Debug.Assert(Mathf.Abs(sum - 1f) < 0.001f,
                $"地图节点类型概率之和应约为 1，当前 {sum}");
        }
    }
}
