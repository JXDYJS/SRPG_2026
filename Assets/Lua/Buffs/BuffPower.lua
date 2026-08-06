local BuffBase = require("Buffs.BuffBase")
local BuffStrength = require("Buffs.BuffStrength")

---@class BuffPower : BuffStrength
---@diagnostic disable-next-line: undefined-field
local BuffPower = BuffBase.extends(BuffStrength)
---跟strength的区别是不会掉层
function BuffPower:ctor(stacks)
    -- 显式调用直接父类，避免 self.super 在实例上解析到叶子类自身
    BuffStrength.ctor(self, stacks or 1)
    self.Name = "Power"
    self.DecayAtTurnStart = false
    self.Description = "Gain +{Stacks} ATK. This buff never decays."
end

return BuffPower
