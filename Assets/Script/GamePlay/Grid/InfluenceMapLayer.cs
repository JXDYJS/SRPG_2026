using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Managers;
using GamePlay.Units;
namespace Grid{
    public class InfluenceMapLayer
    {
        private Dictionary<Vector3Int, float> _gridScores = new Dictionary<Vector3Int, float>();

        public void Clear() => _gridScores.Clear();

        public void AddScore(Vector3Int position, float score)
        {
            if (_gridScores.ContainsKey(position))
                _gridScores[position] += score;
            else
                _gridScores.Add(position, score);
        }

        // Includes the block's own threat score.
        public float GetScore(Vector3Int position)
        {
            float score = _gridScores.TryGetValue(position, out float s) ? s : 0f;
            if (MapManager.Instance != null &&
                MapManager.Instance.blocks.TryGetValue(position, out MapObject mapObj))
            {
                score += mapObj.GetThreatScore();
            }
            return score;
        }

        // For debug visualization.
        public IEnumerable<KeyValuePair<Vector3Int, float>> GetAllScores()
        {
            return _gridScores;
        }
    }
}