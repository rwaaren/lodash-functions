-- _.modArgs.lua
--
-- Creates a function that runs each argument through a corresponding 
-- transform function.
-- @usage local increment = function(...) 
--     return _.args(_.map(_.table(...), function(n)
--         return n + 1
--     end))
-- end
-- local pow = function(...) 
--     return _.args(_.map(_.table(...), function(n)
--         return n * n
--     end))
-- end
-- local modded = _.modArgs(function(...)
--     print(...)
-- end, {increment, increment}, pow)
-- modded(0, 1, 2)
-- -->  4   9   16
--
-- @param func The function to wrap
-- @param ... The functions to transform arguments, specified as 
-- individual functions or arrays of functions.
-- @return Returns the new function.
_.modArgs = function (func, ...)
    local transforms = {}
    for i, v in ipairs( _.table(...)) do
        if _.isFunction(v) then 
            _.push(transforms, v) 
        elseif _.isTable(v) then
            for k2, v2 in _.iter(v) do
                if _.isFunction(v2) then _.push(transforms, v2) end    
            end
        end
    end
    return function(...)
        local args
        for i, transform in ipairs(transforms) do
            if _.isNil(args) then
                args = _.table(transform(...))
            else
                args = _.table(transform(_.args(args)))
            end
        end
        if _.isNil(args) then
            return func(...)
        else
            return func(_.args(args))
        end
    end
end
