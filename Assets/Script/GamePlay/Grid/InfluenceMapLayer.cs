using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Grid{
    public class InfluenceMapLayer
    {
        private Dictionary<Vector3Int, float> _gridScores = new Dictionary<Vector3Int, float>();

        // 清空整张图
        public void Clear() => _gridScores.Clear();

        // 叠加分数 (比如多个玩家都能打到这个格子，威胁值累加)
        public void AddScore(Vector3Int position, float score)
        {
            if (_gridScores.ContainsKey(position))
                _gridScores[position] += score;
            else
                _gridScores.Add(position, score);
        }

        // 获取分数
        public float GetScore(Vector3Int position)
        {
            return _gridScores.TryGetValue(position, out float score) ? score : 0f;
        }

        // 枚举所有有分数的格子（用于调试可视化）
        public IEnumerable<KeyValuePair<Vector3Int, float>> GetAllScores()
        {
            return _gridScores;
        }
    }
}