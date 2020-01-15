-- _.findLast.lua
--
-- This method is like _.find except that it iterates over elements of
-- collection from right to left.
-- @usage _.findLast({{a = 1}, {a = 2}, {a = 3, x = 1}, {a = 2}, {a = 3, x = 2}}, 
-- function(v)
--     return v.a == 3
-- end))
-- --> {[a]=3, [x]=2}
--
-- @param collection The collection to search. (table|string)
-- @param predicate The function invoked per iteration
-- @param selfArg The self binding of predicate.
_.findLast = function (collection, predicate, selfArg)
    for k, v in _.iterRight(collection) do
        if callIteratee(predicate, selfArg, v, k, collection) then
            return v
        end
    end
end
