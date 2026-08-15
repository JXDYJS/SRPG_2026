local Class = require("Class")

---@class RelicBase
---@diagnostic disable-next-line: undefined-field
local RelicBase = Class.extends(nil)
RelicBase.__isRelicBase = true

---@type string
RelicBase.ID = ""

---@type string
RelicBase.Name = ""

function RelicBase:ctor() end

function RelicBase:OnApply(owner) end
function RelicBase:OnRemove(owner) end
function RelicBase:OnTurnStart(owner) end
function RelicBase:OnTurnEnd(owner) end
function RelicBase:OnBattleStart(owner) end
function RelicBase:OnBattleEnd(owner) end

---@param damage number
---@param info any
---@return number
function RelicBase:OnOutgoingDamage(damage, info)
    return damage
end

---@param damage number
---@param info any
---@return number
function RelicBase:OnIncomingDamage(damage, info)
    return damage
end

---@param value number
---@param info any
---@return number
function RelicBase:OnDefense(value, info)
    return value
end

---@param value number
---@param info any
---@return number
function RelicBase:OnResistance(value, info)
    return value
end

function RelicBase:OnHit(info) end
function RelicBase:OnBeHurt(info) end
function RelicBase:OnKill(info) end
function RelicBase:OnDie(info) end
function RelicBase:OnActionStart(owner) end
function RelicBase:OnActionEnd(owner) end
function RelicBase:OnWait(owner) end
function RelicBase:OnHeal(info) end
function RelicBase:OnBeHealed(info) end

return RelicBase
