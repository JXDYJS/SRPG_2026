local BuffBase = require("Buffs.BuffBase")

---@class BuffBattleCry : BuffBase
---@diagnostic disable-next-line: undefined-field
local BuffBattleCry = BuffBase.extends(BuffBase)

function BuffBattleCry:ctor(stacks)
    self.super.ctor(self, stacks or 3)
    self.Name = "BattleCry"
    self.MaxStacks = 5
    self.DecayAtTurnStart = true
    self.Description = "Gain +{Stacks} ATK. Decays by 1 stack at the start of your turn."
end

---comment
---@param owner GamePlay.Units.MapUnit
function BuffBattleCry:OnApply(owner)
    local atk = owner.Character.statSystem.ATK
    self._atkMod = CS.Lua.LuaStatHelper.NewStatModifier(self.Stacks, 0)
    atk:addModifier(self._atkMod)
    atk:MarkDirty()
end

function BuffBattleCry:OnStacksChanged()
    if self._atkMod then
        self._atkMod.Value = self.Stacks
        if self._Owner and self._Owner.Character then
            self._Owner.Character.statSystem.ATK:MarkDirty()
        end
    end
end

function BuffBattleCry:OnRemove(owner)
    if self._atkMod and owner.Character then
        owner.Character.statSystem.ATK:removeModifier(self._atkMod)
        owner.Character.statSystem.ATK:MarkDirty()
        self._atkMod = nil
    end
end

return BuffBattleCry
