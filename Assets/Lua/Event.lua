---@class Event
local Event = {}
Event.__index = Event

function Event.New()
    return setmetatable({ _listeners = {} }, Event)
end

---@param fn function
function Event:AddListener(fn)
    table.insert(self._listeners, fn)
end

---@param fn function
function Event:RemoveListener(fn)
    for i, v in ipairs(self._listeners) do
        if v == fn then table.remove(self._listeners, i); break end
    end
end

---@vararg any
function Event:Invoke(...)
    for _, fn in ipairs(self._listeners) do
        fn(...)
    end
end

function Event:Clear()
    self._listeners = {}
end

return Event
