using UnityEngine;
using Global;
using GamePlay.Grid;
using System.Collections.Generic;

namespace GamePlay.Units
{
    public class MapObject : MonoBehaviour,ITileEventHandler
    {
        public int Priority{get;}
        public string blockConfigId;
        public string prefabId;
        public BlockType type = BlockType.Solid;
        public bool isWalkable = true;
        public float XCellSize = 1.0f;
        public float YCellSize = 1.0f;
        public float ZCellSize = 1.0f;
        public int XRound = 0;
        public int ZRound = 0;
        public int YRound = 0;
        
        // Stairs-only: assumed height each step raises the unit (e.g. 0.5 or 1.0).
        public float heightOffset = 0.5f;
        public List<TileEffectSO> OnEnterEffect;
        public List<TileEffectSO> OnExitEffect;
        public List<TileEffectSO> OnStayEffect;

        void Awake()
        {
            if (string.IsNullOrEmpty(blockConfigId)) return;

            var cfg = BlockConfigManager.Instance?.Get(blockConfigId);
            if (cfg == null) return;

            type = cfg.Type;
            isWalkable = cfg.IsWalkable;
            XCellSize = cfg.XCellSize;
            YCellSize = cfg.YCellSize;
            ZCellSize = cfg.ZCellSize;
            heightOffset = cfg.HeightOffset;
            OnEnterEffect = cfg.OnEnterEffects;
            OnExitEffect = cfg.OnExitEffects;
            OnStayEffect = cfg.OnStayEffects;
        }


        public virtual void OnUnitEnter(MapUnit unit)
        {
            if (OnEnterEffect != null)
            {
                foreach (var effect in OnEnterEffect)
                {
                    effect?.onApply(unit, this);
                }
            }
        }

        public virtual void OnUnitExit(MapUnit unit)
        {
            if (OnExitEffect != null)
            {
                foreach (var effect in OnExitEffect)
                {
                    effect?.onApply(unit, this);
                }
            }
        }

        public virtual void OnStay(MapUnit unit)
        {
            if (OnStayEffect != null)
            {
                foreach (var effect in OnStayEffect)
                {
                    effect?.onApply(unit, this);
                }
            }
        }

        public virtual void OnTileCreated(Status.damage.DamageInfo info)
        {
        }

        public virtual void OnTileDestroyed(Status.damage.DamageInfo info)
        {
        }
        public virtual int GetThreatScore()
        {
            int score = 0;
            foreach (var effect in OnEnterEffect)
            {
                score += effect.ThreatScore;
            }
            foreach (var effect in OnExitEffect)
            {
                score -= effect.ThreatScore;
            }
            foreach (var effect in OnStayEffect)
            {
                score += effect.ThreatScore;
            }
            return score;
        }
    }
}
