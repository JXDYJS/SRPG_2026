local BuffBase = require("Buffs.BuffBase")
local log = require("Logger")
---@class BuffPreciseShot : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffPreciseShot = BuffBase.extends(BuffBase)

function BuffPreciseShot:ctor(stacks)
    self.super.ctor(self, stacks or 1)
    self.MaxStacks = 1
    self.DecayAtTurnStart = false
    self.MinDistance = 2
    self.BonusDamage = 2
end

function BuffPreciseShot:OnApply(owner) end

function BuffPreciseShot:OnTurnStart(owner) end

function BuffPreciseShot:OnOutgoingDamage(damage, info)
    if self._Owner and info.targetUnit then
        local dx = self._Owner.gridPosition.x - info.targetUnit.gridPosition.x
        local dz = self._Owner.gridPosition.z - info.targetUnit.gridPosition.z
        local dist = math.abs(dx) + math.abs(dz)
        if dist > self.MinDistance then
            damage = tonumber(damage) + self.Stacks * self.BonusDamage
        end
    end
    log.logd("BuffPreciseShot:OnOutgoingDamage: %s", tostring(damage))
    return damage
end

return BuffPreciseShot
