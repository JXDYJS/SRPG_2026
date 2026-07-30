Skills = Skills or {}
Skills.Alex = Skills.Alex or {}

function Skills.Alex.PreciseSnipe_Phase2(ctx)
    local caster = ctx.Caster
    local targetPos = ctx.TargetPosition

    local target = CS.Managers.UnitManager.Instance:GetUnitAt(targetPos)
    if target == nil or CS.UnityEngine.Object.Equals(target, nil) then
        return CS.GamePlay.Skill.PhaseResult(caster, targetPos)
    end

    local atk = caster.Character.statSystem.ATK:getValue()
    local rawDmg = math.floor(atk * 1.5)

    local DamageInfo = CS.Status.damage.DamageInfo
    local CombatCalculator = CS.Status.damage.CombatCalculator
    local info = DamageInfo(rawDmg, caster, target, CS.Global.DamageType.Physical, CS.Global.DamageMethod.Skill)
    CombatCalculator.CalculateDamage(info)
    target:TakeDamage(info)

    local res = CS.GamePlay.Skill.PhaseResult(caster, targetPos)
    local tr = CS.GamePlay.Skill.TargetResult(target)
    tr.DamageRecords:Add(CS.GamePlay.Skill.DamageRecord(info.damage, CS.Global.DamageType.Physical, false))
    tr.IsDead = target.Character.statSystem.currentHP <= 0
    res.TargetResults:Add(tr)

    return res
end
