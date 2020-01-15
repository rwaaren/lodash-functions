-- _.negate.lua
--
-- Creates a function that negates the result of the predicate func. 
-- The func predicate is invoked with arguments of the created function.
-- @usage local isEven = function (n)
--     return n % 2 == 0
-- end
-- local isOdd = _.negate(isEven)
-- _.print(_.filter({1, 2, 3, 4, 5, 6}, isEven))
-- --> {2, 4, 6}
-- _.print(_.filter({1, 2, 3, 4, 5, 6}, isOdd))
-- --> {1, 3, 5}
-- 
-- @param func The preadicate to negate.
-- @return Returns the new function
_.negate = function (func)
    return function(...)
        return not func(...)
    end
end
