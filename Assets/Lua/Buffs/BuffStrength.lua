local BuffBase = require("Buffs.BuffBase")

---@class BuffStrength : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffStrength = BuffBase.extends(BuffBase)

function BuffStrength:ctor(stacks)
    -- 直接引用父类而非 self.super：实例的 metatable 指向叶子类，
    -- self.super 在二级继承（如 BuffPower）下会再次解析回自身导致无限递归
    BuffBase.ctor(self, stacks or 1)
    self.Name = "Strength"
    self.MaxStacks = 999
    self.DecayAtTurnStart = true
    self.Description = "Gain +{Stacks} ATK. Decays by 1 stack at the start of your turn."
end

function BuffStrength:OnApply(owner)
    local atk = owner.Character.statSystem.ATK
    self._atkMod = CS.Lua.LuaStatHelper.NewStatModifier(self.Stacks, 0)
    atk:addModifier(self._atkMod)
    atk:MarkDirty()
end

function BuffStrength:OnStacksChanged()
    if self._atkMod then
        self._atkMod.Value = self.Stacks
        if self._Owner and self._Owner.Character then
            self._Owner.Character.statSystem.ATK:MarkDirty()
        end
    end
end

function BuffStrength:OnRemove(owner)
    if self._atkMod and owner.Character then
        owner.Character.statSystem.ATK:removeModifier(self._atkMod)
        owner.Character.statSystem.ATK:MarkDirty()
        self._atkMod = nil
    end
end

return BuffStrength
