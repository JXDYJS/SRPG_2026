local BuffBase = require("Buffs.BuffBase")

---@class BuffDefPlus : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffDefPlus = BuffBase.extends(BuffBase)

---不衰减的加防buff
function BuffDefPlus:ctor(stacks)
    self.super.ctor(self, stacks or 1)
    self.Name = "DefenseUp"
    self.MaxStacks = 999
    self.DecayAtTurnStart = false
end

function BuffDefPlus:OnApply(owner)
    local def = owner.Character.statSystem.DEF
    self._defMod = CS.Lua.LuaStatHelper.NewStatModifier(self.Stacks, 0)
    def:addModifier(self._defMod)
    def:MarkDirty()
end

function BuffDefPlus:OnStacksChanged()
    if self._defMod then
        self._defMod.Value = self.Stacks
        if self._Owner and self._Owner.Character then
            self._Owner.Character.statSystem.DEF:MarkDirty()
        end
    end
end

function BuffDefPlus:OnRemove(owner)
    if self._defMod and owner.Character then
        owner.Character.statSystem.DEF:removeModifier(self._defMod)
        owner.Character.statSystem.DEF:MarkDirty()
        self._defMod = nil
    end
end

return BuffDefPlus
