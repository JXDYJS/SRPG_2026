local RelicBase = require("Relic.RelicBase")

---@class RelicStarShard : RelicBase
---@diagnostic disable-next-line: undefined-field
local RelicStarShard = RelicBase.extends(RelicBase)

---造成的所有伤害 +2
---@param damage number
---@param info any
---@return number
function RelicStarShard:OnOutgoingDamage(damage, info)
    return damage + 2
end

return RelicStarShard
