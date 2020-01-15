-- _.takeWhile.lua
--
-- Creates a slice of array with elements taken from the beginning. Elements
-- are taken until predicate returns falsey. The predicate is bound to 
-- selfArg and invoked with three arguments: (value, index, array). 
-- @usage _.print(_.takeWhile({1, 2, 3, 4, 5, 6, 7, 8}, function(n)
--     return n < 5
-- end))
-- --> {1, 2, 3, 4}
--
-- @param array The array to query.
-- @param predicate The function invoked per iteration.
-- @param selfArg The self binding of predicate.
_.takeWhile = function (array, predicate, selfArg)
    return takeWhile(array, predicate, selfArg, 1, 1)
end
