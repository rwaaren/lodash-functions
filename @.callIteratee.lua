-- @.callIteratee.lua
--
@.callIteratee = function (predicate, selfArg, ...) 
    local result
    local predicate = predicate or _.identity
    if selfArg then
        result = predicate(selfArg, ...)
    else
        result = predicate(...)
    end
    return result
end
