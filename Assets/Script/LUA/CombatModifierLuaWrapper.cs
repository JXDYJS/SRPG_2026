using System;
using UnityEngine;
using GamePlay.Units;
using Status.damage;
using XLua;
using Modifier;

namespace Lua
{
    /// <summary>
    /// Bridges any CombatModifier implementation to a Lua module; derived classes
    /// declare all hooks in their Lua base and only override the methods they need.
    /// </summary>
    public class CombatModifierLuaWrapper : CombatModifier
    {
        public LuaTable LuaInstance { get; set; }

        protected LuaFunction _onApply;
        protected LuaFunction _onRemove;
        protected LuaFunction _onTurnStart;
        protected LuaFunction _onTurnEnd;
        protected LuaFunction _onBattleStart;
        protected LuaFunction _onBattleEnd;
        protected LuaFunction _onOutgoingDamage;
        protected LuaFunction _onIncomingDamage;
        protected LuaFunction _onDefense;
        protected LuaFunction _onResistance;
        protected LuaFunction _onHit;
        protected LuaFunction _onBeHurt;
        protected LuaFunction _onKill;
        protected LuaFunction _onDie;
        protected LuaFunction _onActionStart;
        protected LuaFunction _onActionEnd;
        protected LuaFunction _onWait;
        protected LuaFunction _onHeal;
        protected LuaFunction _onBeHealed;

        public override int Priority
        {
            get
            {
                if (LuaInstance != null)
                {
                    object v = LuaInstance.Get<object>("Priority");
                    if (v != null)
                    {
                        try { return Convert.ToInt32(v); }
                        catch { /* ignore invalid value */ }
                    }
                }
                return base.Priority;
            }
        }

        /// <summary>
        /// Binds the Lua instance and caches all hook functions.
        /// Derived classes override this to bind their domain fields.
        /// </summary>
        public virtual void Bind(LuaTable instance)
        {
            LuaInstance = instance;
            LuaInstance.Set("_Owner", (object)null);
            LuaInstance.Set("_Wrapper", this);

            _onApply = instance.Get<LuaFunction>("OnApply");
            _onRemove = instance.Get<LuaFunction>("OnRemove");
            _onTurnStart = instance.Get<LuaFunction>("OnTurnStart");
            _onTurnEnd = instance.Get<LuaFunction>("OnTurnEnd");
            _onBattleStart = instance.Get<LuaFunction>("OnBattleStart");
            _onBattleEnd = instance.Get<LuaFunction>("OnBattleEnd");
            _onOutgoingDamage = instance.Get<LuaFunction>("OnOutgoingDamage");
            _onIncomingDamage = instance.Get<LuaFunction>("OnIncomingDamage");
            _onDefense = instance.Get<LuaFunction>("OnDefense");
            _onResistance = instance.Get<LuaFunction>("OnResistance");
            _onHit = instance.Get<LuaFunction>("OnHit");
            _onBeHurt = instance.Get<LuaFunction>("OnBeHurt");
            _onKill = instance.Get<LuaFunction>("OnKill");
            _onDie = instance.Get<LuaFunction>("OnDie");
            _onActionStart = instance.Get<LuaFunction>("OnActionStart");
            _onActionEnd = instance.Get<LuaFunction>("OnActionEnd");
            _onWait = instance.Get<LuaFunction>("OnWait");
            _onHeal = instance.Get<LuaFunction>("OnHeal");
            _onBeHealed = instance.Get<LuaFunction>("OnBeHealed");

            string luaName = instance.Get<string>("Name");
            if (!string.IsNullOrEmpty(luaName)) Name = luaName;
        }

        /// <summary>
        /// Escape hatch: calls any non-standard hook method on the Lua instance.
        /// </summary>
        public object CallLua(string method, params object[] args)
        {
            if (LuaInstance == null) return null;
            LuaFunction fn = LuaInstance.Get<LuaFunction>(method);
            if (fn == null) return null;

            object[] callArgs = new object[args.Length + 1];
            callArgs[0] = LuaInstance;
            Array.Copy(args, 0, callArgs, 1, args.Length);

            object[] ret = fn.Call(callArgs);
            return ret != null && ret.Length > 0 ? ret[0] : null;
        }


        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            if (LuaInstance == null) return;
            LuaInstance.Set("_Owner", owner);
            _onApply?.Call(LuaInstance, owner);
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);
            if (LuaInstance == null) return;
            _onRemove?.Call(LuaInstance, owner);
        }


        public override void OnTurnStart(MapUnit owner)
        {
            base.OnTurnStart(owner);
            if (LuaInstance == null) return;
            _onTurnStart?.Call(LuaInstance, owner);
        }

        public override void OnTurnEnd(MapUnit owner)
        {
            base.OnTurnEnd(owner);
            if (LuaInstance == null) return;
            _onTurnEnd?.Call(LuaInstance, owner);
        }


        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            if (LuaInstance == null) return;
            _onBattleStart?.Call(LuaInstance, owner);
        }

        public override void OnBattleEnd(MapUnit owner)
        {
            base.OnBattleEnd(owner);
            if (LuaInstance == null) return;
            _onBattleEnd?.Call(LuaInstance, owner);
        }


        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            if (LuaInstance != null && _onOutgoingDamage != null)
            {
                object[] ret = _onOutgoingDamage.Call(LuaInstance, damage, info);
                if (ret != null && ret.Length > 0) damage = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            if (LuaInstance != null && _onIncomingDamage != null)
            {
                object[] ret = _onIncomingDamage.Call(LuaInstance, damage, info);
                if (ret != null && ret.Length > 0) damage = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnDefense(ref float value, DamageInfo info)
        {
            if (LuaInstance != null && _onDefense != null)
            {
                object[] ret = _onDefense.Call(LuaInstance, value, info);
                if (ret != null && ret.Length > 0) value = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnResistance(ref float value, DamageInfo info)
        {
            if (LuaInstance != null && _onResistance != null)
            {
                object[] ret = _onResistance.Call(LuaInstance, value, info);
                if (ret != null && ret.Length > 0) value = Convert.ToSingle(ret[0]);
            }
        }


        public override void OnHit(DamageInfo info)
        {
            if (LuaInstance != null) _onHit?.Call(LuaInstance, info);
        }

        public override void OnBeHurt(DamageInfo info)
        {
            if (LuaInstance != null) _onBeHurt?.Call(LuaInstance, info);
        }

        public override void OnKill(DamageInfo info)
        {
            if (LuaInstance != null) _onKill?.Call(LuaInstance, info);
        }

        public override void OnDie(DamageInfo info)
        {
            if (LuaInstance != null) _onDie?.Call(LuaInstance, info);
        }

        public override void OnActionStart(MapUnit owner)
        {
            if (LuaInstance != null) _onActionStart?.Call(LuaInstance, owner);
        }

        public override void OnActionEnd(MapUnit owner)
        {
            if (LuaInstance != null) _onActionEnd?.Call(LuaInstance, owner);
        }

        public override void OnWait(MapUnit owner)
        {
            if (LuaInstance != null) _onWait?.Call(LuaInstance, owner);
        }

        public override void OnHeal(DamageInfo healInfo)
        {
            if (LuaInstance != null) _onHeal?.Call(LuaInstance, healInfo);
        }

        public override void OnBeHealed(DamageInfo healInfo)
        {
            if (LuaInstance != null) _onBeHealed?.Call(LuaInstance, healInfo);
        }
    }
}
