local BuffBase = require("Buffs.BuffBase")

---@class BuffTaunt : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffTaunt = BuffBase.extends(BuffBase)

function BuffTaunt:ctor(stacks)
    self.super.ctor(self, stacks or 2)
    self.Name = "Taunt"
    self.MaxStacks = 5
    self.DecayAtTurnStart = true
    self.IsTaunt = true
    self.Description = "Forces enemies to target you. Decays by 1 stack at the start of your turn."
end

---@param owner GamePlay.Units.MapUnit
function BuffTaunt:OnApply(owner)
    if owner ~= nil and not CS.UnityEngine.Object.Equals(owner, nil) then
        local view = owner.View
        if view ~= nil and not CS.UnityEngine.Object.Equals(view, nil) then
            view:SetTauntTint(true)
        end
    end
end

---@param owner GamePlay.Units.MapUnit
function BuffTaunt:OnRemove(owner)
    if owner ~= nil and not CS.UnityEngine.Object.Equals(owner, nil) then
        local view = owner.View
        if view ~= nil and not CS.UnityEngine.Object.Equals(view, nil) then
            view:SetTauntTint(false)
        end
    end
end

return BuffTaunt
