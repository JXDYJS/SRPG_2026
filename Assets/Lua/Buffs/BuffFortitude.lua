local BuffBase = require("Buffs.BuffBase")
local log = require("Logger")

---@class BuffFortitude : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffFortitude = BuffBase.extends(BuffBase)

function BuffFortitude:ctor(stacks)
    self.super.ctor(self, stacks or 1)
    self.Name = "Fortitude"
    self.MaxStacks = 1
    self.DecayAtTurnStart = false
    self.DefBonus = 2
    self.HpThreshold = 0.5
    self.Description = "When your HP drops below 50%, grant DefenseUp and remove this buff."
end

---@param damageInfo Status.damage.DamageInfo
function BuffFortitude:OnBeHurt(damageInfo)
    local unit = damageInfo.targetUnit
    if unit == nil or CS.UnityEngine.Object.Equals(unit, nil) then return end

    local maxHp = unit.Character.statSystem.maxHP:getValue()
    if maxHp <= 0 then return end
    local hp = unit.Character.statSystem.currentHP

    if hp <= maxHp * self.HpThreshold then
        CS.GamePlay.Buff.BuffManager.ApplyBuffToUnit(unit, "def_plus", self.DefBonus)
        if self._Wrapper then
            unit:RemoveBuff(self._Wrapper)
        end
    end
end

return BuffFortitude
