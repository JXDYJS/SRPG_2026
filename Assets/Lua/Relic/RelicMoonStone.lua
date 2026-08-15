local RelicBase = require("Relic.RelicBase")

---@class RelicMoonStone : RelicBase
---@diagnostic disable-next-line: undefined-field
local RelicMoonStone = RelicBase.extends(RelicBase)

---每回合开始回复 3 点生命
function RelicMoonStone:OnTurnStart(owner)
    if owner == nil or owner.Character == nil then return end
    local stat = owner.Character.statSystem
    stat.currentHP = math.min(stat.maxHP:getValue(), stat.currentHP + 3)
end

return RelicMoonStone
