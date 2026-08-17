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

--- Load a Lua class module and instantiate it via the module's __call
--- metamethod. Any failure (bad module name, missing module, non-table result,
--- missing marker, ctor error) raises a Lua error that the caller's xpcall
--- (LuaUtil.SafeCall) will contain. Returns the instance table on success.
--- @param moduleName string   e.g. "Buffs.BuffBleeding"
--- @param marker string|nil   optional class marker (e.g. "__isBuffBase"); when
---                             non-nil the class must carry `marker == true`
--- @param ... any             args forwarded to the __call metamethod
function LuaUtil.SpawnClass(moduleName, marker, ...)
    if type(moduleName) ~= "string" then
        error("SpawnClass: moduleName must be a string, got " .. type(moduleName))
    end

    local cls = require(moduleName)
    if type(cls) ~= "table" then
        error("SpawnClass: require('" .. moduleName .. "') did not return a table")
    end
    if marker ~= nil and cls[marker] ~= true then
        error("SpawnClass: '" .. moduleName .. "' does not implement " .. tostring(marker))
    end

    return cls(...)
end