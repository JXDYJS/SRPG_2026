using System.Reflection;
using GamePlay.Units;
using UnityEngine;

namespace GamePlay.Grid
{
    public class ReflectedTileEffectSO : TileEffectSO
    {
        private MethodInfo _method;
        private object[] _args;

        public void Setup(MethodInfo method, object[] args)
        {
            _method = method;
            _args = args ?? new object[0];
        }

        public override void onApply(MapUnit unit, MapObject mapObject)
        {
            if (_method == null) return;

            var callArgs = new object[_args.Length + 2];
            callArgs[0] = unit;
            callArgs[1] = mapObject;
            _args.CopyTo(callArgs, 2);

            _method.Invoke(null, callArgs);
        }
    }
}
