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
    /// Every Lua call is contained: a script error is logged and degrades gracefully
    /// instead of throwing into the combat pipeline.
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
                    try
                    {
                        object v = LuaInstance.Get<object>("Priority");
                        if (v != null)
                        {
                            return Convert.ToInt32(v);
                        }
                    }
                    catch (Exception e)
                    {
                        Debug.LogError($"[LuaModifier '{ID}'] 读取 Priority 失败: {e.Message}");
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

            try
            {
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
            catch (Exception e)
            {
                Debug.LogError($"[LuaModifier '{ID}'] Bind 失败，该模组将不生效: {e.Message}");
            }
        }

        /// <summary>
        /// Escape hatch: calls any non-standard hook method on the Lua instance.
        /// </summary>
        public object CallLua(string method, params object[] args)
        {
            if (LuaInstance == null) return null;

            LuaFunction fn = null;
            try
            {
                fn = LuaInstance.Get<LuaFunction>(method);
            }
            catch (Exception e)
            {
                Debug.LogError($"[LuaModifier '{ID}'] 获取方法 '{method}' 失败: {e.Message}");
                return null;
            }
            if (fn == null) return null;

            object[] callArgs = new object[args.Length + 1];
            callArgs[0] = LuaInstance;
            Array.Copy(args, 0, callArgs, 1, args.Length);

            if (SafeLuaCall(method, () => fn.Call(callArgs), out object[] ret))
            {
                return ret != null && ret.Length > 0 ? ret[0] : null;
            }
            return null;
        }

        /// <summary>
        /// Runs a Lua call inside a guard. Script errors are logged and reported as
        /// failure; callers decide the degraded value (e.g. keep the damage unchanged).
        /// </summary>
        protected bool SafeLuaCall(string hook, Func<object[]> invoke, out object[] result)
        {
            result = null;
            if (LuaInstance == null) return false;
            try
            {
                result = invoke();
                return true;
            }
            catch (Exception e)
            {
                Debug.LogError($"[LuaModifier '{ID}'] hook '{hook}' 执行异常: {e.Message}\n{e.StackTrace}");
                return false;
            }
        }


        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            if (_onApply == null) return;
            SafeLuaCall(nameof(OnApply), () =>
            {
                LuaInstance.Set("_Owner", owner);
                return _onApply.Call(LuaInstance, owner);
            }, out _);
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);
            if (_onRemove == null) return;
            SafeLuaCall(nameof(OnRemove), () => _onRemove.Call(LuaInstance, owner), out _);
        }


        public override void OnTurnStart(MapUnit owner)
        {
            base.OnTurnStart(owner);
            if (_onTurnStart == null) return;
            SafeLuaCall(nameof(OnTurnStart), () => _onTurnStart.Call(LuaInstance, owner), out _);
        }

        public override void OnTurnEnd(MapUnit owner)
        {
            base.OnTurnEnd(owner);
            if (_onTurnEnd == null) return;
            SafeLuaCall(nameof(OnTurnEnd), () => _onTurnEnd.Call(LuaInstance, owner), out _);
        }


        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            if (_onBattleStart == null) return;
            SafeLuaCall(nameof(OnBattleStart), () => _onBattleStart.Call(LuaInstance, owner), out _);
        }

        public override void OnBattleEnd(MapUnit owner)
        {
            base.OnBattleEnd(owner);
            if (_onBattleEnd == null) return;
            SafeLuaCall(nameof(OnBattleEnd), () => _onBattleEnd.Call(LuaInstance, owner), out _);
        }


        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            if (_onOutgoingDamage == null) return;
            float current = damage;
            if (SafeLuaCall(nameof(OnOutgoingDamage), () => _onOutgoingDamage.Call(LuaInstance, current, info), out object[] ret)
                && ret != null && ret.Length > 0)
            {
                damage = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            if (_onIncomingDamage == null) return;
            float current = damage;
            if (SafeLuaCall(nameof(OnIncomingDamage), () => _onIncomingDamage.Call(LuaInstance, current, info), out object[] ret)
                && ret != null && ret.Length > 0)
            {
                damage = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnDefense(ref float value, DamageInfo info)
        {
            if (_onDefense == null) return;
            float current = value;
            if (SafeLuaCall(nameof(OnDefense), () => _onDefense.Call(LuaInstance, current, info), out object[] ret)
                && ret != null && ret.Length > 0)
            {
                value = Convert.ToSingle(ret[0]);
            }
        }

        public override void OnResistance(ref float value, DamageInfo info)
        {
            if (_onResistance == null) return;
            float current = value;
            if (SafeLuaCall(nameof(OnResistance), () => _onResistance.Call(LuaInstance, current, info), out object[] ret)
                && ret != null && ret.Length > 0)
            {
                value = Convert.ToSingle(ret[0]);
            }
        }


        public override void OnHit(DamageInfo info)
        {
            if (_onHit == null) return;
            SafeLuaCall(nameof(OnHit), () => _onHit.Call(LuaInstance, info), out _);
        }

        public override void OnBeHurt(DamageInfo info)
        {
            if (_onBeHurt == null) return;
            SafeLuaCall(nameof(OnBeHurt), () => _onBeHurt.Call(LuaInstance, info), out _);
        }

        public override void OnKill(DamageInfo info)
        {
            if (_onKill == null) return;
            SafeLuaCall(nameof(OnKill), () => _onKill.Call(LuaInstance, info), out _);
        }

        public override void OnDie(DamageInfo info)
        {
            if (_onDie == null) return;
            SafeLuaCall(nameof(OnDie), () => _onDie.Call(LuaInstance, info), out _);
        }

        public override void OnActionStart(MapUnit owner)
        {
            if (_onActionStart == null) return;
            SafeLuaCall(nameof(OnActionStart), () => _onActionStart.Call(LuaInstance, owner), out _);
        }

        public override void OnActionEnd(MapUnit owner)
        {
            if (_onActionEnd == null) return;
            SafeLuaCall(nameof(OnActionEnd), () => _onActionEnd.Call(LuaInstance, owner), out _);
        }

        public override void OnWait(MapUnit owner)
        {
            if (_onWait == null) return;
            SafeLuaCall(nameof(OnWait), () => _onWait.Call(LuaInstance, owner), out _);
        }

        public override void OnHeal(DamageInfo healInfo)
        {
            if (_onHeal == null) return;
            SafeLuaCall(nameof(OnHeal), () => _onHeal.Call(LuaInstance, healInfo), out _);
        }

        public override void OnBeHealed(DamageInfo healInfo)
        {
            if (_onBeHealed == null) return;
            SafeLuaCall(nameof(OnBeHealed), () => _onBeHealed.Call(LuaInstance, healInfo), out _);
        }
    }
}
