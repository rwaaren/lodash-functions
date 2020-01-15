-- _.dropWhile.lua
--
-- Creates a slice of array excluding elements dropped from the beginning. 
-- Elements are dropped until predicate returns falsey.
-- @usage _.print(_.dropWhile({1, 2, 2, 3, 4, 5, 4, 4, 2}, function(n)
--    return n < 3
-- end))
-- --> {3, 4, 5, 4, 4, 2}
--
-- @param array The array to query.
-- @param[opt=_.idenitity] predicate The function invoked per iteration.
-- @param[opt] selfArg The self binding of predicate.
-- @return Return the slice of array.
_.dropWhile = function(array, predicate, selfArg)
    return dropWhile(array, predicate, selfArg, 1, 1)
end
