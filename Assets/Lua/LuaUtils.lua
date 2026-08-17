LuaUtil = LuaUtil or {}

local function errorHandler(err)
    return debug.traceback("[Lua Error]: " .. tostring(err), 2)
end

--- @param func function 
--- @param selfObj table 
--- @param ... any 
function LuaUtil.SafeCall(func, selfObj, ...)
    if type(func) ~= "function" then
        print("[SafeCall Error] 传入的不是函数")
        return false, "Target is not a function"
    end

    local args = {...}
    local argCount = select("#", ...)

    local function runner()
        if selfObj then
            return func(selfObj, table.unpack(args, 1, argCount))
        else
            return func(table.unpack(args, 1, argCount))
        end
    end
    return xpcall(runner, errorHandler)
end