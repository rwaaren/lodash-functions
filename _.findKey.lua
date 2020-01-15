-- _.findKey.lua
--
-- This method is like _.find except that it returns the key of the 
-- first element predicate returns truthy for instead of the element itself. 
-- @usage _.print(_.findKey({a={a = 1}, b={a = 2}, c={a = 3, x = 1}}, 
-- function(v)
--     return v.a == 3
-- end))
-- --> c
--
-- @param object The collection to search. (table|string)
-- @param predicate The function invoked per iteration
-- @param selfArg The self binding of predicate.
-- @return Returns the key of the matched element, else nil
_.findKey = function (object, predicate, selfArg)
    for k, v in _.iter(object) do
        if callIteratee(predicate, selfArg, v, k, object) then
            return k
        end
    end
end
