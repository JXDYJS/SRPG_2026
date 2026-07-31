Skills = Skills or {}
Skills.Alex = Skills.Alex or {}
local log = require("Logger")

-- Phase1 瞄准聚气：评估期立即给施法者加 Strength，使 Phase2 能读取加成后的 ATK。
-- 注意：不能用标准 AddBuff 阶段，因为技能系统会先评估所有阶段、到表演阶段才真正应用 Buff，
-- 导致 Script 阶段读到的 ATK 不含本技能内刚加的 Buff。
function Skills.Alex.PreciseSnipe_Phase1(ctx)
    local caster = ctx.Caster
    if caster ~= nil and not CS.UnityEngine.Object.Equals(caster, nil) then
        CS.GamePlay.Buff.BuffManager.ApplyBuffToUnit(caster, "Strength", 1)
    end
    return CS.GamePlay.Skill.PhaseResult(caster, ctx.TargetPosition)
end

function Skills.Alex.PreciseSnipe_Phase2(ctx)
    local caster = ctx.Caster
    local targetPos = ctx.TargetPosition

    local target = CS.Managers.UnitManager.Instance:GetUnitAt(targetPos)
    if target == nil or CS.UnityEngine.Object.Equals(target, nil) then
        return CS.GamePlay.Skill.PhaseResult(caster, targetPos)
    end

    local atk = caster.Character.statSystem.ATK:getValue()
    local rawDmg = math.floor(atk * 1.5)
    log.loge("rawDmg:"..tostring(rawDmg));

    local DamageInfo = CS.Status.damage.DamageInfo
    local CombatCalculator = CS.Status.damage.CombatCalculator
    local info = DamageInfo(rawDmg, caster, target, CS.Global.DamageType.Physical, CS.Global.DamageMethod.Skill)---@type Status.damage.DamageInfo
    CombatCalculator.CalculateDamage(info)
    log.loge("Act Dmg:"..tostring(info.damage));
    target:TakeDamage(info)

    local res = CS.GamePlay.Skill.PhaseResult(caster, targetPos)
    local tr = CS.GamePlay.Skill.TargetResult(target)
    tr.DamageRecords:Add(CS.GamePlay.Skill.DamageRecord(info.damage, CS.Global.DamageType.Physical, false))
    tr.IsDead = target.Character.statSystem.currentHP <= 0
    res.TargetResults:Add(tr)

    return res
end
