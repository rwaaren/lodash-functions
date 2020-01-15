-- _.filter.lua
--
-- Iterates over elements of collection, returning an array of all 
-- elements predicate returns truthy for. The predicate is bound to 
-- selfArg and invoked with three arguments: (value, index|key, collection). 
-- @usage _.print(_.filter({1, 2, 3, 4, '5', 6, '7'}, _.isNumber))
-- --> {1, 2, 3, 4, 6}
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
_.filter = function (collection, predicate, selfArg)
    return filter(collection, predicate, selfArg)
end
