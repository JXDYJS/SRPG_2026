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

            return TryCallLua(method, fn, out object ret, args) ? ret : null;
        }

        /// <summary>
        /// Runs a hook through LuaUtil.SafeCall (xpcall) so a script error degrades
        /// to a logged failure instead of throwing into the combat pipeline. On
        /// success result carries the first Lua return value; on failure the error
        /// message. Returns false when the hook did not run or errored.
        /// </summary>
        protected bool TryCallLua(string hookName, LuaFunction hook, out object result, params object[] args)
        {
            result = null;
            if (hook == null || LuaInstance == null) return false;

            bool ok = LuaManager.Instance.SafeCall(hook, LuaInstance, out object ret, args);
            if (ok)
            {
                result = ret;
            }
            else
            {
                Debug.LogError($"[LuaModifier '{ID}'] hook '{hookName}' 执行异常: {ret ?? "unknown error"}");
            }
            return ok;
        }


        public override void OnApply(MapUnit owner)
        {
            base.OnApply(owner);
            if (_onApply == null) return;
            LuaInstance.Set("_Owner", owner);
            TryCallLua(nameof(OnApply), _onApply, out _, owner);
        }

        public override void OnRemove(MapUnit owner)
        {
            base.OnRemove(owner);
            if (_onRemove == null) return;
            TryCallLua(nameof(OnRemove), _onRemove, out _, owner);
        }


        public override void OnTurnStart(MapUnit owner)
        {
            base.OnTurnStart(owner);
            if (_onTurnStart == null) return;
            TryCallLua(nameof(OnTurnStart), _onTurnStart, out _, owner);
        }

        public override void OnTurnEnd(MapUnit owner)
        {
            base.OnTurnEnd(owner);
            if (_onTurnEnd == null) return;
            TryCallLua(nameof(OnTurnEnd), _onTurnEnd, out _, owner);
        }


        public override void OnBattleStart(MapUnit owner)
        {
            base.OnBattleStart(owner);
            if (_onBattleStart == null) return;
            TryCallLua(nameof(OnBattleStart), _onBattleStart, out _, owner);
        }

        public override void OnBattleEnd(MapUnit owner)
        {
            base.OnBattleEnd(owner);
            if (_onBattleEnd == null) return;
            TryCallLua(nameof(OnBattleEnd), _onBattleEnd, out _, owner);
        }


        public override void OnOutgoingDamage(ref float damage, DamageInfo info)
        {
            if (_onOutgoingDamage == null) return;
            if (TryCallLua(nameof(OnOutgoingDamage), _onOutgoingDamage, out object ret, damage, info) && ret != null)
            {
                damage = Convert.ToSingle(ret);
            }
        }

        public override void OnIncomingDamage(ref float damage, DamageInfo info)
        {
            if (_onIncomingDamage == null) return;
            if (TryCallLua(nameof(OnIncomingDamage), _onIncomingDamage, out object ret, damage, info) && ret != null)
            {
                damage = Convert.ToSingle(ret);
            }
        }

        public override void OnDefense(ref float value, DamageInfo info)
        {
            if (_onDefense == null) return;
            if (TryCallLua(nameof(OnDefense), _onDefense, out object ret, value, info) && ret != null)
            {
                value = Convert.ToSingle(ret);
            }
        }

        public override void OnResistance(ref float value, DamageInfo info)
        {
            if (_onResistance == null) return;
            if (TryCallLua(nameof(OnResistance), _onResistance, out object ret, value, info) && ret != null)
            {
                value = Convert.ToSingle(ret);
            }
        }


        public override void OnHit(DamageInfo info)
        {
            if (_onHit == null) return;
            TryCallLua(nameof(OnHit), _onHit, out _, info);
        }

        public override void OnBeHurt(DamageInfo info)
        {
            if (_onBeHurt == null) return;
            TryCallLua(nameof(OnBeHurt), _onBeHurt, out _, info);
        }

        public override void OnKill(DamageInfo info)
        {
            if (_onKill == null) return;
            TryCallLua(nameof(OnKill), _onKill, out _, info);
        }

        public override void OnDie(DamageInfo info)
        {
            if (_onDie == null) return;
            TryCallLua(nameof(OnDie), _onDie, out _, info);
        }

        public override void OnActionStart(MapUnit owner)
        {
            if (_onActionStart == null) return;
            TryCallLua(nameof(OnActionStart), _onActionStart, out _, owner);
        }

        public override void OnActionEnd(MapUnit owner)
        {
            if (_onActionEnd == null) return;
            TryCallLua(nameof(OnActionEnd), _onActionEnd, out _, owner);
        }

        public override void OnWait(MapUnit owner)
        {
            if (_onWait == null) return;
            TryCallLua(nameof(OnWait), _onWait, out _, owner);
        }

        public override void OnHeal(DamageInfo healInfo)
        {
            if (_onHeal == null) return;
            TryCallLua(nameof(OnHeal), _onHeal, out _, healInfo);
        }

        public override void OnBeHealed(DamageInfo healInfo)
        {
            if (_onBeHealed == null) return;
            TryCallLua(nameof(OnBeHealed), _onBeHealed, out _, healInfo);
        }
    }
}
