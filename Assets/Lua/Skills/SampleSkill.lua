-- 全局表
Skills = Skills or {}

-- 瞬移技能：返回周围 2 格内的空地
function Skills.Teleport.Phase0_GetCastTiles(ctx)
    local caster = ctx.Caster
    local cx = caster.gridPosition.x
    local cy = caster.gridPosition.y
    local cz = caster.gridPosition.z
    local tiles = {}
    
    for dx = -2, 2 do
        for dz = -2, 2 do
            local pos = CS.UnityEngine.Vector3Int(cx + dx, cy, cz + dz)
            local block = CS.Managers.MapManager.Instance.logicalGrid:GetBlock(pos + CS.UnityEngine.Vector3Int.up)
            if block == 0 then
                table.insert(tiles, pos)
            end
        end
    end
    return tiles
end

-- 瞬移执行：移动角色
function Skills.Teleport.Phase0_Execute(ctx)
    local PhaseResult = CS.GamePlay.Skill.PhaseResult
    local result = PhaseResult(ctx.Caster, ctx.TargetPosition)
    
    local UndoSystem = CS.Command.UndoSystem
    UndoSystem.Instance:RegisterDirty(ctx.Caster)
    local oldPos = ctx.Caster.gridPosition
    ctx.Caster.gridPosition = ctx.TargetPosition
    CS.Managers.UnitManager.Instance:UpdateUnitPosition(ctx.Caster, oldPos)
    
    result.CasterMoved = true
    result.CasterEndPosition = ctx.TargetPosition
    return result
end

-- 火焰斩：180% ATK + 10% 目标最大HP
function Skills.FireSlash.Phase0_Execute(ctx)
    local PhaseResult = CS.GamePlay.Skill.PhaseResult
    local TargetResult = CS.GamePlay.Skill.TargetResult
    local DamageRecord = CS.GamePlay.Skill.DamageRecord
    local DamageType = CS.Global.DamageType
    local DamageMethod = CS.Global.DamageMethod
    local DamageInfo = CS.Status.damage.DamageInfo
    local CombatCalculator = CS.Status.damage.CombatCalculator
    
    local caster = ctx.Caster
    local atk = caster.Character.statSystem.ATK:getValue()
    local result = PhaseResult(caster, ctx.TargetPosition)
    
    local targets = {}
    local aoeRange = CS.GamePlay.Grid.AttackRangeSystem.GetAoERange3D(
        caster.gridPosition, ctx.TargetPosition, ctx.SkillData.Phases[ctx.PhaseIndex])
    for _, pos in ipairs(aoeRange) do
        local unit = CS.Managers.UnitManager.Instance:GetUnitAt(pos)
        if unit ~= nil and unit.Faction == CS.Global.FactionType.Enemy then
            table.insert(targets, unit)
        end
    end
    
    for _, target in ipairs(targets) do
        local dmg = atk * 1.8 + target.Character.statSystem.maxHP:getValue() * 0.1
        local info = DamageInfo(dmg, caster, target, DamageType.Physical, DamageMethod.Skill)
        CombatCalculator.CalculateDamage(info)
        target:TakeDamage(info)
        
        local tr = TargetResult(target)
        tr.DamageRecords:Add(DamageRecord(info.damage, DamageType.Physical, false))
        tr.IsDead = target.Character.statSystem.currentHP <= 0
        result.TargetResults:Add(tr)
    end
    
    return result
end
