---@class Class
local Class = {}

---创建一个继承自 base 的新类
---@param base table|nil
---@return table
function Class.extends(base)
    local cls = {}
    cls.__index = cls
    cls.super = base

    setmetatable(cls, {
        __index = base or Class,
        __call = function(_, ...)
            local obj = setmetatable({}, cls)
            if cls.ctor then cls.ctor(obj, ...) end
            return obj
        end,
    })

    return cls
end

return Class
