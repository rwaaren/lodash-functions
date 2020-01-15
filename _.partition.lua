-- _.partition.lua
--
-- Creates an array of elements split into two groups, the first of 
-- which contains elements predicate returns truthy for, while the second 
-- of which contains elements predicate returns falsey for. The predicate 
-- is bound to selfArg and invoked with three arguments: 
-- (value, index|key, collection). 
-- @usage _.print(_.partition({1, 2, 3, 4, 5, 6, 7}, function (n)
--     return n > 3
-- end))
-- --> {{4, 5, 6, 7}, {1, 2, 3}}
--
-- @param collection The collection to iterate over. (table|string)
-- @param[opt=_.identity] predicate The function invoked per iteration
-- @param[opt] selfArg The self binding of predicate.
-- @return  Returns the array of grouped elements.
_.partition = function (collection, predicate, selfArg)
    local t = {{}, {}}
    for k, v in _.iter(collection) do
        if callIteratee(predicate, selfArg, v, k, collection) then
            _.push(t[1], v)
        else
            _.push(t[2], v)
        end
    end
    return t
end
