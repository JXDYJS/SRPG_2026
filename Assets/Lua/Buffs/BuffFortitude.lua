local BuffBase = require("Buffs.BuffBase")

---@class BuffFortitude : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffFortitude = BuffBase.extends(BuffBase)

function BuffFortitude:ctor(stacks)
    self.super.ctor(self, stacks or 1)
    self.MaxStacks = 1
    self.DecayAtTurnStart = false
    self.DefBonus = 2
    self.HpThreshold = 0.5
end

function BuffFortitude:OnApply(owner)
    self._defMod = CS.Lua.LuaStatHelper.NewStatModifier(0, 0)
    owner.Character.statSystem.DEF:addModifier(self._defMod)
    self:UpdateDefense()
end

function BuffFortitude:UpdateDefense()
    if not self._Owner or not self._Owner.Character then return end
    local currentHP = self._Owner.Character.statSystem.currentHP
    local maxHP = self._Owner.Character.statSystem.maxHP.getValue()
    if maxHP <= 0 then return end

    local hpPercent = currentHP / maxHP
    local newValue = 0
    if hpPercent <= self.HpThreshold then
        newValue = self.Stacks * self.DefBonus
    end

    if self._defMod.Value ~= newValue then
        self._defMod.Value = newValue
        self._Owner.Character.statSystem.DEF:MarkDirty()
    end
end

function BuffFortitude:OnIncomingDamage(damage, info)
    self:UpdateDefense()
    return damage
end

function BuffFortitude:OnRemove(owner)
    if self._defMod and owner.Character and owner.Character.statSystem.DEF then
        owner.Character.statSystem.DEF:removeModifier(self._defMod)
        owner.Character.statSystem.DEF:MarkDirty()
        self._defMod = nil
    end
end

return BuffFortitude
