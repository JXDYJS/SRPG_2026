Skills = Skills or {}
Skills.Ari = Skills.Ari or {}
local log = require("Logger")

-- Phase1 背水一击：1.6*ATK 物理伤害（走 CombatCalculator 物理管线减 DEF）。
-- 若施法者处于假死状态（存在 undying_will buff），额外附加 层数*2 的真实伤害。
---@param ctx Lua.SkillEvalContext
---@return GamePlay.Skill.PhaseResult
function Skills.Ari.LastStand_Phase1(ctx)
    local caster = ctx.Caster
    local targetPos = ctx.TargetPosition

    local target = CS.Managers.UnitManager.Instance:GetUnitAt(targetPos)
    if target == nil or CS.UnityEngine.Object.Equals(target, nil) then
        return CS.GamePlay.Skill.PhaseResult(caster, targetPos)
    end

    local atk = caster.Character.statSystem.ATK:getValue()
    local rawDmg = math.floor(atk * 1.6)
    --log.logd("LastStand rawDmg:"..tostring(rawDmg))

    local DamageInfo = CS.Status.damage.DamageInfo
    local CombatCalculator = CS.Status.damage.CombatCalculator
    local info = DamageInfo(rawDmg, caster, target, CS.Global.DamageType.Physical, CS.Global.DamageMethod.Skill)
    CombatCalculator.CalculateDamage(info)
    --log.logd("LastStand Act Dmg:"..tostring(info.damage))
    target:TakeDamage(info)

    local res = CS.GamePlay.Skill.PhaseResult(caster, targetPos)
    local tr = CS.GamePlay.Skill.TargetResult(target)
    tr.DamageRecords:Add(CS.GamePlay.Skill.DamageRecord(info.damage, CS.Global.DamageType.Physical, false))

    -- 假死加成：施法者处于假死状态（undying_will）时，额外真实伤害 = 层数 * 2
    local undying = CS.GamePlay.Buff.BuffManager.FindBuffByID(caster, "undying_will")
    if undying ~= nil and undying.Stacks > 0 then
        local extra = undying.Stacks * 2
        local trueInfo = DamageInfo(extra, caster, target, CS.Global.DamageType.True, CS.Global.DamageMethod.Skill)
        CombatCalculator.CalculateDamage(trueInfo)
        target:TakeDamage(trueInfo)
        tr.DamageRecords:Add(CS.GamePlay.Skill.DamageRecord(trueInfo.damage, CS.Global.DamageType.True, false))
    end

    tr.IsDead = target.Character.statSystem.currentHP <= 0
    res.TargetResults:Add(tr)

    return res
end
