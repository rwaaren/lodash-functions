-- _.after.lua
--
--- Function
-- @section Function
-- This method creates a function that invokes func once it’s called n
--  or more times.
-- @usage local printAfter3 = _.after(3, print)
-- for i = 1, 5 do
--    printAfter3('done', i)    
-- end 
-- --> done 4
-- --> done 5
-- 
-- @param n The number of calls before func invoked.
-- @param func The function to restrict.
-- @return Returns the new restricted function.
_.after = function(n, func)
    local i = 1
    return function(...)
        if _.gt(i, n) then
            return func(...)
        end
        i = i + 1
    end
end
