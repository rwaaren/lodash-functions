-- _.reject.lua
--
-- The opposite of [_.filter](#_.filter); this method returns the elements of 
-- collection that predicate does not return truthy for.
-- @usage _.print(_.reject({1, 2, 3, 4, '5', 6, '7'}, _.isNumber))
-- --> {"5", "7"}
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
_.reject = function (collection, predicate, selfArg)
    return filter(collection, predicate, selfArg, true)
end
