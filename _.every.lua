-- _.every.lua
--
-- Checks if predicate returns truthy for all elements of collection. 
-- The predicate is bound to selfArg and invoked with three arguments:
-- (value, index|key, collection). 
-- @usage _.print(_.every({1, 2, 3, 4, '5', 6}, _.isNumber))
-- --> false
-- _.print(_.every({1, 2, 3, 4, 5, 6}, _.isNumber))
-- --> true
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
_.every = function (collection, predicate, selfArg)
    for k, v in _.iter(collection) do
        if not callIteratee(predicate, selfArg, v, k, collection) then
            return false
        end
    end
    return true
end
