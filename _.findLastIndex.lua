-- _.findLastIndex.lua
--
-- This method is like [_.findIndex](#_.findIndex) except that it iterates over 
-- elements of collection from right to left. 
-- @usage _.print(_.findLastIndex({{a = 1}, {a = 2}, {a = 3}, {a = 2}, {a = 3}}, function(v)
--     return v.a == 3
-- end))
-- --> 5
--
-- @param array The array to search.
-- @param[opt=_.idenitity] predicate The function invoked per iteration.
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns the index of the found element, else -1.
_.findLastIndex = function (array, predicate, selfArg)
    return findIndex(array, predicate, selfArg, #array, -1)
end
