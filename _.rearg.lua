-- _.rearg.lua
--
-- Creates a function that invokes func with arguments arranged according 
-- to the specified indexes where the argument value at the first index 
-- is provided as the first argument, the argument value at the second 
-- index is provided as the second argument, and so on.
-- @usage local rearged = _.rearg(function(a, b, c) 
--   return {a, b, c};
-- end, 2, 1, 3)
-- _.print(rearged('a', 'b', 'c'))
-- --> {"b", "a", "c"}
-- _.print(rearged('b', 'a', 'c'))
-- --> {"a", "b", "c"}
--
-- @param func The function to rearrange arguments for.
-- @param ... The arranged argument indexes, specified as individual 
-- indexes or arrays of indexes.
-- @return Returns the new function.
_.rearg = function (func, ...)
    local indexes = {}
    for i, v in ipairs(_.table(...)) do
        if _.isNumber(v) then 
            _.push(indexes, v) 
        elseif _.isTable(v) then
            for k2, v2 in _.iter(v) do
                if _.isNumber(v2) then _.push(indexes, v2) end    
            end
        end
    end
    return function(...)
        local args = _.table(...)
        local newArgs = {}
        for i, index in ipairs(indexes) do  
            _.push(newArgs, args[index]) 
        end
        if #indexes == 0 then
            return func(...)
        else
            return func(_.args(newArgs))
        end
    end
end
