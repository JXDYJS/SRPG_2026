using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using Global;
using GamePlay.Units;
using Status.damage;

namespace GamePlay.Grid
{
    public interface ITileEventHandler
    {
        int Priority { get; }
        
        void OnUnitEnter(MapUnit unit);
        void OnUnitExit(MapUnit unit);
        void OnStay(MapUnit unit);
        void OnTileCreated(DamageInfo info);
        void OnTileDestroyed(DamageInfo info);
        
    }
    public class TileEffectSO : ScriptableObject
    {
        public int ThreatScore;
        public virtual void  onApply(MapUnit unit,MapObject mapObject){}
    }

}