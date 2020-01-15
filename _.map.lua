-- _.map.lua
--
-- Creates an array of values by running each element in collection through
-- iteratee. The iteratee is bound to selfArg and invoked with three 
-- arguments: (value, index|key, collection). 
-- @usage _.print(_.map({1, 2, 3, 4, 5, 6, 7, 8, 9}, function(n)
--     return n * n
-- end))
-- --> {1, 4, 9, 16, 25, 36, 49, 64, 81}
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] iteratee The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
_.map = function (collection, iteratee, selfArg)
    local t = {}
    for k, v in _.iter(collection) do
        t[k] = callIteratee(iteratee, selfArg, v, k, collection)
    end
    return t
end
