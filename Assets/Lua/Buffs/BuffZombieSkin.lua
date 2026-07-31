local BuffBase = require("Buffs.BuffBase")

---@class BuffZombieSkin : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffZombieSkin = BuffBase.extends(BuffBase)

function BuffZombieSkin:ctor(stacks)
    self.super.ctor(self, stacks or 1)
    self.Name = "僵尸皮肤"
    self.MaxStacks = 1
    self.DecayAtTurnStart = false
    self.DamageReduction = 2
end

function BuffZombieSkin:OnApply(owner) end

function BuffZombieSkin:OnTurnStart(owner) end

function BuffZombieSkin:OnIncomingDamage(damage, info)
    if self._Owner and not self._Owner.hasMoved then
        local reduction = self.Stacks * self.DamageReduction
        damage = math.max(0, damage - reduction)
    end
    return damage
end

return BuffZombieSkin
