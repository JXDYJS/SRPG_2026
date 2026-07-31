local BuffBase = require("Buffs.BuffBase")

---@class BuffStrength : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffStrength = BuffBase.extends(BuffBase)

function BuffStrength:ctor(stacks)
    self.super.ctor(self, stacks or 1)
    self.Name = "Strength"
    self.MaxStacks = 999
    self.DecayAtTurnStart = true
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
