using UnityEngine;
using Global;
using GamePlay.Grid;
using System.Collections.Generic;

namespace GamePlay.Units
{
    public class MapObject : MonoBehaviour,ITileEventHandler
    {
        public int Priority{get;}
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
        public List<TileEffectSO> OnEnterEffect;
        public List<TileEffectSO> OnExitEffect;
        public List<TileEffectSO> OnStayEffect;

        // ==================== ITileEventHandler 默认实现 ====================

        /// <summary>
        /// 当单位进入此格子时触发
        /// </summary>
        public virtual void OnUnitEnter(MapUnit unit)
        {
            // 默认实现：触发所有进入效果
            if (OnEnterEffect != null)
            {
                foreach (var effect in OnEnterEffect)
                {
                    effect?.onApply(unit, this);
                }
            }
        }

        /// <summary>
        /// 当单位离开此格子时触发
        /// </summary>
        public virtual void OnUnitExit(MapUnit unit)
        {
            // 默认实现：触发所有离开效果
            if (OnExitEffect != null)
            {
                foreach (var effect in OnExitEffect)
                {
                    effect?.onApply(unit, this);
                }
            }
        }

        /// <summary>
        /// 当单位停留在此格子时触发（每帧或每回合）
        /// </summary>
        public virtual void OnStay(MapUnit unit)
        {
            // 默认实现：触发所有停留效果
            if (OnStayEffect != null)
            {
                foreach (var effect in OnStayEffect)
                {
                    effect?.onApply(unit, this);
                }
            }
        }

        /// <summary>
        /// 当此格子被创建时触发
        /// </summary>
        public virtual void OnTileCreated(Status.damage.DamageInfo info)
        {
            // 默认实现：空操作，子类可重写
        }

        /// <summary>
        /// 当此格子被销毁时触发
        /// </summary>
        public virtual void OnTileDestroyed(Status.damage.DamageInfo info)
        {
            // 默认实现：空操作，子类可重写
        }
    }
}
