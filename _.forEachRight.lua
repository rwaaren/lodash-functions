-- _.forEachRight.lua
--
-- This method is like [_.forEach](#_.forEach) except that it iterates 
-- over elements of collection from right to left.
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
-- @return Returns collection.
_.forEachRight = function (collection, predicate, selfArg)
    for k, v in _.iterRight(collection) do
        callIteratee(predicate, selfArg, v, k, collection)
    end
    return collection
end
