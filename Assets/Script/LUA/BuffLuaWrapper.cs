using UnityEngine;
using GamePlay.Buff;
using GamePlay.Units;
using Status.damage;
using XLua;

namespace Lua
{
    /// <summary>
    /// Lua Buff 的 C# 包装器。
    /// 接口钩子桥接复用 CombatModifierLuaWrapper，本类只负责 Buff 专属字段的绑定与 Buff 生命周期。
    /// </summary>
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

            // AI 战术价值基准：Lua 侧可声明 AIValue 覆盖 C# 默认值
            AIValue = ReadOptionalFloat("AIValue");

            // 优先使用 Lua 侧配置的展示名，缺省回退到 BuffID
            if (string.IsNullOrEmpty(Name)) Name = ID;

            // 绑定描述（Lua 未配置时为空字符串，由 UI 层兜底）
            Description = LuaInstance.Get<string>("Description");
        }

        /// <summary>
        /// 安全读取可选 Lua bool 字段：未声明(nil)时兜底为 false，避免 InvalidCastException。
        /// 只有声明了该字段的 Lua Buff 才会返回 true，普通 Buff 无需配置。
        /// </summary>
        private bool ReadOptionalBool(string key)
        {
            return LuaInstance.Get<object>(key) is bool b && b;
        }

        /// <summary>
        /// 安全读取可选 Lua 数值字段（AIValue）：未声明或类型不符时保持 C# 默认值。
        /// </summary>
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
            // 保持原时序：先 Initialize（钳制层数），再派发 Lua OnApply
            Initialize(owner);
            base.OnApply(owner);
        }

        public override void OnStacksChanged()
        {
            _onStacksChanged?.Call(LuaInstance);
        }
    }
}
