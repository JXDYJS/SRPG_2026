using System;
using UnityEngine;
using GamePlay.Units;
using GamePlay.Buff;
using Status.damage;
using XLua;

namespace Lua
{
    public class BuffLuaWrapper : BuffBase
    {
        public LuaTable LuaInstance { get; set; }

        private LuaFunction _onApply;
        private LuaFunction _onRemove;
        private LuaFunction _onTurnStart;
        private LuaFunction _onOutgoingDamage;
        private LuaFunction _onIncomingDamage;
        private LuaFunction _onStacksChanged;

        public void Bind(LuaTable instance)
        {
            LuaInstance = instance;
            LuaInstance.Set("_Owner", (object)null);

            _onApply = instance.Get<LuaFunction>("OnApply");
            _onRemove = instance.Get<LuaFunction>("OnRemove");
            _onTurnStart = instance.Get<LuaFunction>("OnTurnStart");
            _onOutgoingDamage = instance.Get<LuaFunction>("OnOutgoingDamage");
            _onIncomingDamage = instance.Get<LuaFunction>("OnIncomingDamage");
            _onStacksChanged = instance.Get<LuaFunction>("OnStacksChanged");

            Stacks = LuaInstance.Get<int>("Stacks");
            MaxStacks = LuaInstance.Get<int>("MaxStacks");
            IsDebuff = LuaInstance.Get<bool>("IsDebuff");
            DecayAtTurnStart = LuaInstance.Get<bool>("DecayAtTurnStart");
        }

        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            Initialize(owner);
            LuaInstance.Set("_Owner", owner);
            _onApply?.Call(LuaInstance, owner);
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);
            _onRemove?.Call(LuaInstance, owner);
        }

        public override void OnTurnStart(MapUnit owner)
        {
            _onTurnStart?.Call(LuaInstance, owner);
        }

        public override void OnOutgoingDamage(ref float damage, DamageInfo damageInfo)
        {
            if (_onOutgoingDamage != null)
            {
                object[] ret = _onOutgoingDamage.Call(LuaInstance, damage, damageInfo);
                if (ret != null && ret.Length > 0)
                    damage = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo damageInfo)
        {
            if (_onIncomingDamage != null)
            {
                object[] ret = _onIncomingDamage.Call(LuaInstance, damage, damageInfo);
                if (ret != null && ret.Length > 0)
                    damage = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnStacksChanged()
        {
            _onStacksChanged?.Call(LuaInstance);
        }
    }
}
