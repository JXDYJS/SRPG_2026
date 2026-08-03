using Status.state;
using Status.damage;

namespace Lua
{
    public static class LuaStatHelper
    {
        public static StatModifier NewStatModifier(float value, int type)
            => new StatModifier(value, (StatModType)type);
    }
}
