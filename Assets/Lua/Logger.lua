local Debug = CS.UnityEngine.Debug

local Logger = {}

function Logger.logd(...)
    Debug.Log(string.format(...))
end

function Logger.logw(...)
    Debug.LogWarning(string.format(...))
end

function Logger.loge(...)
    Debug.LogError(string.format(...))
end

return Logger
