-- _.dropRightWhile.lua
--
-- Creates a slice of array excluding elements dropped from the end. 
-- Elements are dropped until predicate returns falsey.
-- @usage _.print(_.dropRightWhile({1, 5, 2, 3, 4, 5, 4, 4}, function(n)
--    return n > 3
-- end))
-- --> {1, 5, 2, 3}
--
-- @param array The array to query.
-- @param[opt=_.identity] predicate The function to invoked per iteratin.
-- @param[opt] selfArg The self binding of predicate.
-- @return Return the slice of array.
_.dropRightWhile = function(array, predicate, selfArg)
    return dropWhile(array, predicate, selfArg, #array, -1, true)
end
