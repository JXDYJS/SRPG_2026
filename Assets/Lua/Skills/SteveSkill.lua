Skills = Skills or {}
Skills.Steve = Skills.Steve or {}
local log = require("Logger")

---@param ctx Lua.SkillEvalContext
---@return GamePlay.Skill.PhaseResult
function Skills.Steve.FearlessCharge_Phase2(ctx)
    local sourceUnit = ctx.Caster
    local sourcePos = sourceUnit.gridPosition
    local faceDir = CS.Global.FacingTool.FacingToDirection(sourceUnit.CurrentFacing)
    local towardPos = sourcePos + faceDir
    ---log.loge("towardPos:"..tostring(towardPos));
    local unitAtPos = CS.Managers.UnitManager.Instance:GetUnitAt(towardPos)

    local res = CS.GamePlay.Skill.PhaseResult(sourceUnit, ctx.TargetPosition)
    local Atk = sourceUnit.Character.statSystem.ATK:getValue()
    local baseDmg = math.floor(Atk * 1.3)

    if unitAtPos ~= nil and not CS.UnityEngine.Object.Equals(unitAtPos, nil) then
        local DamageInfo = CS.Status.damage.DamageInfo
        local CombatCalculator = CS.Status.damage.CombatCalculator

        local info = DamageInfo(baseDmg, sourceUnit, unitAtPos, CS.Global.DamageType.Physical, CS.Global.DamageMethod.Skill)
        CombatCalculator.CalculateDamage(info)
        unitAtPos:TakeDamage(info)

        local tr = CS.GamePlay.Skill.TargetResult(unitAtPos)
        local dr = CS.GamePlay.Skill.DamageRecord(info.damage, CS.Global.DamageType.Physical, false)
        tr.DamageRecords:Add(dr)
        tr.IsDead = unitAtPos.Character.statSystem.currentHP <= 0
        res.TargetResults:Add(tr)
    end

    return res
end
---@param ctx Lua.SkillEvalContext
---@return GamePlay.Skill.PhaseResult
function Skills.Steve.BattleCry_Phase2(ctx)
    local sourceUnit = ctx.Caster
    local res = CS.GamePlay.Skill.PhaseResult(sourceUnit, ctx.TargetPosition)
    if sourceUnit ~= nil and not CS.UnityEngine.Object.Equals(sourceUnit,nil) then
        sourceUnit.actionPoints = sourceUnit.actionPoints + 1;
    end
    return res
end