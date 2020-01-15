-- _.invoke.lua
--
-- Invokes method of each element in collection, returning an array of the 
-- results of each invoked method. Any additional arguments are provided 
-- to each invoked method. func bound to, each element in collection.
-- @usage _.print(_.invoke({'1.first', '2.second', '3.third'}, string.sub, 1, 1))
-- --> {"1", "2", "3"}
--
-- @param collection The collection to iterate over.
-- @param method The method to invoke per iteration.
-- @param ... The arguments to invoke the method with.
-- @return Returns the array of results.
_.invoke = function (collection, method, ...)
    local t = {}
    for k, v in _.iter(collection) do
        _.push(t, callIteratee(method, v, ...))
    end
    return t
end
