-- _.forEach.lua
--
-- Iterates over elements of collection invoking iteratee for each element.
-- The iteratee is bound to selfArg and invoked with three arguments:
-- (value, index|key, collection). Iteratee functions may exit iteration 
-- early by explicitly returning false. 
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns collection.
_.forEach = function (collection, predicate, selfArg)
    for k, v in _.iter(collection) do
        callIteratee(predicate, selfArg, v, k, collection)
    end
    return collection
end
