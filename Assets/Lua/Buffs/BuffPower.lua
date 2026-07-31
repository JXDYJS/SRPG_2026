local BuffBase = require("Buffs.BuffBase")
local BuffStrength = require("Buffs.BuffStrength")

---@class BuffPower : BuffStrength
---@diagnostic disable-next-line: undefined-field
local BuffPower = BuffBase.extends(BuffStrength)
---跟strength的区别是不会掉层
function BuffPower:ctor(stacks)
    self.super.ctor(self, stacks or 1)
    self.Name = "力量强化"
    self.DecayAtTurnStart = false
end

return BuffPower
