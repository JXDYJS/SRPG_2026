using UnityEngine;
using GamePlay.Buff;
using GamePlay.Units;
using Status.damage;
using XLua;

namespace Lua
{
    /// <summary>C# wrapper for Lua Buffs: binds buff-specific fields and lifecycle.</summary>
    public class BuffLuaWrapper : BuffBase
    {
        private LuaFunction _onStacksChanged;
        private bool _isTaunt;

        public override bool IsTaunt => _isTaunt;

        public override void Bind(LuaTable instance)
        {
            base.Bind(instance);

            _onStacksChanged = instance.Get<LuaFunction>("OnStacksChanged");
            _isTaunt = ReadOptionalBool("IsTaunt");

            Stacks = LuaInstance.Get<int>("Stacks");
            MaxStacks = LuaInstance.Get<int>("MaxStacks");
            IsDebuff = LuaInstance.Get<bool>("IsDebuff");
            DecayAtTurnStart = LuaInstance.Get<bool>("DecayAtTurnStart");

            // Lua may declare AIValue to override the C# default
            AIValue = ReadOptionalFloat("AIValue");

            // Prefer the Lua-configured display name, falling back to the BuffID
            if (string.IsNullOrEmpty(Name)) Name = ID;

            Description = LuaInstance.Get<string>("Description");
        }

        /// <summary>Safely reads an optional Lua bool; nil defaults to false.</summary>
        private bool ReadOptionalBool(string key)
        {
            return LuaInstance.Get<object>(key) is bool b && b;
        }

        /// <summary>Safely reads an optional Lua number, keeping the C# default on mismatch.</summary>
        private float ReadOptionalFloat(string key)
        {
            object v = LuaInstance.Get<object>(key);
            if (v is float f) return f;
            if (v is int i) return i;
            if (v is double d) return (float)d;
            return AIValue;
        }

        public override void OnApply(MapUnit owner)
        {
            Initialize(owner);
            base.OnApply(owner);
        }

        public override void OnStacksChanged()
        {
            _onStacksChanged?.Call(LuaInstance);
        }
    }
}
