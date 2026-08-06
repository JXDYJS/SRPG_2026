local Class = require("Class")

---@class BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffBase = Class.extends(nil)
BuffBase.__isBuffBase = true

---@type string
BuffBase.ID = ""

---@type string
BuffBase.Name = ""

---@type string
BuffBase.Description = ""

---@type number
BuffBase.Stacks = 1

---@type number
BuffBase.MaxStacks = 5

---@type boolean
BuffBase.IsDebuff = false

---@type boolean
BuffBase.DecayAtTurnStart = true

---@param stacks number
function BuffBase:ctor(stacks)
    self.Stacks = stacks or 1
    self.MaxStacks = 5
    self.IsDebuff = false
    self.DecayAtTurnStart = true
    self.Description = ""
end

---@param owner any
function BuffBase:OnApply(owner) end

---@param owner any
function BuffBase:OnRemove(owner) end

---@param owner any
function BuffBase:OnTurnStart(owner)
    if self.DecayAtTurnStart then
        self.Stacks = self.Stacks - 1
        if self.Stacks <= 0 and self._Owner then
            self._Owner:RemoveBuff(self)
        end
    end
end

function BuffBase:OnStacksChanged() end

---@param damage number
---@param info any
---@return number
function BuffBase:OnOutgoingDamage(damage, info)
    return damage
end

---@param damage number
---@param info any
---@return number
function BuffBase:OnIncomingDamage(damage, info)
    return damage
end

return BuffBase
