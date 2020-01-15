-- _.findIndex.lua
--
-- This method is like [_.find](#_.find) except that it returns the index of the 
-- first element predicate returns truthy for instead of the element itself. 
-- @usage _.print(_.findIndex({{a = 1}, {a = 2}, {a = 3}, {a = 2}, {a = 3}}, function(v)
--     return v.a == 3
-- end))
-- --> 3
--
-- @param array The array to search.
-- @param[opt=_.idenitity] predicate The function invoked per iteration.
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns the index of the found element, else -1.
_.findIndex = function (array, predicate, selfArg)
    return findIndex(array, predicate, selfArg, 1, 1)
end
