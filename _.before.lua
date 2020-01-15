-- _.before.lua
--
-- Creates a function that invokes func while it’s called less than n times.
-- Subsequent calls to the created function return the result of the 
-- last func invocation.
-- @usage local printBefore3 = _.before(3, print)
-- for i = 1, 10 do
--     printBefore3(i, 'ok')
-- end
-- -->  1   ok
-- -->  2   ok
-- -->  3   ok
--
-- @param n The number of calls at which func is no longer invoked.
-- @param func The function to restrict.
-- @return Returns the new restriced function.
_.before = function (n, func)
    local i = 1
    local result
    return function (...)
        if _.lte(i, n) then
            result = func(...)  
        end
        i = i + 1
        return result
    end
end
