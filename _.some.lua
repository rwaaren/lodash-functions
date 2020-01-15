-- _.some.lua
--
-- Checks if predicate returns truthy for any element of collection. 
-- The function returns as soon as it finds a passing value and does 
-- not iterate over the entire collection. The predicate is bound to 
-- selfArg and invoked with three arguments: (value, index|key, collection). 
--
-- @usage _.print(_.some({1, 2, 3, 4, 5, 6}, _.isString))
-- --> false
-- _.print(_.some({1, 2, 3, 4, '5', 6}, _.isString))
-- --> true
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns true if any element passes the predicate check, else false.
_.some = function (collection, predicate, selfArg)
    for k, v in _.iter(collection) do
        if callIteratee(predicate, selfArg, v, k, collection) then
            return true
        end
    end
    return false
end
