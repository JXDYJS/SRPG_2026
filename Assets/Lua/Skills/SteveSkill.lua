Skills = Skills or {}
Skills.Steve = Skills.Steve or {}

---@param ctx Lua.SkillEvalContext
---@return GamePlay.Skill.PhaseResult
function Skills.Steve.FearlessCharge_Phase2(ctx)
    local sourceUnit = ctx.Caster
    local sourcePos = sourceUnit.gridPosition
    local faceDir = CS.Global.FacingTool.FacingToDirection(sourceUnit.CurrentFacing)
    local towardPos = sourcePos + faceDir
    local unitAtPos = CS.Managers.UnitManager.Instance:GetUnitAt(towardPos)

    local res = CS.GamePlay.Skill.PhaseResult(sourceUnit, ctx.TargetPosition)
    local Atk = sourceUnit.Character.statSystem.ATK:getValue()
    local damage = math.floor(Atk * 1.3)

    if unitAtPos ~= nil and not CS.UnityEngine.Object.Equals(unitAtPos, nil) then
        local tr = CS.GamePlay.Skill.TargetResult(unitAtPos)

        local dr = CS.GamePlay.Skill.DamageRecord(damage, CS.Global.DamageType.Physical, false)
        tr.DamageRecords:Add(dr)
        tr.IsDead = unitAtPos.Character.statSystem.currentHP <= 0

        res.TargetResults:Add(tr)
    end

    return res
end